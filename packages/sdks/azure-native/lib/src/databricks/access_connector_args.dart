// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_databricks_access_connector_args_doc}
/// The set of arguments for AccessConnector.
/// {@endtemplate}
/// {@macro pulumi_databricks_access_connector_args_doc}
class AccessConnectorArgs {
  /// The name of the Azure Databricks Access Connector.
  final pulumi.Input<String>? connectorName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessConnectorArgs].
  /// [connectorName] The name of the Azure Databricks Access Connector.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AccessConnectorArgs({
    pulumi.Output<String>? connectorName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      connectorName = pulumi.Input.asOptionalInput<String>(connectorName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': ?connectorName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccessConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AccessConnectorArgs(
      connectorName: map['connectorName'] == null ? null : pulumi.Output.create<String>(map['connectorName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

