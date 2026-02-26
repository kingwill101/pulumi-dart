// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'node_taint3.dart';
import 'vmware_vsphere_config.dart';

/// Parameters that describe the configuration of all nodes within a given node pool.
class VmwareNodeConfig {
  /// VMware disk size to be used during creation.
  final String? bootDiskSizeGb;

  /// The number of CPUs for each node in the node pool.
  final String? cpus;

  /// Allow node pool traffic to be load balanced. Only works for clusters with MetalLB load balancers.
  final bool? enableLoadBalancer;

  /// The OS image name in vCenter, only valid when using Windows.
  final String? image;

  /// The OS image to be used for each node in a node pool. Currently `cos`, `ubuntu`, `ubuntu_containerd` and `windows` are supported.
  final String imageType;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final Map<String, String>? labels;

  /// The megabytes of memory for each node in the node pool.
  final String? memoryMb;

  /// The number of nodes in the node pool.
  final String? replicas;

  /// The initial taints assigned to nodes of this node pool.
  final List<NodeTaint3>? taints;

  /// Specifies the vSphere config for node pool.
  final VmwareVsphereConfig? vsphereConfig;

  VmwareNodeConfig({
    this.bootDiskSizeGb,
    this.cpus,
    this.enableLoadBalancer,
    this.image,
    required this.imageType,
    this.labels,
    this.memoryMb,
    this.replicas,
    this.taints,
    this.vsphereConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final cpusValue = cpus;
    if (cpusValue != null) {
      map['cpus'] = cpusValue;
    }
    final enableLoadBalancerValue = enableLoadBalancer;
    if (enableLoadBalancerValue != null) {
      map['enableLoadBalancer'] = enableLoadBalancerValue;
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
    }
    map['imageType'] = imageType;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final memoryMbValue = memoryMb;
    if (memoryMbValue != null) {
      map['memoryMb'] = memoryMbValue;
    }
    final replicasValue = replicas;
    if (replicasValue != null) {
      map['replicas'] = replicasValue;
    }
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] = Input.encodeList<NodeTaint3, Map<String, dynamic>>(
          taintsValue, (value) => value.toMap());
    }
    final vsphereConfigValue = vsphereConfig;
    if (vsphereConfigValue != null) {
      map['vsphereConfig'] = vsphereConfigValue.toMap();
    }
    return map;
  }

  factory VmwareNodeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareNodeConfig(
      bootDiskSizeGb: map['bootDiskSizeGb'] == null
          ? null
          : map['bootDiskSizeGb'] as String,
      cpus: map['cpus'] == null ? null : map['cpus'] as String,
      enableLoadBalancer: map['enableLoadBalancer'] == null
          ? null
          : map['enableLoadBalancer'] as bool,
      image: map['image'] == null ? null : map['image'] as String,
      imageType: map['imageType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      memoryMb: map['memoryMb'] == null ? null : map['memoryMb'] as String,
      replicas: map['replicas'] == null ? null : map['replicas'] as String,
      taints: map['taints'] == null
          ? null
          : Input.decodeList<NodeTaint3>(
              map['taints'],
              (value) =>
                  NodeTaint3.fromMap((value as Map).cast<String, dynamic>())),
      vsphereConfig: map['vsphereConfig'] == null
          ? null
          : VmwareVsphereConfig.fromMap(
              (map['vsphereConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
