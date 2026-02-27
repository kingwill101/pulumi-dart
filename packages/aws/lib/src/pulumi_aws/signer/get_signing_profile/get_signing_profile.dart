import 'package:pulumi/pulumi.dart';
import 'get_signing_profile_args.dart';
import 'get_signing_profile_result.dart';

/// Provides information about a Signer Signing Profile.
Future<GetSigningProfileResult> getSigningProfile(
  GetSigningProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:signer/getSigningProfile:getSigningProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSigningProfileResult.fromMap(result);
}
