import 'package:pulumi/pulumi.dart';
import 'get_profiles_profiles_args.dart';
import 'get_profiles_profiles_result.dart';

/// Data source for managing an AWS Route 53 Profiles.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetProfilesProfilesResult> getProfilesProfiles(
  GetProfilesProfilesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getProfilesProfiles:getProfilesProfiles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProfilesProfilesResult.fromMap(result);
}
