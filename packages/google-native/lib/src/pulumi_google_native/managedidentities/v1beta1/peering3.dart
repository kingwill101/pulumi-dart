import 'package:pulumi/pulumi.dart' hide Config;
import 'peering_args3.dart';

/// Creates a Peering for Managed AD instance.
/// Auto-naming is currently not supported for this resource.
class Peering3 extends CustomResource {
  /// The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  late final Output<String> authorizedNetwork;

  /// The time the instance was created.
  late final Output<String> createTime;

  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  late final Output<String> domainResource;

  /// Optional. Resource labels to represent user provided metadata.
  late final Output<Map<String, String>> labels;

  /// Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.
  late final Output<String> name;

  /// Required. Peering Id, unique name to identify peering.
  late final Output<String> peeringId;
  late final Output<String> project;

  /// The current state of this Peering.
  late final Output<String> state;

  /// Additional information about the current status of this peering, if available.
  late final Output<String> statusMessage;

  /// Last update time.
  late final Output<String> updateTime;

  Peering3(
    String name, {
    PeeringArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:managedidentities/v1beta1:Peering',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizedNetwork = registerOutput<String>('authorizedNetwork');
    this.createTime = registerOutput<String>('createTime');
    this.domainResource = registerOutput<String>('domainResource');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.peeringId = registerOutput<String>('peeringId');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
