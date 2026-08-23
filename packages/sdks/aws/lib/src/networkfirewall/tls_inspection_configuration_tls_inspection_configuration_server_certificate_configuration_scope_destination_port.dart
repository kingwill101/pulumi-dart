// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort {
  /// The lower limit of the port range. This must be less than or equal to the `toPort`.
  final pulumi.Input<int> fromPort;
  /// The upper limit of the port range. This must be greater than or equal to the `fromPort`.
  final pulumi.Input<int> toPort;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort].
  /// [fromPort] The lower limit of the port range. This must be less than or equal to the `toPort`.
  /// [toPort] The upper limit of the port range. This must be greater than or equal to the `fromPort`.
  const TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort(
      fromPort: pulumi.Input.fromValue(map['fromPort'] as int),
      toPort: pulumi.Input.fromValue(map['toPort'] as int),
    );
  }
}
