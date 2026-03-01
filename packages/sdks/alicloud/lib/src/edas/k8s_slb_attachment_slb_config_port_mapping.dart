// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_slb_attachment_slb_config_port_mapping_service_port.dart';

class K8sSlbAttachmentSlbConfigPortMapping {
  /// The ID of your tls certification, this is used for 'HTTPS' protocol only.
  final String? certId;
  /// The protocol of SLB instance configuration, values can be 'TCP', 'HTTP' or 'HTTPS'.
  final String loadbalancerProtocol;
  /// The backend k8s service configuration for SLB instance, which is supported for multiple configurations. See `service_port` below.
  final K8sSlbAttachmentSlbConfigPortMappingServicePort servicePort;

  /// Creates a new [K8sSlbAttachmentSlbConfigPortMapping].
  /// [certId] The ID of your tls certification, this is used for 'HTTPS' protocol only.
  /// [loadbalancerProtocol] The protocol of SLB instance configuration, values can be 'TCP', 'HTTP' or 'HTTPS'.
  /// [servicePort] The backend k8s service configuration for SLB instance, which is supported for multiple configurations. See `service_port` below.
  K8sSlbAttachmentSlbConfigPortMapping({
    this.certId,
    required this.loadbalancerProtocol,
    required this.servicePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'loadbalancerProtocol': loadbalancerProtocol,
      'servicePort': servicePort.toMap(),
    };
  }

  factory K8sSlbAttachmentSlbConfigPortMapping.fromMap(Map<String, dynamic> map) {
    return K8sSlbAttachmentSlbConfigPortMapping(
      certId: map['certId'] == null ? null : map['certId'] as String,
      loadbalancerProtocol: map['loadbalancerProtocol'] as String,
      servicePort: K8sSlbAttachmentSlbConfigPortMappingServicePort.fromMap((map['servicePort'] as Map).cast<String, dynamic>()),
    );
  }
}

