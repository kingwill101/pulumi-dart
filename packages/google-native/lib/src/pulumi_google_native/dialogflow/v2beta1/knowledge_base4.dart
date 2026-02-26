import 'package:pulumi/pulumi.dart';
import 'knowledge_base_args2.dart';

/// Creates a knowledge base. Note: The `projects.agent.knowledgeBases` resource is deprecated; only use `projects.knowledgeBases`.
class KnowledgeBase4 extends CustomResource {
  /// The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  late final Output<String> displayName;

  /// Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, this is populated for all non en-us languages. If not populated, the default language en-us applies.
  late final Output<String> languageCode;
  late final Output<String> location;

  /// The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  late final Output<String> name;
  late final Output<String> project;

  KnowledgeBase4(
    String name, {
    KnowledgeBaseArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:KnowledgeBase',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
