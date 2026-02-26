// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../usage_plan_api_stage/usage_plan_api_stage.dart';
import '../usage_plan_quota_settings/usage_plan_quota_settings.dart';
import '../usage_plan_throttle_settings/usage_plan_throttle_settings.dart';

/// The set of arguments for UsagePlan.
class UsagePlanArgs {
  /// Associated API stages of the usage plan.
  final Input<List<UsagePlanApiStage>>? apiStages;

  /// Description of a usage plan.
  final Input<String>? description;

  /// Name of the usage plan.
  final Input<String>? name;

  /// AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  final Input<String>? productCode;

  /// The quota settings of the usage plan.
  final Input<UsagePlanQuotaSettings>? quotaSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The throttling limits of the usage plan.
  final Input<UsagePlanThrottleSettings>? throttleSettings;

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
      map['apiStages'] = Input.mapOptionalInputValue<List<UsagePlanApiStage>,
              List<Map<String, dynamic>>>(
          apiStagesValue,
          (value) => Input.encodeList<UsagePlanApiStage, Map<String, dynamic>>(
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
      map['quotaSettings'] = Input.mapOptionalInputValue<UsagePlanQuotaSettings,
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
      map['throttleSettings'] = Input.mapOptionalInputValue<
              UsagePlanThrottleSettings, Map<String, dynamic>>(
          throttleSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory UsagePlanArgs.fromMap(Map<String, dynamic> map) {
    return UsagePlanArgs(
      apiStages:
          Input.asOptionalInput<List<UsagePlanApiStage>>(map['apiStages']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      productCode: Input.asOptionalInput<String>(map['productCode']),
      quotaSettings:
          Input.asOptionalInput<UsagePlanQuotaSettings>(map['quotaSettings']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      throttleSettings: Input.asOptionalInput<UsagePlanThrottleSettings>(
          map['throttleSettings']),
    );
  }
}
