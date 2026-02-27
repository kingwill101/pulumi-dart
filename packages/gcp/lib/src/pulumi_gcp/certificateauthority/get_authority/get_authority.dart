import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_args.dart';
import 'get_authority_result.dart';

/// Get info about a Google CAS Certificate Authority.
Future<GetAuthorityResult> getAuthority(
  GetAuthorityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getAuthority:getAuthority',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorityResult.fromMap(result);
}
