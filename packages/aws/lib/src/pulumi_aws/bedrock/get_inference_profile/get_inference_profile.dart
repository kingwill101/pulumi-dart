import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inference_profile_args.dart';
import 'get_inference_profile_result.dart';

/// Data source for managing an AWS Bedrock Inference Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetInferenceProfileResult> getInferenceProfile(
  GetInferenceProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getInferenceProfile:getInferenceProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferenceProfileResult.fromMap(result);
}
