// ignore_for_file: unused_element, unnecessary_cast

import '../domain_matching_exporting_config_s3_exporting/domain_matching_exporting_config_s3_exporting.dart';

class DomainMatchingExportingConfig {
  final DomainMatchingExportingConfigS3Exporting? s3Exporting;

  DomainMatchingExportingConfig({
    this.s3Exporting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3ExportingValue = s3Exporting;
    if (s3ExportingValue != null) {
      map['s3Exporting'] = s3ExportingValue.toMap();
    }
    return map;
  }

  factory DomainMatchingExportingConfig.fromMap(Map<String, dynamic> map) {
    return DomainMatchingExportingConfig(
      s3Exporting: map['s3Exporting'] == null
          ? null
          : DomainMatchingExportingConfigS3Exporting.fromMap(
              (map['s3Exporting'] as Map).cast<String, dynamic>()),
    );
  }
}
