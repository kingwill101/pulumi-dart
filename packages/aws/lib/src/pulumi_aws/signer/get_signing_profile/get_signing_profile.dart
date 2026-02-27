import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signing_profile_args.dart';
import 'get_signing_profile_result.dart';

/// Provides information about a Signer Signing Profile.
Future<GetSigningProfileResult> getSigningProfile(
  GetSigningProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:signer/getSigningProfile:getSigningProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSigningProfileResult.fromMap(result);
}
