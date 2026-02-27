import 'package:pulumi/pulumi.dart';
import '../db_system_properties/db_system_properties.dart';
import 'db_system_args.dart';

/// A DbSystem Resource
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Db System Basic
///
///
///
/// ### Oracledatabase Db System Full
///
///
///
///
/// ## Import
///
/// DbSystem can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dbSystems/{{db_system_id}}`
///
/// * `{{project}}/{{location}}/{{db_system_id}}`
///
/// * `{{location}}/{{db_system_id}}`
///
/// When using the `pulumi import` command, DbSystem can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/dbSystem:DbSystem default projects/{{project}}/locations/{{location}}/dbSystems/{{db_system_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/dbSystem:DbSystem default {{project}}/{{location}}/{{db_system_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/dbSystem:DbSystem default {{location}}/{{db_system_id}}
/// ```
class DbSystem extends CustomResource {
  /// The date and time that the DbSystem was created.
  late final Output<String> createTime;

  /// The ID of the DbSystem to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  late final Output<String> dbSystemId;
  late final Output<bool?> deletionProtection;

  /// The display name for the System db. The name does not have to
  /// be unique within your project.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The ID of the subscription entitlement associated with the DbSystem
  late final Output<String> entitlementId;

  /// The GCP Oracle zone where Oracle DbSystem is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final Output<String> gcpOracleZone;

  /// The labels or tags associated with the DbSystem.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The name of the DbSystem resource in the following format:
  /// projects/{project}/locations/{region}/dbSystems/{db_system}
  late final Output<String> name;

  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  late final Output<String> ociUrl;

  /// The name of the OdbNetwork associated with the DbSystem.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  late final Output<String?> odbNetwork;

  /// The name of the OdbSubnet associated with the DbSystem for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final Output<String> odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The properties of a DbSystem.
  /// Structure is documented below.
  late final Output<DbSystemProperties?> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  DbSystem(
    String name, {
    DbSystemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/dbSystem:DbSystem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dbSystemId = registerOutput<String>('dbSystemId');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entitlementId = registerOutput<String>('entitlementId');
    this.gcpOracleZone = registerOutput<String>('gcpOracleZone');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.ociUrl = registerOutput<String>('ociUrl');
    this.odbNetwork = registerOutput<String?>('odbNetwork');
    this.odbSubnet = registerOutput<String>('odbSubnet');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<DbSystemProperties?>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
