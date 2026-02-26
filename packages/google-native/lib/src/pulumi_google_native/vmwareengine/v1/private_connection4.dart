import 'package:pulumi/pulumi.dart';
import 'private_connection_args4.dart';

/// Creates a new private connection that can be used for accessing private Clouds.
/// Auto-naming is currently not supported for this resource.
class PrivateConnection4 extends CustomResource {
  /// Creation time of this resource.
  late final Output<String> createTime;

  /// Optional. User-provided description for this private connection.
  late final Output<String> description;
  late final Output<String> location;

  /// The resource name of the private connection. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/privateConnections/my-connection`
  late final Output<String> name;

  /// VPC network peering id between given network VPC and VMwareEngineNetwork.
  late final Output<String> peeringId;

  /// Peering state between service network and VMware Engine network.
  late final Output<String> peeringState;

  /// Required. The user-provided identifier of the new private connection. This identifier must be unique among private connection resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final Output<String> privateConnectionId;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Optional. Routing Mode. Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this field can be set to GLOBAL or REGIONAL, for other types only GLOBAL is supported.
  late final Output<String> routingMode;

  /// Service network to create private connection. Specify the name in the following form: `projects/{project}/global/networks/{network_id}` For type = PRIVATE_SERVICE_ACCESS, this field represents servicenetworking VPC, e.g. projects/project-tp/global/networks/servicenetworking. For type = NETAPP_CLOUD_VOLUME, this field represents NetApp service VPC, e.g. projects/project-tp/global/networks/netapp-tenant-vpc. For type = DELL_POWERSCALE, this field represent Dell service VPC, e.g. projects/project-tp/global/networks/dell-tenant-vpc. For type= THIRD_PARTY_SERVICE, this field could represent a consumer VPC or any other producer VPC to which the VMware Engine Network needs to be connected, e.g. projects/project/global/networks/vpc.
  late final Output<String> serviceNetwork;

  /// State of the private connection.
  late final Output<String> state;

  /// Private connection type.
  late final Output<String> type;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last update time of this resource.
  late final Output<String> updateTime;

  /// The relative resource name of Legacy VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}`, `{location}` will be same as specified in private connection resource name and `{vmware_engine_network_id}` will be in the form of `{location}`-default e.g. projects/project/locations/us-central1/vmwareEngineNetworks/us-central1-default.
  late final Output<String> vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  late final Output<String> vmwareEngineNetworkCanonical;

  PrivateConnection4(
    String name, {
    PrivateConnectionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:PrivateConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.peeringId = Output.createUnknown<String>();
    this.peeringState = Output.createUnknown<String>();
    this.privateConnectionId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.routingMode = Output.createUnknown<String>();
    this.serviceNetwork = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.vmwareEngineNetwork = Output.createUnknown<String>();
    this.vmwareEngineNetworkCanonical = Output.createUnknown<String>();
  }
}
