import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schema_args.dart';
import 'get_schema_iam_policy_args.dart';
import 'get_schema_iam_policy_result.dart';
import 'get_schema_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_iam_policy_args.dart';
import 'get_snapshot_iam_policy_result.dart';
import 'get_snapshot_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_iam_policy_args.dart';
import 'get_subscription_iam_policy_pubsub_v1beta2_args.dart';
import 'get_subscription_iam_policy_pubsub_v1beta2_result.dart';
import 'get_subscription_iam_policy_result.dart';
import 'get_subscription_pubsub_v1beta1a_args.dart';
import 'get_subscription_pubsub_v1beta1a_result.dart';
import 'get_subscription_pubsub_v1beta2_args.dart';
import 'get_subscription_pubsub_v1beta2_result.dart';
import 'get_subscription_result.dart';
import 'get_topic_args.dart';
import 'get_topic_iam_policy_args.dart';
import 'get_topic_iam_policy_pubsub_v1beta2_args.dart';
import 'get_topic_iam_policy_pubsub_v1beta2_result.dart';
import 'get_topic_iam_policy_result.dart';
import 'get_topic_pubsub_v1beta1a_args.dart';
import 'get_topic_pubsub_v1beta1a_result.dart';
import 'get_topic_pubsub_v1beta2_args.dart';
import 'get_topic_pubsub_v1beta2_result.dart';
import 'get_topic_result.dart';

/// Gets a schema.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaResult> getSchema(
  GetSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_schema_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaIamPolicyResult> getSchemaIamPolicy(
  GetSchemaIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSchemaIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaIamPolicyResult.fromMap(result);
}

/// Gets the configuration details of a snapshot. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotIamPolicyResult> getSnapshotIamPolicy(
  GetSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyResult.fromMap(result);
}

/// Gets the configuration details of a subscription.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_subscription_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionIamPolicyResult> getSubscriptionIamPolicy(
  GetSubscriptionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSubscriptionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyResult.fromMap(result);
}

/// Gets the configuration of a topic.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1_get_topic_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicIamPolicyResult> getTopicIamPolicy(
  GetTopicIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getTopicIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicIamPolicyResult.fromMap(result);
}

/// Gets the configuration details of a subscription.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1beta1a_get_subscription_pubsub_v1beta1a_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionPubsubV1beta1aResult> getSubscriptionPubsubV1beta1a(
  GetSubscriptionPubsubV1beta1aArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta1a:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionPubsubV1beta1aResult.fromMap(result);
}

/// Gets the configuration of a topic. Since the topic only has the name attribute, this method is only useful to check the existence of a topic. If other attributes are added in the future, they will be returned here.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1beta1a_get_topic_pubsub_v1beta1a_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicPubsubV1beta1aResult> getTopicPubsubV1beta1a(
  GetTopicPubsubV1beta1aArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta1a:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicPubsubV1beta1aResult.fromMap(result);
}

/// Gets the configuration details of a subscription.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1beta2_get_subscription_pubsub_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionPubsubV1beta2Result> getSubscriptionPubsubV1beta2(
  GetSubscriptionPubsubV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionPubsubV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1beta2_get_subscription_iam_policy_pubsub_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionIamPolicyPubsubV1beta2Result> getSubscriptionIamPolicyPubsubV1beta2(
  GetSubscriptionIamPolicyPubsubV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getSubscriptionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyPubsubV1beta2Result.fromMap(result);
}

/// Gets the configuration of a topic.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1beta2_get_topic_pubsub_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicPubsubV1beta2Result> getTopicPubsubV1beta2(
  GetTopicPubsubV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicPubsubV1beta2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsub_v1beta2_get_topic_iam_policy_pubsub_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicIamPolicyPubsubV1beta2Result> getTopicIamPolicyPubsubV1beta2(
  GetTopicIamPolicyPubsubV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getTopicIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicIamPolicyPubsubV1beta2Result.fromMap(result);
}
