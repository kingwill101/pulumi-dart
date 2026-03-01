import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_endpoint_group_args.dart';
import 'network_endpoint_group_app_engine_response.dart';
import 'network_endpoint_group_cloud_function_response.dart';
import 'network_endpoint_group_cloud_run_response.dart';
import 'network_endpoint_group_lb_network_endpoint_group_response.dart';
import 'network_endpoint_group_psc_data_response.dart';
import 'network_endpoint_group_serverless_deployment_response.dart';

/// Creates a network endpoint group in the specified project using the parameters that are included in the request.
class GlobalNetworkEndpointGroup extends pulumi.CustomResource {
  /// Metadata defined as annotations on the network endpoint group.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  late final pulumi.Output<NetworkEndpointGroupAppEngineResponse> appEngine;

  /// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  late final pulumi.Output<String> clientPortMappingMode;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  late final pulumi.Output<NetworkEndpointGroupCloudFunctionResponse>
  cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  late final pulumi.Output<NetworkEndpointGroupCloudRunResponse> cloudRun;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// The default port used if the port number is not specified in the network endpoint.
  late final pulumi.Output<int> defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Type of the resource. Always compute#networkEndpointGroup for network endpoint group.
  late final pulumi.Output<String> kind;

  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  late final pulumi.Output<NetworkEndpointGroupLbNetworkEndpointGroupResponse>
  loadBalancer;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  late final pulumi.Output<String> network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  late final pulumi.Output<String> networkEndpointType;
  late final pulumi.Output<String> project;
  late final pulumi.Output<NetworkEndpointGroupPscDataResponse> pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  late final pulumi.Output<String> pscTargetService;

  /// The URL of the region where the network endpoint group is located.
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  late final pulumi.Output<NetworkEndpointGroupServerlessDeploymentResponse>
  serverlessDeployment;

  /// [Output only] Number of network endpoints in the network endpoint group.
  late final pulumi.Output<int> size;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  late final pulumi.Output<String> subnetwork;

  /// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  late final pulumi.Output<String> type;

  /// The URL of the zone where the network endpoint group is located.
  late final pulumi.Output<String> zone;

  /// Creates a new [GlobalNetworkEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalNetworkEndpointGroup]. {@macro pulumi_compute_alpha_global_network_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalNetworkEndpointGroup(
    String name, {
    GlobalNetworkEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/alpha:GlobalNetworkEndpointGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.appEngine = registerOutput<NetworkEndpointGroupAppEngineResponse>(
      'appEngine',
    );
    this.clientPortMappingMode = registerOutput<String>(
      'clientPortMappingMode',
    );
    this.cloudFunction =
        registerOutput<NetworkEndpointGroupCloudFunctionResponse>(
          'cloudFunction',
        );
    this.cloudRun = registerOutput<NetworkEndpointGroupCloudRunResponse>(
      'cloudRun',
    );
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.defaultPort = registerOutput<int>('defaultPort');
    this.description = registerOutput<String>('description');
    this.kind = registerOutput<String>('kind');
    this.loadBalancer =
        registerOutput<NetworkEndpointGroupLbNetworkEndpointGroupResponse>(
          'loadBalancer',
        );
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkEndpointType = registerOutput<String>('networkEndpointType');
    this.project = registerOutput<String>('project');
    this.pscData = registerOutput<NetworkEndpointGroupPscDataResponse>(
      'pscData',
    );
    this.pscTargetService = registerOutput<String>('pscTargetService');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.serverlessDeployment =
        registerOutput<NetworkEndpointGroupServerlessDeploymentResponse>(
          'serverlessDeployment',
        );
    this.size = registerOutput<int>('size');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.type = registerOutput<String>('type');
    this.zone = registerOutput<String>('zone');
  }
}
