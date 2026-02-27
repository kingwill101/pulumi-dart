import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_vpc_network/network_vpc_network.dart';
import 'network_vmwareengine_args.dart';

/// Provides connectivity for VMware Engine private clouds.
///
///
/// To get more information about Network, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.vmwareEngineNetworks)
///
/// ## Example Usage
///
/// ### Vmware Engine Network Standard
///
///
///
/// ### Vmware Engine Network Legacy
///
///
///
///
/// ## Import
///
/// Network can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareEngineNetworks/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Network can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/network:Network default projects/{{project}}/locations/{{location}}/vmwareEngineNetworks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/network:Network default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/network:Network default {{location}}/{{name}}
/// ```
class NetworkVmwareengine extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// User-provided description for this VMware Engine network.
  late final pulumi.Output<String?> description;

  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date befor
  /// The server computes checksums based on the value of other fields in the request.
  late final pulumi.Output<String> etag;

  /// The location where the VMwareEngineNetwork should reside.
  late final pulumi.Output<String> location;

  /// The ID of the VMwareEngineNetwork.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// State of the VMware Engine network.
  late final pulumi.Output<String> state;

  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  late final pulumi.Output<String> type;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last update time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects,
  /// the internet, and other Google Cloud services.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkVpcNetwork>> vpcNetworks;

  NetworkVmwareengine(
    String name, {
    NetworkVmwareengineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vpcNetworks = registerOutput<List<NetworkVpcNetwork>>('vpcNetworks');
  }
}
