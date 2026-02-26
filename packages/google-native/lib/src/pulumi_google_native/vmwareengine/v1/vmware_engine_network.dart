import 'package:pulumi/pulumi.dart';
import 'vmware_engine_network_args.dart';
import 'vpc_network_response.dart';

/// Creates a new VMware Engine network that can be used by a private cloud.
/// Auto-naming is currently not supported for this resource.
class VmwareEngineNetwork extends CustomResource {
  /// Creation time of this resource.
  late final Output<String> createTime;

  /// User-provided description for this VMware Engine network.
  late final Output<String> description;

  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date before the server processes a request. The server computes checksums based on the value of other fields in the request.
  late final Output<String> etag;
  late final Output<String> location;

  /// The resource name of the VMware Engine network. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// State of the VMware Engine network.
  late final Output<String> state;

  /// VMware Engine network type.
  late final Output<String> type;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last update time of this resource.
  late final Output<String> updateTime;

  /// Required. The user-provided identifier of the new VMware Engine network. This identifier must be unique among VMware Engine network resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * For networks of type LEGACY, adheres to the format: `{region-id}-default`. Replace `{region-id}` with the region where you want to create the VMware Engine network. For example, "us-central1-default". * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final Output<String> vmwareEngineNetworkId;

  /// VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects, the internet, and other Google Cloud services.
  late final Output<List<VpcNetworkResponse>> vpcNetworks;

  VmwareEngineNetwork(
    String name, {
    VmwareEngineNetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:VmwareEngineNetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmwareEngineNetworkId =
        registerOutput<String>('vmwareEngineNetworkId');
    this.vpcNetworks = registerOutput<List<VpcNetworkResponse>>('vpcNetworks');
  }
}
