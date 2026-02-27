import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_args.dart';
import 'get_domain_result.dart';

/// Data source for managing an AWS DataZone Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datazone/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}
