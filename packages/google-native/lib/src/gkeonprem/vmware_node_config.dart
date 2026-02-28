// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint.dart';
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
  final List<NodeTaint>? taints;
  /// Specifies the vSphere config for node pool.
  final VmwareVsphereConfig? vsphereConfig;

  /// Creates a new [VmwareNodeConfig].
  /// [bootDiskSizeGb] VMware disk size to be used during creation.
  /// [cpus] The number of CPUs for each node in the node pool.
  /// [enableLoadBalancer] Allow node pool traffic to be load balanced. Only works for clusters with MetalLB load balancers.
  /// [image] The OS image name in vCenter, only valid when using Windows.
  /// [imageType] The OS image to be used for each node in a node pool. Currently `cos`, `ubuntu`, `ubuntu_containerd` and `windows` are supported.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  /// [memoryMb] The megabytes of memory for each node in the node pool.
  /// [replicas] The number of nodes in the node pool.
  /// [taints] The initial taints assigned to nodes of this node pool.
  /// [vsphereConfig] Specifies the vSphere config for node pool.
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
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'cpus': ?cpus,
      'enableLoadBalancer': ?enableLoadBalancer,
      'image': ?image,
      'imageType': imageType,
      'labels': ?labels,
      'memoryMb': ?memoryMb,
      'replicas': ?replicas,
      'taints': ?taints == null ? null : pulumi.Input.encodeList<NodeTaint, Map<String, dynamic>>(taints!, (value) => value.toMap()),
      'vsphereConfig': ?vsphereConfig == null ? null : vsphereConfig!.toMap(),
    };
  }

  factory VmwareNodeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareNodeConfig(
      bootDiskSizeGb: map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as String,
      cpus: map['cpus'] == null ? null : map['cpus'] as String,
      enableLoadBalancer: map['enableLoadBalancer'] == null ? null : map['enableLoadBalancer'] as bool,
      image: map['image'] == null ? null : map['image'] as String,
      imageType: map['imageType'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      memoryMb: map['memoryMb'] == null ? null : map['memoryMb'] as String,
      replicas: map['replicas'] == null ? null : map['replicas'] as String,
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<NodeTaint>(map['taints'], (value) => NodeTaint.fromMap((value as Map).cast<String, dynamic>())),
      vsphereConfig: map['vsphereConfig'] == null ? null : VmwareVsphereConfig.fromMap((map['vsphereConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

