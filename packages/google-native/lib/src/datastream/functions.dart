import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_args.dart';
import 'get_connection_profile_datastream_v1alpha1_args.dart';
import 'get_connection_profile_datastream_v1alpha1_result.dart';
import 'get_connection_profile_result.dart';
import 'get_private_connection_args.dart';
import 'get_private_connection_datastream_v1alpha1_args.dart';
import 'get_private_connection_datastream_v1alpha1_result.dart';
import 'get_private_connection_result.dart';
import 'get_route_args.dart';
import 'get_route_datastream_v1alpha1_args.dart';
import 'get_route_datastream_v1alpha1_result.dart';
import 'get_route_result.dart';
import 'get_stream_args.dart';
import 'get_stream_datastream_v1alpha1_args.dart';
import 'get_stream_datastream_v1alpha1_result.dart';
import 'get_stream_result.dart';

/// Use this method to get details about a connection profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1_get_connection_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileResult> getConnectionProfile(
  GetConnectionProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileResult.fromMap(result);
}

/// Use this method to get details about a private connectivity configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1_get_private_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateConnectionResult> getPrivateConnection(
  GetPrivateConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult.fromMap(result);
}

/// Use this method to get details about a route.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1_get_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}

/// Use this method to get details about a stream.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1_get_stream_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStreamResult> getStream(
  GetStreamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamResult.fromMap(result);
}

/// Use this method to get details about a connection profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1alpha1_get_connection_profile_datastream_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileDatastreamV1alpha1Result>
    getConnectionProfileDatastreamV1alpha1(
  GetConnectionProfileDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileDatastreamV1alpha1Result.fromMap(result);
}

/// Use this method to get details about a private connectivity configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1alpha1_get_private_connection_datastream_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateConnectionDatastreamV1alpha1Result>
    getPrivateConnectionDatastreamV1alpha1(
  GetPrivateConnectionDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionDatastreamV1alpha1Result.fromMap(result);
}

/// Use this method to get details about a route.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1alpha1_get_route_datastream_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteDatastreamV1alpha1Result> getRouteDatastreamV1alpha1(
  GetRouteDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteDatastreamV1alpha1Result.fromMap(result);
}

/// Use this method to get details about a stream.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_v1alpha1_get_stream_datastream_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStreamDatastreamV1alpha1Result> getStreamDatastreamV1alpha1(
  GetStreamDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamDatastreamV1alpha1Result.fromMap(result);
}
