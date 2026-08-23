import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_service_args.dart';
import 'get_domain_service_result.dart';
import 'get_ou_container_args.dart';
import 'get_ou_container_result.dart';

/// The Get Domain Service operation retrieves a json representation of the Domain Service.
///
/// Uses Azure REST API version 2022-12-01.
///
/// Other available API versions: 2025-05-01, 2025-06-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native aad [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_aad_get_domain_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainServiceResult> getDomainService(
  GetDomainServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:aad:getDomainService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainServiceResult.fromMap(result);
}

/// Get OuContainer in DomainService instance.
///
/// Uses Azure REST API version 2022-12-01.
///
/// Other available API versions: 2025-05-01, 2025-06-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native aad [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_aad_get_ou_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOuContainerResult> getOuContainer(
  GetOuContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:aad:getOuContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOuContainerResult.fromMap(result);
}
