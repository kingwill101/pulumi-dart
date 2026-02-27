import 'package:pulumi/pulumi.dart';
import '../private_connection_error/private_connection_error2.dart';
import '../private_connection_psc_interface_config/private_connection_psc_interface_config.dart';
import '../private_connection_vpc_peering_config/private_connection_vpc_peering_config2.dart';
import 'private_connection_args2.dart';

/// The PrivateConnection resource is used to establish private connectivity between Datastream and a customer's network.
///
///
/// To get more information about PrivateConnection, see:
///
/// * [API documentation](https://cloud.google.com/datastream/docs/reference/rest/v1/projects.locations.privateConnections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/datastream/docs/create-a-private-connectivity-configuration)
///
/// ## Example Usage
///
/// ### Datastream Private Connection Full
///
///
///
/// ### Datastream Private Connection Psc Interface
///
///
///
///
/// ## Import
///
/// PrivateConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/privateConnections/{{private_connection_id}}`
///
/// * `{{project}}/{{location}}/{{private_connection_id}}`
///
/// * `{{location}}/{{private_connection_id}}`
///
/// When using the `pulumi import` command, PrivateConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datastream/privateConnection:PrivateConnection default projects/{{project}}/locations/{{location}}/privateConnections/{{private_connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/privateConnection:PrivateConnection default {{project}}/{{location}}/{{private_connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/privateConnection:PrivateConnection default {{location}}/{{private_connection_id}}
/// ```
class PrivateConnection2 extends CustomResource {
  /// If set to true, will skip validations.
  late final Output<bool?> createWithoutValidation;

  /// Display name.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The PrivateConnection error in case of failure.
  /// Structure is documented below.
  late final Output<List<PrivateConnectionError2>> errors;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the location this private connection is located in.
  late final Output<String> location;

  /// The resource's name.
  late final Output<String> name;

  /// The private connectivity identifier.
  late final Output<String> privateConnectionId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The PSC Interface configuration is used to create PSC Interface
  /// between Datastream and the consumer's PSC.
  /// Structure is documented below.
  late final Output<PrivateConnectionPscInterfaceConfig?> pscInterfaceConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// State of the PrivateConnection.
  late final Output<String> state;

  /// The VPC Peering configuration is used to create VPC peering
  /// between Datastream and the consumer's VPC.
  /// Structure is documented below.
  late final Output<PrivateConnectionVpcPeeringConfig2?> vpcPeeringConfig;

  PrivateConnection2(
    String name, {
    PrivateConnectionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datastream/privateConnection:PrivateConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createWithoutValidation =
        registerOutput<bool?>('createWithoutValidation');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.errors = registerOutput<List<PrivateConnectionError2>>('errors');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConnectionId = registerOutput<String>('privateConnectionId');
    this.project = registerOutput<String>('project');
    this.pscInterfaceConfig =
        registerOutput<PrivateConnectionPscInterfaceConfig?>(
            'pscInterfaceConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.vpcPeeringConfig =
        registerOutput<PrivateConnectionVpcPeeringConfig2?>('vpcPeeringConfig');
  }
}
