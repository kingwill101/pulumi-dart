// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cni configuration
class CniConfigResponse {
  /// Pod Subnet
  final pulumi.Input<String> podSubnet;
  /// Service subnet
  final pulumi.Input<String> serviceSubnet;
  /// Cni type
  final pulumi.Input<String> type;
  /// Cni version
  final pulumi.Input<String> version;

  /// Creates a new [CniConfigResponse].
  /// [podSubnet] Pod Subnet
  /// [serviceSubnet] Service subnet
  /// [type] Cni type
  /// [version] Cni version
  CniConfigResponse({
    required this.podSubnet,
    required this.serviceSubnet,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podSubnet': podSubnet,
      'serviceSubnet': serviceSubnet,
      'type': type,
      'version': version,
    };
  }

  factory CniConfigResponse.fromMap(Map<String, dynamic> map) {
    return CniConfigResponse(
      podSubnet: (map['podSubnet'] as String).input(),
      serviceSubnet: (map['serviceSubnet'] as String).input(),
      type: (map['type'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

