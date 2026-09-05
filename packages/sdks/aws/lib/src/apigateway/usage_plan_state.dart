// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_api_stage.dart';
import 'usage_plan_quota_settings.dart';
import 'usage_plan_throttle_settings.dart';

/// Input properties used for looking up and filtering UsagePlan resources.
class UsagePlanState {
  /// Associated API stages of the usage plan. See `apiStages` Block below.
  final pulumi.Input<List<UsagePlanApiStage>?>? apiStages;
  /// ARN of the usage plan.
  final pulumi.Input<String?>? arn;
  /// Description of a usage plan.
  final pulumi.Input<String?>? description;
  /// Name of the usage plan.
  final pulumi.Input<String?>? name;
  /// AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  final pulumi.Input<String?>? productCode;
  /// Quota settings of the usage plan. See `quotaSettings` Block below.
  final pulumi.Input<UsagePlanQuotaSettings?>? quotaSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Throttling limits of the usage plan. See `throttleSettings` Block below.
  final pulumi.Input<UsagePlanThrottleSettings?>? throttleSettings;

  /// Creates a new [UsagePlanState].
  /// [apiStages] Associated API stages of the usage plan. See `apiStages` Block below.
  /// [arn] ARN of the usage plan.
  /// [description] Description of a usage plan.
  /// [name] Name of the usage plan.
  /// [productCode] AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  /// [quotaSettings] Quota settings of the usage plan. See `quotaSettings` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [throttleSettings] Throttling limits of the usage plan. See `throttleSettings` Block below.
  const UsagePlanState({
    this.apiStages,
    this.arn,
    this.description,
    this.name,
    this.productCode,
    this.quotaSettings,
    this.region,
    this.tags,
    this.tagsAll,
    this.throttleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiStages': ?pulumi.Input.mapOptionalInputValue<List<UsagePlanApiStage>, List<Map<String, dynamic>>>(apiStages, (value) => pulumi.Input.encodeList<UsagePlanApiStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'productCode': ?productCode,
      'quotaSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanQuotaSettings, Map<String, dynamic>>(quotaSettings, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'throttleSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanThrottleSettings, Map<String, dynamic>>(throttleSettings, (value) => value.toMap()),
    };
  }

  factory UsagePlanState.fromMap(Map<String, dynamic> map) {
    return UsagePlanState(
      apiStages: (() { final guardedValue = map['apiStages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UsagePlanApiStage>(guardedValue, (value) => UsagePlanApiStage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaSettings: (() { final guardedValue = map['quotaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsagePlanQuotaSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throttleSettings: (() { final guardedValue = map['throttleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsagePlanThrottleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
