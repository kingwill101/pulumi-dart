import 'package:pulumi/pulumi.dart' hide Config;
import 'get_domain_args2.dart';
import 'get_domain_result2.dart';

/// Gets information about a domain.
Future<GetDomainResult2> getDomain2(
  GetDomainArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult2.fromMap(result);
}
