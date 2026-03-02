import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class GcpSlackbotStack extends pulumi.Stack {
  late final pulumi.Output<String> topicName;
  late final pulumi.Output<String> deadLetterTopicName;
  late final pulumi.Output<String> subscriptionName;
  late final pulumi.Output<String> processorServiceAccountEmail;

  GcpSlackbotStack() {
    final project = pulumi.Config('gcp').get('project');
    if (project == null || project.isEmpty) {
      throw Exception('Missing required GCP config: gcp:project');
    }

    final messagesTopic = gcp.pubsub.Topic(
      'messages',
      args: gcp.pubsub.TopicArgs(
        name: 'mentionbot-messages'.output(),
        messageRetentionDuration: '86600s'.output(),
      ),
    );

    final deadLetterTopic = gcp.pubsub.Topic(
      'messages-dlq',
      args: gcp.pubsub.TopicArgs(
        name: 'mentionbot-messages-dlq'.output(),
        messageRetentionDuration: '86600s'.output(),
      ),
    );

    final processorSa = gcp.serviceaccount.Account(
      'mentionbot-processor',
      args: gcp.serviceaccount.AccountArgs(
        accountId: 'mentionbot-processor'.output(),
        displayName: 'Mentionbot message processor'.output(),
      ),
    );

    gcp.projects.IAMBinding(
      'mentionbot-pubsub-subscriber',
      args: gcp.projects.IAMBindingArgs(
        project: project.output(),
        role: 'roles/pubsub.subscriber'.output(),
        members: processorSa.email
            .apply((email) => ['serviceAccount:$email']),
      ),
    );

    final messageSubscription = gcp.pubsub.Subscription(
      'messages-subscription',
      args: gcp.pubsub.SubscriptionArgs(
        name: 'mentionbot-messages-subscription'.output(),
        topic: messagesTopic.id,
        ackDeadlineSeconds: 30.output(),
      ),
    );

    topicName = messagesTopic.name;
    deadLetterTopicName = deadLetterTopic.name;
    subscriptionName = messageSubscription.name;
    processorServiceAccountEmail = processorSa.email;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('topicName', topicName),
      pulumi.OutputProperty('deadLetterTopicName', deadLetterTopicName),
      pulumi.OutputProperty('subscriptionName', subscriptionName),
      pulumi.OutputProperty('processorServiceAccountEmail', processorServiceAccountEmail),
    ];
  }
}
