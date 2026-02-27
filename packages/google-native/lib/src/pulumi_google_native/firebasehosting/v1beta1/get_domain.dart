import 'package:pulumi/pulumi.dart' hide Config;
import 'get_domain_args.dart';
import 'get_domain_result.dart';

/// Gets a domain mapping on the specified site.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}
