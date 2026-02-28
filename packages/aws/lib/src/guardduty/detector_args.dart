// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_datasources.dart';

/// {@template pulumi_guardduty_detector_detector_args_doc}
/// The set of arguments for Detector.
/// {@endtemplate}
/// {@macro pulumi_guardduty_detector_detector_args_doc}
class DetectorArgs {
  /// Describes which data sources will be enabled for the detector. See Data Sources below for more details. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.DetectorFeature` resources.
  final pulumi.Input<DetectorDatasources>? datasources;

  /// Enable monitoring and feedback reporting. Setting to `false` is equivalent to "suspending" GuardDuty. Defaults to `true`.
  final pulumi.Input<bool>? enable;

  /// Specifies the frequency of notifications sent for subsequent finding occurrences. If the detector is a GuardDuty member account, the value is determined by the GuardDuty primary account and cannot be modified, otherwise defaults to `SIX_HOURS`. For standalone and GuardDuty primary accounts, it must be configured in this provider to enable drift detection. Valid values for standalone and primary accounts: `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`. See [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings_cloudwatch.html#guardduty_findings_cloudwatch_notification_frequency) for more information.
  final pulumi.Input<String>? findingPublishingFrequency;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DetectorArgs].
  /// [datasources] Describes which data sources will be enabled for the detector. See Data Sources below for more details. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.DetectorFeature` resources.
  /// [enable] Enable monitoring and feedback reporting. Setting to `false` is equivalent to "suspending" GuardDuty. Defaults to `true`.
  /// [findingPublishingFrequency] Specifies the frequency of notifications sent for subsequent finding occurrences. If the detector is a GuardDuty member account, the value is determined by the GuardDuty primary account and cannot be modified, otherwise defaults to `SIX_HOURS`. For standalone and GuardDuty primary accounts, it must be configured in this provider to enable drift detection. Valid values for standalone and primary accounts: `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`. See [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings_cloudwatch.html#guardduty_findings_cloudwatch_notification_frequency) for more information.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DetectorArgs({
    DetectorDatasources? datasources,
    bool? enable,
    String? findingPublishingFrequency,
    String? region,
    Map<String, String>? tags,
  })  : datasources =
            pulumi.Input.asOptionalInput<DetectorDatasources>(datasources),
        enable = pulumi.Input.asOptionalInput<bool>(enable),
        findingPublishingFrequency =
            pulumi.Input.asOptionalInput<String>(findingPublishingFrequency),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasourcesValue = datasources;
    if (datasourcesValue != null) {
      map['datasources'] = pulumi.Input.mapOptionalInputValue<
          DetectorDatasources,
          Map<String, dynamic>>(datasourcesValue, (value) => value.toMap());
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final findingPublishingFrequencyValue = findingPublishingFrequency;
    if (findingPublishingFrequencyValue != null) {
      map['findingPublishingFrequency'] = findingPublishingFrequencyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DetectorArgs.fromMap(Map<String, dynamic> map) {
    return DetectorArgs(
      datasources: map['datasources'] == null
          ? null
          : DetectorDatasources.fromMap(
              (map['datasources'] as Map).cast<String, dynamic>()),
      enable: map['enable'] == null ? null : map['enable'] as bool,
      findingPublishingFrequency: map['findingPublishingFrequency'] == null
          ? null
          : map['findingPublishingFrequency'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
