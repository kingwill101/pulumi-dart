import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_community_training_args.dart';
import 'get_community_training_result.dart';

/// Get a CommunityTraining
///
/// Uses Azure REST API version 2023-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_community_get_community_training_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommunityTrainingResult> getCommunityTraining(
  GetCommunityTrainingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:community:getCommunityTraining',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommunityTrainingResult.fromMap(result);
}
