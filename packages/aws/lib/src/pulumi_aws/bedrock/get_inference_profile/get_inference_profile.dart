import 'package:pulumi/pulumi.dart';
import 'get_inference_profile_args.dart';
import 'get_inference_profile_result.dart';

/// Data source for managing an AWS Bedrock Inference Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetInferenceProfileResult> getInferenceProfile(
  GetInferenceProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getInferenceProfile:getInferenceProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInferenceProfileResult.fromMap(result);
}
