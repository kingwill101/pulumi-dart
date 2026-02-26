import 'package:pulumi/pulumi.dart';
import 'network_endpoint_group_app_engine_response.dart';
import 'network_endpoint_group_cloud_function_response.dart';
import 'network_endpoint_group_cloud_run_response.dart';
import 'network_endpoint_group_lb_network_endpoint_group_response.dart';
import 'network_endpoint_group_psc_data_response.dart';
import 'network_endpoint_group_serverless_deployment_response.dart';
import 'region_network_endpoint_group_args.dart';

/// Creates a network endpoint group in the specified project using the parameters that are included in the request.
class RegionNetworkEndpointGroup extends CustomResource {
  /// Metadata defined as annotations on the network endpoint group.
  late final Output<Map<String, String>> annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  late final Output<NetworkEndpointGroupAppEngineResponse> appEngine;

  /// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  late final Output<String> clientPortMappingMode;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  late final Output<NetworkEndpointGroupCloudFunctionResponse> cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  late final Output<NetworkEndpointGroupCloudRunResponse> cloudRun;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// The default port used if the port number is not specified in the network endpoint.
  late final Output<int> defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Type of the resource. Always compute#networkEndpointGroup for network endpoint group.
  late final Output<String> kind;

  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  late final Output<NetworkEndpointGroupLbNetworkEndpointGroupResponse>
      loadBalancer;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  late final Output<String> network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  late final Output<String> networkEndpointType;
  late final Output<String> project;
  late final Output<NetworkEndpointGroupPscDataResponse> pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  late final Output<String> pscTargetService;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  late final Output<NetworkEndpointGroupServerlessDeploymentResponse>
      serverlessDeployment;

  /// [Output only] Number of network endpoints in the network endpoint group.
  late final Output<int> size;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  late final Output<String> subnetwork;

  /// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  late final Output<String> type;

  /// The URL of the zone where the network endpoint group is located.
  late final Output<String> zone;

  RegionNetworkEndpointGroup(
    String name, {
    RegionNetworkEndpointGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:RegionNetworkEndpointGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.appEngine =
        Output.createUnknown<NetworkEndpointGroupAppEngineResponse>();
    this.clientPortMappingMode = Output.createUnknown<String>();
    this.cloudFunction =
        Output.createUnknown<NetworkEndpointGroupCloudFunctionResponse>();
    this.cloudRun =
        Output.createUnknown<NetworkEndpointGroupCloudRunResponse>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.defaultPort = Output.createUnknown<int>();
    this.description = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.loadBalancer = Output.createUnknown<
        NetworkEndpointGroupLbNetworkEndpointGroupResponse>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.networkEndpointType = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pscData = Output.createUnknown<NetworkEndpointGroupPscDataResponse>();
    this.pscTargetService = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.serverlessDeployment = Output.createUnknown<
        NetworkEndpointGroupServerlessDeploymentResponse>();
    this.size = Output.createUnknown<int>();
    this.subnetwork = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
