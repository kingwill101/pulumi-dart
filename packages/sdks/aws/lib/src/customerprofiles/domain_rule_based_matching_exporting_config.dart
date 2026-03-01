// ignore_for_file: unused_element, unnecessary_cast

import 'domain_rule_based_matching_exporting_config_s3_exporting.dart';

class DomainRuleBasedMatchingExportingConfig {
  final DomainRuleBasedMatchingExportingConfigS3Exporting? s3Exporting;

  /// Creates a new [DomainRuleBasedMatchingExportingConfig].
  /// [s3Exporting] Optional.
  DomainRuleBasedMatchingExportingConfig({
    this.s3Exporting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Exporting': ?s3Exporting == null ? null : s3Exporting!.toMap(),
    };
  }

  factory DomainRuleBasedMatchingExportingConfig.fromMap(Map<String, dynamic> map) {
    return DomainRuleBasedMatchingExportingConfig(
      s3Exporting: map['s3Exporting'] == null ? null : DomainRuleBasedMatchingExportingConfigS3Exporting.fromMap((map['s3Exporting'] as Map).cast<String, dynamic>()),
    );
  }
}

