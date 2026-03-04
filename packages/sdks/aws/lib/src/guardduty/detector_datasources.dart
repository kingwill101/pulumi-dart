// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_datasources_kubernetes.dart';
import 'detector_datasources_malware_protection.dart';
import 'detector_datasources_s3_logs.dart';

class DetectorDatasources {
  /// Configures [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  /// See Kubernetes and Kubernetes Audit Logs below for more details.
  final pulumi.Input<DetectorDatasourcesKubernetes>? kubernetes;

  /// Configures [Malware Protection](https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection.html).
  /// See Malware Protection, Scan EC2 instance with findings and EBS volumes below for more details.
  final pulumi.Input<DetectorDatasourcesMalwareProtection>? malwareProtection;

  /// Configures [S3 protection](https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html).
  /// See S3 Logs below for more details.
  final pulumi.Input<DetectorDatasourcesS3Logs>? s3Logs;

  /// Creates a new [DetectorDatasources].
  /// [kubernetes] Configures [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  /// [malwareProtection] Configures [Malware Protection](https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection.html).
  /// [s3Logs] Configures [S3 protection](https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html).
  DetectorDatasources({this.kubernetes, this.malwareProtection, this.s3Logs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetes':
          ?pulumi.Input.mapOptionalInputValue<
            DetectorDatasourcesKubernetes,
            Map<String, dynamic>
          >(kubernetes, (value) => value.toMap()),
      'malwareProtection':
          ?pulumi.Input.mapOptionalInputValue<
            DetectorDatasourcesMalwareProtection,
            Map<String, dynamic>
          >(malwareProtection, (value) => value.toMap()),
      's3Logs':
          ?pulumi.Input.mapOptionalInputValue<
            DetectorDatasourcesS3Logs,
            Map<String, dynamic>
          >(s3Logs, (value) => value.toMap()),
    };
  }

  factory DetectorDatasources.fromMap(Map<String, dynamic> map) {
    return DetectorDatasources(
      kubernetes: (() {
        final guardedValue = map['kubernetes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DetectorDatasourcesKubernetes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      malwareProtection: (() {
        final guardedValue = map['malwareProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DetectorDatasourcesMalwareProtection.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3Logs: (() {
        final guardedValue = map['s3Logs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DetectorDatasourcesS3Logs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
