// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../detector_datasources/detector_datasources.dart';

/// The set of arguments for Detector.
class DetectorArgs {
  /// Describes which data sources will be enabled for the detector. See Data Sources below for more details. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of <span pulumi-lang-nodejs="`aws.guardduty.DetectorFeature`" pulumi-lang-dotnet="`aws.guardduty.DetectorFeature`" pulumi-lang-go="`guardduty.DetectorFeature`" pulumi-lang-python="`guardduty.DetectorFeature`" pulumi-lang-yaml="`aws.guardduty.DetectorFeature`" pulumi-lang-java="`aws.guardduty.DetectorFeature`">`aws.guardduty.DetectorFeature`</span> resources.
  final Input<DetectorDatasources>? datasources;

  /// Enable monitoring and feedback reporting. Setting to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> is equivalent to "suspending" GuardDuty. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enable;

  /// Specifies the frequency of notifications sent for subsequent finding occurrences. If the detector is a GuardDuty member account, the value is determined by the GuardDuty primary account and cannot be modified, otherwise defaults to `SIX_HOURS`. For standalone and GuardDuty primary accounts, it must be configured in this provider to enable drift detection. Valid values for standalone and primary accounts: `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`. See [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings_cloudwatch.html#guardduty_findings_cloudwatch_notification_frequency) for more information.
  final Input<String>? findingPublishingFrequency;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DetectorArgs({
    this.datasources,
    this.enable,
    this.findingPublishingFrequency,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasourcesValue = datasources;
    if (datasourcesValue != null) {
      map['datasources'] = Input.mapOptionalInputValue<DetectorDatasources,
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
      datasources:
          Input.asOptionalInput<DetectorDatasources>(map['datasources']),
      enable: Input.asOptionalInput<bool>(map['enable']),
      findingPublishingFrequency:
          Input.asOptionalInput<String>(map['findingPublishingFrequency']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
