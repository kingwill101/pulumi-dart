// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_rule_based_matching_exporting_config_s3_exporting.dart';

class DomainRuleBasedMatchingExportingConfig {
  final pulumi.Input<DomainRuleBasedMatchingExportingConfigS3Exporting>? s3Exporting;

  /// Creates a new [DomainRuleBasedMatchingExportingConfig].
  /// [s3Exporting] Optional.
  const DomainRuleBasedMatchingExportingConfig({
    this.s3Exporting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Exporting': ?pulumi.Input.mapOptionalInputValue<DomainRuleBasedMatchingExportingConfigS3Exporting, Map<String, dynamic>>(s3Exporting, (value) => value.toMap()),
    };
  }

  factory DomainRuleBasedMatchingExportingConfig.fromMap(Map<String, dynamic> map) {
    return DomainRuleBasedMatchingExportingConfig(
      s3Exporting: (() { final guardedValue = map['s3Exporting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainRuleBasedMatchingExportingConfigS3Exporting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
