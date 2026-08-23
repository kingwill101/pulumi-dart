// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_api_stage.dart';
import 'usage_plan_quota_settings.dart';
import 'usage_plan_throttle_settings.dart';

/// {@template pulumi_apigateway_usage_plan_usage_plan_args_doc}
/// The set of arguments for UsagePlan.
/// {@endtemplate}
/// {@macro pulumi_apigateway_usage_plan_usage_plan_args_doc}
class UsagePlanArgs {
  /// Associated API stages of the usage plan. See `apiStages` Block below.
  final pulumi.Input<List<UsagePlanApiStage>>? apiStages;
  /// Description of a usage plan.
  final pulumi.Input<String>? description;
  /// Name of the usage plan.
  final pulumi.Input<String>? name;
  /// AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  final pulumi.Input<String>? productCode;
  /// Quota settings of the usage plan. See `quotaSettings` Block below.
  final pulumi.Input<UsagePlanQuotaSettings>? quotaSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Throttling limits of the usage plan. See `throttleSettings` Block below.
  final pulumi.Input<UsagePlanThrottleSettings>? throttleSettings;

  /// Creates a new [UsagePlanArgs].
  /// [apiStages] Associated API stages of the usage plan. See `apiStages` Block below.
  /// [description] Description of a usage plan.
  /// [name] Name of the usage plan.
  /// [productCode] AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  /// [quotaSettings] Quota settings of the usage plan. See `quotaSettings` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throttleSettings] Throttling limits of the usage plan. See `throttleSettings` Block below.
  const UsagePlanArgs({
    this.apiStages,
    this.description,
    this.name,
    this.productCode,
    this.quotaSettings,
    this.region,
    this.tags,
    this.throttleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiStages': ?pulumi.Input.mapOptionalInputValue<List<UsagePlanApiStage>, List<Map<String, dynamic>>>(apiStages, (value) => pulumi.Input.encodeList<UsagePlanApiStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'productCode': ?productCode,
      'quotaSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanQuotaSettings, Map<String, dynamic>>(quotaSettings, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'throttleSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanThrottleSettings, Map<String, dynamic>>(throttleSettings, (value) => value.toMap()),
    };
  }

  factory UsagePlanArgs.fromMap(Map<String, dynamic> map) {
    return UsagePlanArgs(
      apiStages: (() { final guardedValue = map['apiStages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UsagePlanApiStage>(guardedValue, (value) => UsagePlanApiStage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaSettings: (() { final guardedValue = map['quotaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsagePlanQuotaSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throttleSettings: (() { final guardedValue = map['throttleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsagePlanThrottleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
