// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../usage_plan_api_stage/usage_plan_api_stage.dart';
import '../usage_plan_quota_settings/usage_plan_quota_settings.dart';
import '../usage_plan_throttle_settings/usage_plan_throttle_settings.dart';

/// The set of arguments for UsagePlan.
class UsagePlanArgs {
  /// Associated API stages of the usage plan.
  final pulumi.Input<List<UsagePlanApiStage>>? apiStages;

  /// Description of a usage plan.
  final pulumi.Input<String>? description;

  /// Name of the usage plan.
  final pulumi.Input<String>? name;

  /// AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  final pulumi.Input<String>? productCode;

  /// The quota settings of the usage plan.
  final pulumi.Input<UsagePlanQuotaSettings>? quotaSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The throttling limits of the usage plan.
  final pulumi.Input<UsagePlanThrottleSettings>? throttleSettings;

  UsagePlanArgs({
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
    final map = <String, dynamic>{};
    final apiStagesValue = apiStages;
    if (apiStagesValue != null) {
      map['apiStages'] = pulumi.Input.mapOptionalInputValue<
              List<UsagePlanApiStage>, List<Map<String, dynamic>>>(
          apiStagesValue,
          (value) =>
              pulumi.Input.encodeList<UsagePlanApiStage, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final productCodeValue = productCode;
    if (productCodeValue != null) {
      map['productCode'] = productCodeValue;
    }
    final quotaSettingsValue = quotaSettings;
    if (quotaSettingsValue != null) {
      map['quotaSettings'] = pulumi.Input.mapOptionalInputValue<
          UsagePlanQuotaSettings,
          Map<String, dynamic>>(quotaSettingsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final throttleSettingsValue = throttleSettings;
    if (throttleSettingsValue != null) {
      map['throttleSettings'] = pulumi.Input.mapOptionalInputValue<
              UsagePlanThrottleSettings, Map<String, dynamic>>(
          throttleSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory UsagePlanArgs.fromMap(Map<String, dynamic> map) {
    return UsagePlanArgs(
      apiStages: pulumi.Input.asOptionalInput<List<UsagePlanApiStage>>(
          map['apiStages']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      productCode: pulumi.Input.asOptionalInput<String>(map['productCode']),
      quotaSettings: pulumi.Input.asOptionalInput<UsagePlanQuotaSettings>(
          map['quotaSettings']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      throttleSettings: pulumi.Input.asOptionalInput<UsagePlanThrottleSettings>(
          map['throttleSettings']),
    );
  }
}
