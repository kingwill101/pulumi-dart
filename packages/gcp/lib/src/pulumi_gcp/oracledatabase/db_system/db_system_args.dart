// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../db_system_properties/db_system_properties.dart';

/// The set of arguments for DbSystem.
class DbSystemArgs {
  /// The ID of the DbSystem to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> dbSystemId;
  final pulumi.Input<bool>? deletionProtection;

  /// The display name for the System db. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String> displayName;

  /// The GCP Oracle zone where Oracle DbSystem is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;

  /// The labels or tags associated with the DbSystem.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The name of the OdbNetwork associated with the DbSystem.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  final pulumi.Input<String>? odbNetwork;

  /// The name of the OdbSubnet associated with the DbSystem for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String> odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The properties of a DbSystem.
  /// Structure is documented below.
  final pulumi.Input<DbSystemProperties>? properties;

  DbSystemArgs({
    required this.dbSystemId,
    this.deletionProtection,
    required this.displayName,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    this.odbNetwork,
    required this.odbSubnet,
    this.project,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbSystemId'] = dbSystemId;
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    map['displayName'] = displayName;
    final gcpOracleZoneValue = gcpOracleZone;
    if (gcpOracleZoneValue != null) {
      map['gcpOracleZone'] = gcpOracleZoneValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final odbNetworkValue = odbNetwork;
    if (odbNetworkValue != null) {
      map['odbNetwork'] = odbNetworkValue;
    }
    map['odbSubnet'] = odbSubnet;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<DbSystemProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DbSystemArgs.fromMap(Map<String, dynamic> map) {
    return DbSystemArgs(
      dbSystemId: pulumi.Input.asInput<String>(map['dbSystemId']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      gcpOracleZone: pulumi.Input.asOptionalInput<String>(map['gcpOracleZone']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      odbNetwork: pulumi.Input.asOptionalInput<String>(map['odbNetwork']),
      odbSubnet: pulumi.Input.asInput<String>(map['odbSubnet']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      properties:
          pulumi.Input.asOptionalInput<DbSystemProperties>(map['properties']),
    );
  }
}
