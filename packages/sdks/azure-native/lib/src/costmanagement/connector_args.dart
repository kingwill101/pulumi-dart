// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_connector_args_doc}
class ConnectorArgs {
  /// Connector Name.
  final pulumi.Input<String>? connectorName;

  /// Credentials authentication key (eg AWS ARN)
  final pulumi.Input<String>? credentialsKey;

  /// Credentials secret (eg AWS ExternalId)
  final pulumi.Input<String>? credentialsSecret;

  /// Connector DisplayName (defaults to Name)
  final pulumi.Input<String>? displayName;

  /// Connector kind (eg aws)
  final pulumi.Input<String>? kind;

  /// Connector location
  final pulumi.Input<String>? location;

  /// Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  final pulumi.Input<String>? reportId;

  /// Azure Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Connector status
  final pulumi.Input<String>? status;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectorArgs].
  /// [connectorName] Connector Name.
  /// [credentialsKey] Credentials authentication key (eg AWS ARN)
  /// [credentialsSecret] Credentials secret (eg AWS ExternalId)
  /// [displayName] Connector DisplayName (defaults to Name)
  /// [kind] Connector kind (eg aws)
  /// [location] Connector location
  /// [reportId] Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  /// [resourceGroupName] Azure Resource Group Name.
  /// [status] Connector status
  /// [tags] Resource tags.
  ConnectorArgs({
    this.connectorName,
    this.credentialsKey,
    this.credentialsSecret,
    this.displayName,
    this.kind,
    this.location,
    this.reportId,
    required this.resourceGroupName,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': ?connectorName,
      'credentialsKey': ?credentialsKey,
      'credentialsSecret': ?credentialsSecret,
      'displayName': ?displayName,
      'kind': ?kind,
      'location': ?location,
      'reportId': ?reportId,
      'resourceGroupName': resourceGroupName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorName: (() {
        final guardedValue = map['connectorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentialsKey: (() {
        final guardedValue = map['credentialsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentialsSecret: (() {
        final guardedValue = map['credentialsSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reportId: (() {
        final guardedValue = map['reportId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
