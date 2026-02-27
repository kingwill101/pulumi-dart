// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../autonomous_database_properties/autonomous_database_properties.dart';
import '../autonomous_database_source_config/autonomous_database_source_config.dart';

/// The set of arguments for AutonomousDatabase.
class AutonomousDatabaseArgs {
  /// The password for the default ADMIN user.
  final pulumi.Input<String>? adminPassword;

  /// The ID of the Autonomous Database to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> autonomousDatabaseId;

  /// The subnet CIDR range for the Autonmous Database.
  final pulumi.Input<String>? cidr;

  /// The name of the Autonomous Database. The database name must be unique in
  /// the project. The name must begin with a letter and can
  /// contain a maximum of 30 alphanumeric characters.
  final pulumi.Input<String>? database;
  final pulumi.Input<bool>? deletionProtection;

  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String>? displayName;

  /// The labels or tags associated with the Autonomous Database.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/AutonomousDatabaseBackup`.
  final pulumi.Input<String> location;

  /// The name of the VPC network used by the Autonomous Database.
  /// Format: projects/{project}/global/networks/{network}
  final pulumi.Input<String>? network;

  /// The name of the OdbNetwork associated with the Autonomous Database.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  final pulumi.Input<String>? odbNetwork;

  /// The name of the OdbSubnet associated with the Autonomous Database for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The properties of an Autonomous Database.
  /// Structure is documented below.
  final pulumi.Input<AutonomousDatabaseProperties>? properties;

  /// The source Autonomous Database configuration for the standby Autonomous Database.
  /// Structure is documented below.
  final pulumi.Input<AutonomousDatabaseSourceConfig>? sourceConfig;

  AutonomousDatabaseArgs({
    this.adminPassword,
    required this.autonomousDatabaseId,
    this.cidr,
    this.database,
    this.deletionProtection,
    this.displayName,
    this.labels,
    required this.location,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
    this.sourceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminPasswordValue = adminPassword;
    if (adminPasswordValue != null) {
      map['adminPassword'] = adminPasswordValue;
    }
    map['autonomousDatabaseId'] = autonomousDatabaseId;
    final cidrValue = cidr;
    if (cidrValue != null) {
      map['cidr'] = cidrValue;
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final odbNetworkValue = odbNetwork;
    if (odbNetworkValue != null) {
      map['odbNetwork'] = odbNetworkValue;
    }
    final odbSubnetValue = odbSubnet;
    if (odbSubnetValue != null) {
      map['odbSubnet'] = odbSubnetValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
          AutonomousDatabaseProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final sourceConfigValue = sourceConfig;
    if (sourceConfigValue != null) {
      map['sourceConfig'] = pulumi.Input.mapOptionalInputValue<
          AutonomousDatabaseSourceConfig,
          Map<String, dynamic>>(sourceConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AutonomousDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseArgs(
      adminPassword: pulumi.Input.asOptionalInput<String>(map['adminPassword']),
      autonomousDatabaseId:
          pulumi.Input.asInput<String>(map['autonomousDatabaseId']),
      cidr: pulumi.Input.asOptionalInput<String>(map['cidr']),
      database: pulumi.Input.asOptionalInput<String>(map['database']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      odbNetwork: pulumi.Input.asOptionalInput<String>(map['odbNetwork']),
      odbSubnet: pulumi.Input.asOptionalInput<String>(map['odbSubnet']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      properties: pulumi.Input.asOptionalInput<AutonomousDatabaseProperties>(
          map['properties']),
      sourceConfig:
          pulumi.Input.asOptionalInput<AutonomousDatabaseSourceConfig>(
              map['sourceConfig']),
    );
  }
}
