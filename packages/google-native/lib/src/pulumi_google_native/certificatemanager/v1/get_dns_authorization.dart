import 'package:pulumi/pulumi.dart' hide Config;
import 'get_dns_authorization_args.dart';
import 'get_dns_authorization_result.dart';

/// Gets details of a single DnsAuthorization.
Future<GetDnsAuthorizationResult> getDnsAuthorization(
  GetDnsAuthorizationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getDnsAuthorization',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDnsAuthorizationResult.fromMap(result);
}
