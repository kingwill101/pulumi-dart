// ignore_for_file: unused_element, unnecessary_cast

import 'node_swap_status.dart';

/// NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
class NodeSystemInfo {
  /// The Architecture reported by the node
  final String architecture;
  /// Boot ID reported by the node.
  final String bootID;
  /// ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
  final String containerRuntimeVersion;
  /// Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
  final String kernelVersion;
  /// Deprecated: KubeProxy Version reported by the node.
  final String kubeProxyVersion;
  /// Kubelet Version reported by the node.
  final String kubeletVersion;
  /// MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
  final String machineID;
  /// The Operating System reported by the node
  final String operatingSystem;
  /// OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
  final String osImage;
  /// Swap Info reported by the node.
  final NodeSwapStatus? swap;
  /// SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
  final String systemUUID;

  /// Creates a new [NodeSystemInfo].
  /// [architecture] The Architecture reported by the node
  /// [bootID] Boot ID reported by the node.
  /// [containerRuntimeVersion] ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
  /// [kernelVersion] Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
  /// [kubeProxyVersion] Deprecated: KubeProxy Version reported by the node.
  /// [kubeletVersion] Kubelet Version reported by the node.
  /// [machineID] MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
  /// [operatingSystem] The Operating System reported by the node
  /// [osImage] OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
  /// [swap] Swap Info reported by the node.
  /// [systemUUID] SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
  NodeSystemInfo({
    required this.architecture,
    required this.bootID,
    required this.containerRuntimeVersion,
    required this.kernelVersion,
    required this.kubeProxyVersion,
    required this.kubeletVersion,
    required this.machineID,
    required this.operatingSystem,
    required this.osImage,
    this.swap,
    required this.systemUUID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'bootID': bootID,
      'containerRuntimeVersion': containerRuntimeVersion,
      'kernelVersion': kernelVersion,
      'kubeProxyVersion': kubeProxyVersion,
      'kubeletVersion': kubeletVersion,
      'machineID': machineID,
      'operatingSystem': operatingSystem,
      'osImage': osImage,
      'swap': ?swap == null ? null : swap!.toMap(),
      'systemUUID': systemUUID,
    };
  }

  factory NodeSystemInfo.fromMap(Map<String, dynamic> map) {
    return NodeSystemInfo(
      architecture: map['architecture'] as String,
      bootID: map['bootID'] as String,
      containerRuntimeVersion: map['containerRuntimeVersion'] as String,
      kernelVersion: map['kernelVersion'] as String,
      kubeProxyVersion: map['kubeProxyVersion'] as String,
      kubeletVersion: map['kubeletVersion'] as String,
      machineID: map['machineID'] as String,
      operatingSystem: map['operatingSystem'] as String,
      osImage: map['osImage'] as String,
      swap: map['swap'] == null ? null : NodeSwapStatus.fromMap((map['swap'] as Map).cast<String, dynamic>()),
      systemUUID: map['systemUUID'] as String,
    );
  }
}

