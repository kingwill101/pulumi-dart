// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint_response_gkeonprem_v1.dart';
import 'vmware_vsphere_config_response.dart';

/// Parameters that describe the configuration of all nodes within a given node pool.
class VmwareNodeConfigResponse {
  /// VMware disk size to be used during creation.
  final String bootDiskSizeGb;

  /// The number of CPUs for each node in the node pool.
  final String cpus;

  /// Allow node pool traffic to be load balanced. Only works for clusters with MetalLB load balancers.
  final bool enableLoadBalancer;

  /// The OS image name in vCenter, only valid when using Windows.
  final String image;

  /// The OS image to be used for each node in a node pool. Currently `cos`, `ubuntu`, `ubuntu_containerd` and `windows` are supported.
  final String imageType;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final Map<String, String> labels;

  /// The megabytes of memory for each node in the node pool.
  final String memoryMb;

  /// The number of nodes in the node pool.
  final String replicas;

  /// The initial taints assigned to nodes of this node pool.
  final List<NodeTaintResponseGkeonpremV1> taints;

  /// Specifies the vSphere config for node pool.
  final VmwareVsphereConfigResponse vsphereConfig;

  VmwareNodeConfigResponse({
    required this.bootDiskSizeGb,
    required this.cpus,
    required this.enableLoadBalancer,
    required this.image,
    required this.imageType,
    required this.labels,
    required this.memoryMb,
    required this.replicas,
    required this.taints,
    required this.vsphereConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bootDiskSizeGb'] = bootDiskSizeGb;
    map['cpus'] = cpus;
    map['enableLoadBalancer'] = enableLoadBalancer;
    map['image'] = image;
    map['imageType'] = imageType;
    map['labels'] = labels;
    map['memoryMb'] = memoryMb;
    map['replicas'] = replicas;
    map['taints'] = pulumi.Input.encodeList<NodeTaintResponseGkeonpremV1,
        Map<String, dynamic>>(taints, (value) => value.toMap());
    map['vsphereConfig'] = vsphereConfig.toMap();
    return map;
  }

  factory VmwareNodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareNodeConfigResponse(
      bootDiskSizeGb: map['bootDiskSizeGb'] as String,
      cpus: map['cpus'] as String,
      enableLoadBalancer: map['enableLoadBalancer'] as bool,
      image: map['image'] as String,
      imageType: map['imageType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      memoryMb: map['memoryMb'] as String,
      replicas: map['replicas'] as String,
      taints: pulumi.Input.decodeList<NodeTaintResponseGkeonpremV1>(
          map['taints'],
          (value) => NodeTaintResponseGkeonpremV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      vsphereConfig: VmwareVsphereConfigResponse.fromMap(
          (map['vsphereConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
