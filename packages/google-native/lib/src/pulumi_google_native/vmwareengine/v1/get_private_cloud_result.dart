// ignore_for_file: unused_element, unnecessary_cast

import 'hcx_response.dart';
import 'management_cluster_response.dart';
import 'network_config_response21.dart';
import 'nsx_response.dart';
import 'vcenter_response.dart';

/// Result data returned by getPrivateCloud.
class GetPrivateCloudResult {
  /// Creation time of this resource.
  final String createTime;

  /// Time when the resource was scheduled for deletion.
  final String deleteTime;

  /// User-provided description for this private cloud.
  final String description;

  /// Time when the resource will be irreversibly deleted.
  final String expireTime;

  /// HCX appliance.
  final HcxResponse hcx;

  /// Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  final ManagementClusterResponse managementCluster;

  /// The resource name of this private cloud. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  final String name;

  /// Network configuration of the private cloud.
  final NetworkConfigResponse21 networkConfig;

  /// NSX appliance.
  final NsxResponse nsx;

  /// State of the resource. New values may be added to this enum when appropriate.
  final String state;

  /// Optional. Type of the private cloud. Defaults to STANDARD.
  final String type;

  /// System-generated unique identifier for the resource.
  final String uid;

  /// Last update time of this resource.
  final String updateTime;

  /// Vcenter appliance.
  final VcenterResponse vcenter;

  GetPrivateCloudResult({
    required this.createTime,
    required this.deleteTime,
    required this.description,
    required this.expireTime,
    required this.hcx,
    required this.managementCluster,
    required this.name,
    required this.networkConfig,
    required this.nsx,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
    required this.vcenter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['description'] = description;
    map['expireTime'] = expireTime;
    map['hcx'] = hcx.toMap();
    map['managementCluster'] = managementCluster.toMap();
    map['name'] = name;
    map['networkConfig'] = networkConfig.toMap();
    map['nsx'] = nsx.toMap();
    map['state'] = state;
    map['type'] = type;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['vcenter'] = vcenter.toMap();
    return map;
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      description: map['description'] as String,
      expireTime: map['expireTime'] as String,
      hcx: HcxResponse.fromMap((map['hcx'] as Map).cast<String, dynamic>()),
      managementCluster: ManagementClusterResponse.fromMap(
          (map['managementCluster'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkConfig: NetworkConfigResponse21.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      nsx: NsxResponse.fromMap((map['nsx'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vcenter: VcenterResponse.fromMap(
          (map['vcenter'] as Map).cast<String, dynamic>()),
    );
  }
}
