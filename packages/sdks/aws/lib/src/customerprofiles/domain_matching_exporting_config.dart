// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_matching_exporting_config_s3_exporting.dart';

class DomainMatchingExportingConfig {
  final pulumi.Input<DomainMatchingExportingConfigS3Exporting>? s3Exporting;

  /// Creates a new [DomainMatchingExportingConfig].
  /// [s3Exporting] Optional.
  DomainMatchingExportingConfig({
    this.s3Exporting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Exporting': ?pulumi.Input.mapOptionalInputValue<DomainMatchingExportingConfigS3Exporting, Map<String, dynamic>>(s3Exporting, (value) => value.toMap()),
    };
  }

  factory DomainMatchingExportingConfig.fromMap(Map<String, dynamic> map) {
    return DomainMatchingExportingConfig(
      s3Exporting: map['s3Exporting'] == null ? null : (DomainMatchingExportingConfigS3Exporting.fromMap((map['s3Exporting'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

