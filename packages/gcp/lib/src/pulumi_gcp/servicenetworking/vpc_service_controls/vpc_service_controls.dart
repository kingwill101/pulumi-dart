import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_service_controls_args.dart';

/// Manages the VPC Service Controls configuration for a service
/// networking connection
///
/// When enabled, Google Cloud makes the following
/// route configuration changes in the service producer VPC network:
/// - Removes the IPv4 default route (destination 0.0.0.0/0,
/// next hop default internet gateway), Google Cloud then creates an
/// IPv4 route for destination 199.36.153.4/30 using the default
/// internet gateway next hop.
/// - Creates Cloud DNS managed private zones and authorizes those zones
/// for the service producer VPC network. The zones include
/// googleapis.com, gcr.io, pkg.dev, notebooks.cloud.google.com,
/// kernels.googleusercontent.com, backupdr.cloud.google.com, and
/// backupdr.googleusercontent.com as necessary domains or host names
/// for Google APIs and services that are compatible with VPC Service
/// Controls. Record data in the zones resolves all host names to
/// 199.36.153.4, 199.36.153.5, 199.36.153.6, and 199.36.153.7.
///
/// When disabled, Google Cloud makes the following route configuration
/// changes in the service producer VPC network:
/// - Restores a default route (destination 0.0.0.0/0, next hop default
/// internet gateway)
/// - Deletes the Cloud DNS managed private zones that provided the host
/// name overrides.
///
///
/// To get more information about VPCServiceControls, see:
///
/// * [API documentation](https://cloud.google.com/service-infrastructure/docs/service-networking/reference/rest/v1/services)
/// * How-to Guides
/// * [Enable VPC Service Controls for service networking](https://cloud.google.com/sdk/gcloud/reference/services/vpc-peerings/enable-vpc-service-controls)
/// * [Private Google Access with VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/private-connectivity)
/// * [Set up private connectivity to Google APIs and services](https://cloud.google.com/vpc-service-controls/docs/set-up-private-connectivity)
///
/// > **Note:** Destroying a `gcp.servicenetworking.VpcServiceControls`
/// resource will remove it from state, but will not change the
/// underlying VPC Service Controls configuration for the service
/// producer network.
///
/// ## Example Usage
///
/// ### Service Networking Vpc Service Controls Basic
///
///
///
///
/// ## Import
///
/// VPCServiceControls can be imported using any of these accepted formats:
///
/// * `services/{{service}}/projects/{{project}}/networks/{{network}}`
///
/// * `{{service}}/{{project}}/{{network}}`
///
/// * `{{service}}/{{network}}`
///
/// When using the `pulumi import` command, VPCServiceControls can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/vpcServiceControls:VpcServiceControls default services/{{service}}/projects/{{project}}/networks/{{network}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/vpcServiceControls:VpcServiceControls default {{service}}/{{project}}/{{network}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/vpcServiceControls:VpcServiceControls default {{service}}/{{network}}
/// ```
class VpcServiceControls extends pulumi.CustomResource {
  /// Desired VPC Service Controls state service producer VPC network, as
  /// described at the top of this page.
  late final pulumi.Output<bool> enabled;

  /// The network that the consumer is using to connect with services.
  late final pulumi.Output<String> network;

  /// The id of the Google Cloud project containing the consumer network.
  late final pulumi.Output<String?> project;

  /// The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`.
  late final pulumi.Output<String> service;

  VpcServiceControls(
    String name, {
    VpcServiceControlsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicenetworking/vpcServiceControls:VpcServiceControls',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String?>('project');
    this.service = registerOutput<String>('service');
  }
}
