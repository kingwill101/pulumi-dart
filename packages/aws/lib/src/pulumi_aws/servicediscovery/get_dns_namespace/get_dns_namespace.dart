import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_namespace_args.dart';
import 'get_dns_namespace_result.dart';

/// Retrieves information about a Service Discovery private or public DNS namespace.
Future<GetDnsNamespaceResult> getDnsNamespace(
  GetDnsNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getDnsNamespace:getDnsNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsNamespaceResult.fromMap(result);
}
