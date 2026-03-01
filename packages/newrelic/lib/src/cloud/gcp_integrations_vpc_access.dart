// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsVpcAccess {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsVpcAccess].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsVpcAccess({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsVpcAccess.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsVpcAccess(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

