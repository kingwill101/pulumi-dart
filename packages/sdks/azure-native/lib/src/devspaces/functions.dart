import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_controller_args.dart';
import 'get_controller_result.dart';
import 'list_controller_connection_details_args.dart';
import 'list_controller_connection_details_result.dart';

/// Gets the properties for an Azure Dev Spaces Controller.
///
/// Uses Azure REST API version 2019-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_devspaces_get_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControllerResult> getController(
  GetControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devspaces:getController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControllerResult.fromMap(result);
}

pulumi.Output<GetControllerResult> getControllerOutput(
  GetControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devspaces:getController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControllerResult.fromMap);
}

/// Lists connection details for the underlying container resources of an Azure Dev Spaces Controller.
///
/// Uses Azure REST API version 2019-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_devspaces_list_controller_connection_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListControllerConnectionDetailsResult> listControllerConnectionDetails(
  ListControllerConnectionDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devspaces:listControllerConnectionDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListControllerConnectionDetailsResult.fromMap(result);
}

pulumi.Output<ListControllerConnectionDetailsResult> listControllerConnectionDetailsOutput(
  ListControllerConnectionDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devspaces:listControllerConnectionDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListControllerConnectionDetailsResult.fromMap);
}
