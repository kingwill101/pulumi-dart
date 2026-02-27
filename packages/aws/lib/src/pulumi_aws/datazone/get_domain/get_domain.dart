import 'package:pulumi/pulumi.dart';
import 'get_domain_args.dart';
import 'get_domain_result.dart';

/// Data source for managing an AWS DataZone Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datazone/getDomain:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}
