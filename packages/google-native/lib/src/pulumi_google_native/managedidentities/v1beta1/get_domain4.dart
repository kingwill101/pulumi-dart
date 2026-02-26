import 'package:pulumi/pulumi.dart';
import 'get_domain_args4.dart';
import 'get_domain_result4.dart';

/// Gets information about a domain.
Future<GetDomainResult4> getDomain4(
  GetDomainArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult4.fromMap(result);
}
