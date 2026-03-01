import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_association_args.dart';
import 'get_association_result.dart';
import 'get_custom_resource_provider_args.dart';
import 'get_custom_resource_provider_result.dart';

/// Get an association.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_customproviders_get_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssociationResult> getAssociation(
  GetAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customproviders:getAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssociationResult.fromMap(result);
}

/// Gets the custom resource provider manifest.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_customproviders_get_custom_resource_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomResourceProviderResult> getCustomResourceProvider(
  GetCustomResourceProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customproviders:getCustomResourceProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomResourceProviderResult.fromMap(result);
}
