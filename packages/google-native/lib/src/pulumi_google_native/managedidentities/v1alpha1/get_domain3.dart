import 'package:pulumi/pulumi.dart' hide Config;
import 'get_domain_args3.dart';
import 'get_domain_result3.dart';

/// Gets details of a single Domain.
Future<GetDomainResult3> getDomain3(
  GetDomainArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult3.fromMap(result);
}
