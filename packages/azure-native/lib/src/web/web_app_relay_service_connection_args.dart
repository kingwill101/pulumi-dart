// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_relay_service_connection_args_doc}
/// The set of arguments for WebAppRelayServiceConnection.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_relay_service_connection_args_doc}
class WebAppRelayServiceConnectionArgs {
  final pulumi.Input<String>? biztalkUri;
  final pulumi.Input<String>? entityConnectionString;
  final pulumi.Input<String>? entityName;
  final pulumi.Input<String>? hostname;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? resourceConnectionString;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? resourceType;

  /// Creates a new [WebAppRelayServiceConnectionArgs].
  /// [biztalkUri] Optional.
  /// [entityConnectionString] Optional.
  /// [entityName] Optional.
  /// [hostname] Optional.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [port] Optional.
  /// [resourceConnectionString] Optional.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [resourceType] Optional.
  WebAppRelayServiceConnectionArgs({
    String? biztalkUri,
    String? entityConnectionString,
    String? entityName,
    String? hostname,
    String? kind,
    required String name,
    int? port,
    String? resourceConnectionString,
    required String resourceGroupName,
    String? resourceType,
  }) :
      biztalkUri = pulumi.Input.asOptionalInput<String>(biztalkUri),
      entityConnectionString = pulumi.Input.asOptionalInput<String>(entityConnectionString),
      entityName = pulumi.Input.asOptionalInput<String>(entityName),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      resourceConnectionString = pulumi.Input.asOptionalInput<String>(resourceConnectionString),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biztalkUri': ?biztalkUri,
      'entityConnectionString': ?entityConnectionString,
      'entityName': ?entityName,
      'hostname': ?hostname,
      'kind': ?kind,
      'name': name,
      'port': ?port,
      'resourceConnectionString': ?resourceConnectionString,
      'resourceGroupName': resourceGroupName,
      'resourceType': ?resourceType,
    };
  }

  factory WebAppRelayServiceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppRelayServiceConnectionArgs(
      biztalkUri: map['biztalkUri'] == null ? null : map['biztalkUri'] as String,
      entityConnectionString: map['entityConnectionString'] == null ? null : map['entityConnectionString'] as String,
      entityName: map['entityName'] == null ? null : map['entityName'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      resourceConnectionString: map['resourceConnectionString'] == null ? null : map['resourceConnectionString'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

