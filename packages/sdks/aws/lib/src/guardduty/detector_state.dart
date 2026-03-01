// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_datasources.dart';

/// Input properties used for looking up and filtering Detector resources.
class DetectorState {
  /// The AWS account ID of the GuardDuty detector
  final pulumi.Input<String>? accountId;
  /// Amazon Resource Name (ARN) of the GuardDuty detector
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DetectorState].
  /// [accountId] The AWS account ID of the GuardDuty detector
  /// [arn] Amazon Resource Name (ARN) of the GuardDuty detector
  /// [datasources] Describes which data sources will be enabled for the detector. See Data Sources below for more details. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.DetectorFeature` resources.
  /// [enable] Enable monitoring and feedback reporting. Setting to `false` is equivalent to "suspending" GuardDuty. Defaults to `true`.
  /// [findingPublishingFrequency] Specifies the frequency of notifications sent for subsequent finding occurrences. If the detector is a GuardDuty member account, the value is determined by the GuardDuty primary account and cannot be modified, otherwise defaults to `SIX_HOURS`. For standalone and GuardDuty primary accounts, it must be configured in this provider to enable drift detection. Valid values for standalone and primary accounts: `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`. See [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings_cloudwatch.html#guardduty_findings_cloudwatch_notification_frequency) for more information.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DetectorState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? arn,
    pulumi.Output<DetectorDatasources>? datasources,
    pulumi.Output<bool>? enable,
    pulumi.Output<String>? findingPublishingFrequency,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      datasources = pulumi.Input.asOptionalInput<DetectorDatasources>(datasources),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      findingPublishingFrequency = pulumi.Input.asOptionalInput<String>(findingPublishingFrequency),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'datasources': ?pulumi.Input.mapOptionalInputValue<DetectorDatasources, Map<String, dynamic>>(datasources, (value) => value.toMap()),
      'enable': ?enable,
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DetectorState.fromMap(Map<String, dynamic> map) {
    return DetectorState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      datasources: map['datasources'] == null ? null : pulumi.Output.create<DetectorDatasources>(DetectorDatasources.fromMap((map['datasources'] as Map).cast<String, dynamic>())),
      enable: map['enable'] == null ? null : pulumi.Output.create<bool>(map['enable'] as bool),
      findingPublishingFrequency: map['findingPublishingFrequency'] == null ? null : pulumi.Output.create<String>(map['findingPublishingFrequency'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

