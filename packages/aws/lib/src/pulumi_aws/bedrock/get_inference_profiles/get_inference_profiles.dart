import 'package:pulumi/pulumi.dart';
import 'get_inference_profiles_args.dart';
import 'get_inference_profiles_result.dart';

/// Data source for managing AWS Bedrock Inference Profiles.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter by Type
Future<GetInferenceProfilesResult> getInferenceProfiles(
  GetInferenceProfilesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getInferenceProfiles:getInferenceProfiles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInferenceProfilesResult.fromMap(result);
}
