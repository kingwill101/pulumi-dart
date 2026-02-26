// ignore_for_file: unused_element, unnecessary_cast

import '../detector_datasources_kubernetes/detector_datasources_kubernetes.dart';
import '../detector_datasources_malware_protection/detector_datasources_malware_protection.dart';
import '../detector_datasources_s3_logs/detector_datasources_s3_logs.dart';

class DetectorDatasources {
  /// Configures [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  /// See Kubernetes and Kubernetes Audit Logs below for more details.
  final DetectorDatasourcesKubernetes? kubernetes;

  /// Configures [Malware Protection](https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection.html).
  /// See Malware Protection, Scan EC2 instance with findings and EBS volumes below for more details.
  final DetectorDatasourcesMalwareProtection? malwareProtection;

  /// Configures [S3 protection](https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html).
  /// See S3 Logs below for more details.
  final DetectorDatasourcesS3Logs? s3Logs;

  DetectorDatasources({
    this.kubernetes,
    this.malwareProtection,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kubernetesValue = kubernetes;
    if (kubernetesValue != null) {
      map['kubernetes'] = kubernetesValue.toMap();
    }
    final malwareProtectionValue = malwareProtection;
    if (malwareProtectionValue != null) {
      map['malwareProtection'] = malwareProtectionValue.toMap();
    }
    final s3LogsValue = s3Logs;
    if (s3LogsValue != null) {
      map['s3Logs'] = s3LogsValue.toMap();
    }
    return map;
  }

  factory DetectorDatasources.fromMap(Map<String, dynamic> map) {
    return DetectorDatasources(
      kubernetes: map['kubernetes'] == null
          ? null
          : DetectorDatasourcesKubernetes.fromMap(
              (map['kubernetes'] as Map).cast<String, dynamic>()),
      malwareProtection: map['malwareProtection'] == null
          ? null
          : DetectorDatasourcesMalwareProtection.fromMap(
              (map['malwareProtection'] as Map).cast<String, dynamic>()),
      s3Logs: map['s3Logs'] == null
          ? null
          : DetectorDatasourcesS3Logs.fromMap(
              (map['s3Logs'] as Map).cast<String, dynamic>()),
    );
  }
}
