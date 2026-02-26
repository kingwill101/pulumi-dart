// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_node_pool_config_taint/vmware_node_pool_config_taint.dart';
import '../vmware_node_pool_config_vsphere_config/vmware_node_pool_config_vsphere_config.dart';

class VMwareNodePoolConfig {
  /// VMware disk size to be used during creation.
  final int? bootDiskSizeGb;

  /// The number of CPUs for each node in the node pool.
  final int? cpus;

  /// Allow node pool traffic to be load balanced. Only works for clusters with
  /// MetalLB load balancers.
  final bool? enableLoadBalancer;

  /// The OS image name in vCenter, only valid when using Windows.
  final String? image;

  /// The OS image to be used for each node in a node pool.
  /// Currently <span pulumi-lang-nodejs="`cos`" pulumi-lang-dotnet="`Cos`" pulumi-lang-go="`cos`" pulumi-lang-python="`cos`" pulumi-lang-yaml="`cos`" pulumi-lang-java="`cos`">`cos`</span>, <span pulumi-lang-nodejs="`cosCgv2`" pulumi-lang-dotnet="`CosCgv2`" pulumi-lang-go="`cosCgv2`" pulumi-lang-python="`cos_cgv2`" pulumi-lang-yaml="`cosCgv2`" pulumi-lang-java="`cosCgv2`">`cos_cgv2`</span>, <span pulumi-lang-nodejs="`ubuntu`" pulumi-lang-dotnet="`Ubuntu`" pulumi-lang-go="`ubuntu`" pulumi-lang-python="`ubuntu`" pulumi-lang-yaml="`ubuntu`" pulumi-lang-java="`ubuntu`">`ubuntu`</span>, <span pulumi-lang-nodejs="`ubuntuCgv2`" pulumi-lang-dotnet="`UbuntuCgv2`" pulumi-lang-go="`ubuntuCgv2`" pulumi-lang-python="`ubuntu_cgv2`" pulumi-lang-yaml="`ubuntuCgv2`" pulumi-lang-java="`ubuntuCgv2`">`ubuntu_cgv2`</span>, <span pulumi-lang-nodejs="`ubuntuContainerd`" pulumi-lang-dotnet="`UbuntuContainerd`" pulumi-lang-go="`ubuntuContainerd`" pulumi-lang-python="`ubuntu_containerd`" pulumi-lang-yaml="`ubuntuContainerd`" pulumi-lang-java="`ubuntuContainerd`">`ubuntu_containerd`</span> and <span pulumi-lang-nodejs="`windows`" pulumi-lang-dotnet="`Windows`" pulumi-lang-go="`windows`" pulumi-lang-python="`windows`" pulumi-lang-yaml="`windows`" pulumi-lang-java="`windows`">`windows`</span> are supported.
  final String imageType;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node.
  /// These will added in addition to any default label(s) that
  /// Kubernetes may apply to the node.
  /// In case of conflict in label keys, the applied set may differ depending on
  /// the Kubernetes version -- it's best to assume the behavior is undefined
  /// and conflicts should be avoided.
  final Map<String, String>? labels;

  /// The megabytes of memory for each node in the node pool.
  final int? memoryMb;

  /// The number of nodes in the node pool.
  final int? replicas;

  /// The initial taints assigned to nodes of this node pool.
  /// Structure is documented below.
  final List<VMwareNodePoolConfigTaint>? taints;

  /// Specifies the vSphere config for node pool.
  /// Structure is documented below.
  final VMwareNodePoolConfigVsphereConfig? vsphereConfig;

  VMwareNodePoolConfig({
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
      map['taints'] =
          Input.encodeList<VMwareNodePoolConfigTaint, Map<String, dynamic>>(
              taintsValue, (value) => value.toMap());
    }
    final vsphereConfigValue = vsphereConfig;
    if (vsphereConfigValue != null) {
      map['vsphereConfig'] = vsphereConfigValue.toMap();
    }
    return map;
  }

  factory VMwareNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolConfig(
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      cpus: map['cpus'] == null ? null : map['cpus'] as int,
      enableLoadBalancer: map['enableLoadBalancer'] == null
          ? null
          : map['enableLoadBalancer'] as bool,
      image: map['image'] == null ? null : map['image'] as String,
      imageType: map['imageType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      memoryMb: map['memoryMb'] == null ? null : map['memoryMb'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      taints: map['taints'] == null
          ? null
          : Input.decodeList<VMwareNodePoolConfigTaint>(
              map['taints'],
              (value) => VMwareNodePoolConfigTaint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vsphereConfig: map['vsphereConfig'] == null
          ? null
          : VMwareNodePoolConfigVsphereConfig.fromMap(
              (map['vsphereConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
