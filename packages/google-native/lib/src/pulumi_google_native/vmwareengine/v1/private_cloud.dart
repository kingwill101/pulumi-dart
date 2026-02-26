import 'package:pulumi/pulumi.dart';
import 'hcx_response.dart';
import 'management_cluster_response.dart';
import 'network_config_response21.dart';
import 'nsx_response.dart';
import 'private_cloud_args.dart';
import 'vcenter_response.dart';

/// Creates a new `PrivateCloud` resource in a given project and location. Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources, `STRETCHED` private clouds are regional. Creating a private cloud also creates a [management cluster](https://cloud.google.com/vmware-engine/docs/concepts-vmware-components) for that private cloud.
/// Auto-naming is currently not supported for this resource.
class PrivateCloud extends CustomResource {
  /// Creation time of this resource.
  late final Output<String> createTime;

  /// Time when the resource was scheduled for deletion.
  late final Output<String> deleteTime;

  /// User-provided description for this private cloud.
  late final Output<String> description;

  /// Time when the resource will be irreversibly deleted.
  late final Output<String> expireTime;

  /// HCX appliance.
  late final Output<HcxResponse> hcx;
  late final Output<String> location;

  /// Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  late final Output<ManagementClusterResponse> managementCluster;

  /// The resource name of this private cloud. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  late final Output<String> name;

  /// Network configuration of the private cloud.
  late final Output<NetworkConfigResponse21> networkConfig;

  /// NSX appliance.
  late final Output<NsxResponse> nsx;

  /// Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each `PrivateCloud` within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final Output<String> privateCloudId;
  late final Output<String> project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// State of the resource. New values may be added to this enum when appropriate.
  late final Output<String> state;

  /// Optional. Type of the private cloud. Defaults to STANDARD.
  late final Output<String> type;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last update time of this resource.
  late final Output<String> updateTime;

  /// Vcenter appliance.
  late final Output<VcenterResponse> vcenter;

  PrivateCloud(
    String name, {
    PrivateCloudArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:PrivateCloud',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
    this.networkConfig =
        registerOutput<NetworkConfigResponse21>('networkConfig');
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
