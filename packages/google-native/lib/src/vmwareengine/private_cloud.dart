import 'package:pulumi/pulumi.dart' as pulumi;
import 'hcx_response.dart';
import 'management_cluster_response.dart';
import 'network_config_response.dart';
import 'nsx_response.dart';
import 'private_cloud_args.dart';
import 'vcenter_response.dart';

/// Creates a new `PrivateCloud` resource in a given project and location. Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources, `STRETCHED` private clouds are regional. Creating a private cloud also creates a [management cluster](https://cloud.google.com/vmware-engine/docs/concepts-vmware-components) for that private cloud.
/// Auto-naming is currently not supported for this resource.
class PrivateCloud extends pulumi.CustomResource {
  /// Creation time of this resource.
  late final pulumi.Output<String> createTime;

  /// Time when the resource was scheduled for deletion.
  late final pulumi.Output<String> deleteTime;

  /// User-provided description for this private cloud.
  late final pulumi.Output<String> description;

  /// Time when the resource will be irreversibly deleted.
  late final pulumi.Output<String> expireTime;

  /// HCX appliance.
  late final pulumi.Output<HcxResponse> hcx;
  late final pulumi.Output<String> location;

  /// Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  late final pulumi.Output<ManagementClusterResponse> managementCluster;

  /// The resource name of this private cloud. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  late final pulumi.Output<String> name;

  /// Network configuration of the private cloud.
  late final pulumi.Output<NetworkConfigResponse> networkConfig;

  /// NSX appliance.
  late final pulumi.Output<NsxResponse> nsx;

  /// Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each `PrivateCloud` within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final pulumi.Output<String> privateCloudId;
  late final pulumi.Output<String> project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// State of the resource. New values may be added to this enum when appropriate.
  late final pulumi.Output<String> state;

  /// Optional. Type of the private cloud. Defaults to STANDARD.
  late final pulumi.Output<String> type;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last update time of this resource.
  late final pulumi.Output<String> updateTime;

  /// Vcenter appliance.
  late final pulumi.Output<VcenterResponse> vcenter;

  /// Creates a new [PrivateCloud].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateCloud]. {@macro pulumi_vmwareengine_v1_private_cloud_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateCloud(
    String name, {
    PrivateCloudArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:PrivateCloud',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.expireTime = registerOutput<String>('expireTime');
    this.hcx = registerOutput<HcxResponse>('hcx');
    this.location = registerOutput<String>('location');
    this.managementCluster =
        registerOutput<ManagementClusterResponse>('managementCluster');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<NetworkConfigResponse>('networkConfig');
    this.nsx = registerOutput<NsxResponse>('nsx');
    this.privateCloudId = registerOutput<String>('privateCloudId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vcenter = registerOutput<VcenterResponse>('vcenter');
  }
}
