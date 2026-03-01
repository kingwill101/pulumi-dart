// ignore_for_file: unused_element, unnecessary_cast


class K8sSlbAttachmentSlbConfigPortMappingServicePort {
  /// The port of k8s service, values should be within range [1, 65535].
  final int port;
  /// The protocol of k8s service, values can be 'TCP' or 'UDP'.
  final String protocol;
  /// The port of k8s pod, values should be within range [1, 65535].
  final int targetPort;

  /// Creates a new [K8sSlbAttachmentSlbConfigPortMappingServicePort].
  /// [port] The port of k8s service, values should be within range [1, 65535].
  /// [protocol] The protocol of k8s service, values can be 'TCP' or 'UDP'.
  /// [targetPort] The port of k8s pod, values should be within range [1, 65535].
  K8sSlbAttachmentSlbConfigPortMappingServicePort({
    required this.port,
    required this.protocol,
    required this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
      'targetPort': targetPort,
    };
  }

  factory K8sSlbAttachmentSlbConfigPortMappingServicePort.fromMap(Map<String, dynamic> map) {
    return K8sSlbAttachmentSlbConfigPortMappingServicePort(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      targetPort: map['targetPort'] as int,
    );
  }
}

