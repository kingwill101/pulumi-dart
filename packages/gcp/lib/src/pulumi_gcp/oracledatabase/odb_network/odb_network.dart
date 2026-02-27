import 'package:pulumi/pulumi.dart';
import 'odb_network_args.dart';

/// An OdbNetwork resource which represents a private network providing connectivity between OracleDatabase resources and Google Cloud VPC network.
///
///
/// To get more information about OdbNetwork, see:
/// * How-to Guides
/// * [OracleDatabase@Google Cloud](https://cloud.google.com/oracle/database/docs/overview')
///
/// ## Example Usage
///
/// ### Oracledatabase Odbnetwork Basic
///
///
///
/// ### Oracledatabase Odbnetwork Full
///
///
///
///
/// ## Import
///
/// OdbNetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/odbNetworks/{{odb_network_id}}`
///
/// * `{{project}}/{{location}}/{{odb_network_id}}`
///
/// * `{{location}}/{{odb_network_id}}`
///
/// When using the `pulumi import` command, OdbNetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/odbNetwork:OdbNetwork default projects/{{project}}/locations/{{location}}/odbNetworks/{{odb_network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/odbNetwork:OdbNetwork default {{project}}/{{location}}/{{odb_network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/odbNetwork:OdbNetwork default {{location}}/{{odb_network_id}}
/// ```
class OdbNetwork extends CustomResource {
  /// The date and time that the OdbNetwork was created.
  late final Output<String> createTime;
  late final Output<bool?> deletionProtection;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The ID of the subscription entitlement associated with the OdbNetwork.
  late final Output<String> entitlementId;

  /// The GCP Oracle zone where OdbNetwork is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final Output<String> gcpOracleZone;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The name of the OdbNetwork resource in the following format:
  /// projects/{project}/locations/{region}/odbNetworks/{odb_network}
  late final Output<String> name;

  /// The name of the VPC network in the following format:
  /// projects/{project}/global/networks/{network}
  late final Output<String> network;

  /// The ID of the OdbNetwork to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final Output<String> odbNetworkId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// State of the ODB Network.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// TERMINATING
  /// FAILED
  late final Output<String> state;

  OdbNetwork(
    String name, {
    OdbNetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/odbNetwork:OdbNetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entitlementId = registerOutput<String>('entitlementId');
    this.gcpOracleZone = registerOutput<String>('gcpOracleZone');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.odbNetworkId = registerOutput<String>('odbNetworkId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }
}
