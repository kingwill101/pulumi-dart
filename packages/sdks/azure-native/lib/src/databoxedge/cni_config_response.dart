// ignore_for_file: unused_element, unnecessary_cast


/// Cni configuration
class CniConfigResponse {
  /// Pod Subnet
  final String podSubnet;
  /// Service subnet
  final String serviceSubnet;
  /// Cni type
  final String type;
  /// Cni version
  final String version;

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
      podSubnet: map['podSubnet'] as String,
      serviceSubnet: map['serviceSubnet'] as String,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

