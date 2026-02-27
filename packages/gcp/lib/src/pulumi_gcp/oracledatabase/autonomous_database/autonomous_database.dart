import 'package:pulumi/pulumi.dart';
import '../autonomous_database_properties/autonomous_database_properties.dart';
import '../autonomous_database_source_config/autonomous_database_source_config.dart';
import 'autonomous_database_args.dart';

/// An AutonomousDatabase resource.
///
///
/// To get more information about AutonomousDatabase, see:
///
/// * [API documentation](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.autonomousDatabases)
/// * How-to Guides
/// * [Create Autonomous databases](https://cloud.google.com/oracle/database/docs/create-databases)
///
/// ## Example Usage
///
/// ### Oracledatabase Autonomous Database Basic
///
///
///
/// ### Oracledatabase Autonomous Database Full
///
///
///
/// ### Oracledatabase Autonomous Database Odbnetwork
///
///
///
/// ### Oracledatabase Autonomous Database Publicip
///
///
///
/// ## Import
///
/// AutonomousDatabase can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/autonomousDatabases/{{autonomous_database_id}}`
///
/// * `{{project}}/{{location}}/{{autonomous_database_id}}`
///
/// * `{{location}}/{{autonomous_database_id}}`
///
/// When using the `pulumi import` command, AutonomousDatabase can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/autonomousDatabase:AutonomousDatabase default projects/{{project}}/locations/{{location}}/autonomousDatabases/{{autonomous_database_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/autonomousDatabase:AutonomousDatabase default {{project}}/{{location}}/{{autonomous_database_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/autonomousDatabase:AutonomousDatabase default {{location}}/{{autonomous_database_id}}
/// ```
class AutonomousDatabase extends CustomResource {
  /// The password for the default ADMIN user.
  late final Output<String?> adminPassword;

  /// The ID of the Autonomous Database to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final Output<String> autonomousDatabaseId;

  /// The subnet CIDR range for the Autonmous Database.
  late final Output<String?> cidr;

  /// The date and time that the Autonomous Database was created.
  late final Output<String> createTime;

  /// The name of the Autonomous Database. The database name must be unique in
  /// the project. The name must begin with a letter and can
  /// contain a maximum of 30 alphanumeric characters.
  late final Output<String> database;
  late final Output<bool?> deletionProtection;

  /// List of supported GCP region to clone the Autonomous Database for disaster recovery.
  late final Output<List<String>> disasterRecoverySupportedLocations;

  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The ID of the subscription entitlement associated with the Autonomous
  /// Database.
  late final Output<String> entitlementId;

  /// The labels or tags associated with the Autonomous Database.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/AutonomousDatabaseBackup`.
  late final Output<String> location;

  /// Identifier. The name of the Autonomous Database resource in the following format:
  /// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
  late final Output<String> name;

  /// The name of the VPC network used by the Autonomous Database.
  /// Format: projects/{project}/global/networks/{network}
  late final Output<String?> network;

  /// The name of the OdbNetwork associated with the Autonomous Database.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  late final Output<String> odbNetwork;

  /// The name of the OdbSubnet associated with the Autonomous Database for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final Output<String> odbSubnet;

  /// The peer Autonomous Database names of the given Autonomous Database.
  late final Output<List<String>> peerAutonomousDatabases;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The properties of an Autonomous Database.
  /// Structure is documented below.
  late final Output<AutonomousDatabaseProperties> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The source Autonomous Database configuration for the standby Autonomous Database.
  /// Structure is documented below.
  late final Output<AutonomousDatabaseSourceConfig?> sourceConfig;

  AutonomousDatabase(
    String name, {
    AutonomousDatabaseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/autonomousDatabase:AutonomousDatabase',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminPassword = registerOutput<String?>('adminPassword');
    this.autonomousDatabaseId = registerOutput<String>('autonomousDatabaseId');
    this.cidr = registerOutput<String?>('cidr');
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String>('database');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.disasterRecoverySupportedLocations =
        registerOutput<List<String>>('disasterRecoverySupportedLocations');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entitlementId = registerOutput<String>('entitlementId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.odbNetwork = registerOutput<String>('odbNetwork');
    this.odbSubnet = registerOutput<String>('odbSubnet');
    this.peerAutonomousDatabases =
        registerOutput<List<String>>('peerAutonomousDatabases');
    this.project = registerOutput<String>('project');
    this.properties =
        registerOutput<AutonomousDatabaseProperties>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sourceConfig =
        registerOutput<AutonomousDatabaseSourceConfig?>('sourceConfig');
  }
}
