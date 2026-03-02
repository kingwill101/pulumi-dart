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
      connectorName: map['connectorName'] == null ? null : (map['connectorName']! as String).input(),
      credentialsKey: map['credentialsKey'] == null ? null : (map['credentialsKey']! as String).input(),
      credentialsSecret: map['credentialsSecret'] == null ? null : (map['credentialsSecret']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      reportId: map['reportId'] == null ? null : (map['reportId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

