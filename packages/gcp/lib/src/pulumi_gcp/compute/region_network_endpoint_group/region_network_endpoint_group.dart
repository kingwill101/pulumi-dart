import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_network_endpoint_group_app_engine/region_network_endpoint_group_app_engine.dart';
import '../region_network_endpoint_group_cloud_function/region_network_endpoint_group_cloud_function.dart';
import '../region_network_endpoint_group_cloud_run/region_network_endpoint_group_cloud_run.dart';
import '../region_network_endpoint_group_psc_data/region_network_endpoint_group_psc_data.dart';
import '../region_network_endpoint_group_serverless_deployment/region_network_endpoint_group_serverless_deployment.dart';
import 'region_network_endpoint_group_args.dart';

/// A regional NEG that can support Serverless Products, proxying traffic to
/// external backends and providing traffic to the PSC port mapping endpoints.
///
/// To get more information about RegionNetworkEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionNetworkEndpointGroups)
/// * How-to Guides
/// * [Internet NEGs Official Documentation](https://cloud.google.com/load-balancing/docs/negs/internet-neg-concepts)
/// * [Serverless NEGs Official Documentation](https://cloud.google.com/load-balancing/docs/negs/serverless-neg-concepts)
///
/// ## Example Usage
///
/// ### Region Network Endpoint Group Functions
///
///
///
/// ### Region Network Endpoint Group Cloudrun
///
///
///
/// ### Region Network Endpoint Group Appengine
///
///
///
/// ### Region Network Endpoint Group Appengine Empty
///
///
///
/// ### Region Network Endpoint Group Psc
///
///
///
/// ### Region Network Endpoint Group Psc Service Attachment
///
///
///
/// ### Region Network Endpoint Group Internet Ip Port
///
///
///
/// ### Region Network Endpoint Group Internet Fqdn Port
///
///
///
/// ### Region Network Endpoint Group Portmap
///
///
///
///
/// ## Import
///
/// RegionNetworkEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionNetworkEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup default {{name}}
/// ```
class RegionNetworkEndpointGroup extends pulumi.CustomResource {
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupAppEngine?> appEngine;

  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupCloudFunction?>
      cloudFunction;

  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupCloudRun?> cloudRun;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// This field is only used for PSC and INTERNET NEGs.
  /// The URL of the network to which all network endpoints in the NEG belong. Uses
  /// "default" project network if unspecified.
  late final pulumi.Output<String> network;

  /// Type of network endpoints in this network endpoint group. Defaults to SERVERLESS.
  /// Default value is `SERVERLESS`.
  /// Possible values are: `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `GCE_VM_IP_PORTMAP`.
  late final pulumi.Output<String?> networkEndpointType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// This field is only used for PSC NEGs.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupPscData> pscData;

  /// This field is only used for PSC and INTERNET NEGs.
  /// The target service url used to set up private service connection to
  /// a Google API or a PSC Producer Service Attachment.
  late final pulumi.Output<String?> pscTargetService;

  /// A reference to the region where the regional NEGs reside.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkEndpointGroupServerlessDeployment?>
      serverlessDeployment;

  /// This field is only used for PSC NEGs.
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  late final pulumi.Output<String?> subnetwork;

  RegionNetworkEndpointGroup(
    String name, {
    RegionNetworkEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkEndpointGroup:RegionNetworkEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appEngine =
        registerOutput<RegionNetworkEndpointGroupAppEngine?>('appEngine');
    this.cloudFunction =
        registerOutput<RegionNetworkEndpointGroupCloudFunction?>(
            'cloudFunction');
    this.cloudRun =
        registerOutput<RegionNetworkEndpointGroupCloudRun?>('cloudRun');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkEndpointType = registerOutput<String?>('networkEndpointType');
    this.project = registerOutput<String>('project');
    this.pscData = registerOutput<RegionNetworkEndpointGroupPscData>('pscData');
    this.pscTargetService = registerOutput<String?>('pscTargetService');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverlessDeployment =
        registerOutput<RegionNetworkEndpointGroupServerlessDeployment?>(
            'serverlessDeployment');
    this.subnetwork = registerOutput<String?>('subnetwork');
  }
}
