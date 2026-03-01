// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcloud_cloud_connector_args_doc}
/// The set of arguments for CloudConnector.
/// {@endtemplate}
/// {@macro pulumi_hybridcloud_cloud_connector_args_doc}
class CloudConnectorArgs {
  /// Account identifier of the remote cloud.
  final pulumi.Input<String>? accountId;
  /// The name of the cloud connector resource
  final pulumi.Input<String>? cloudConnectorName;
  /// The cloud connector type.
  final pulumi.Input<String>? cloudType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CloudConnectorArgs].
  /// [accountId] Account identifier of the remote cloud.
  /// [cloudConnectorName] The name of the cloud connector resource
  /// [cloudType] The cloud connector type.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CloudConnectorArgs({
    String? accountId,
    String? cloudConnectorName,
    String? cloudType,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      cloudConnectorName = pulumi.Input.asOptionalInput<String>(cloudConnectorName),
      cloudType = pulumi.Input.asOptionalInput<String>(cloudType),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cloudConnectorName': ?cloudConnectorName,
      'cloudType': ?cloudType,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return CloudConnectorArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      cloudConnectorName: map['cloudConnectorName'] == null ? null : map['cloudConnectorName'] as String,
      cloudType: map['cloudType'] == null ? null : map['cloudType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

