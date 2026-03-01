import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_digital_twin_args.dart';
import 'get_digital_twin_result.dart';
import 'get_digital_twins_endpoint_args.dart';
import 'get_digital_twins_endpoint_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_time_series_database_connection_args.dart';
import 'get_time_series_database_connection_result.dart';

/// Get DigitalTwinsInstances resource.
///
/// Uses Azure REST API version 2023-01-31.
/// [args] Arguments passed to this invoke. {@macro pulumi_digitaltwins_get_digital_twin_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDigitalTwinResult> getDigitalTwin(
  GetDigitalTwinArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:digitaltwins:getDigitalTwin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDigitalTwinResult.fromMap(result);
}

/// Get DigitalTwinsInstances Endpoint.
///
/// Uses Azure REST API version 2023-01-31.
/// [args] Arguments passed to this invoke. {@macro pulumi_digitaltwins_get_digital_twins_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDigitalTwinsEndpointResult> getDigitalTwinsEndpoint(
  GetDigitalTwinsEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:digitaltwins:getDigitalTwinsEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDigitalTwinsEndpointResult.fromMap(result);
}

/// Get private endpoint connection properties for the given private endpoint.
///
/// Uses Azure REST API version 2023-01-31.
/// [args] Arguments passed to this invoke. {@macro pulumi_digitaltwins_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:digitaltwins:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Get the description of an existing time series database connection.
///
/// Uses Azure REST API version 2023-01-31.
/// [args] Arguments passed to this invoke. {@macro pulumi_digitaltwins_get_time_series_database_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTimeSeriesDatabaseConnectionResult> getTimeSeriesDatabaseConnection(
  GetTimeSeriesDatabaseConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:digitaltwins:getTimeSeriesDatabaseConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesDatabaseConnectionResult.fromMap(result);
}
