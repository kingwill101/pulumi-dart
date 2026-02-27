// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Application.
class ApplicationArgs2 {
  /// Indicates whether Application Insights automatically configures unmonitored resources in the resource group.
  final Input<bool>? autoConfigEnabled;

  /// Configures all of the resources in the resource group by applying the recommended configurations.
  final Input<bool>? autoCreate;

  /// Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  final Input<bool>? cweMonitorEnabled;

  /// Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  final Input<String>? groupingType;

  /// When set to `true`, creates opsItems for any problems detected on an application.
  final Input<bool>? opsCenterEnabled;

  /// SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  final Input<String>? opsItemSnsTopicArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the resource group.
  ///
  /// The following arguments are optional:
  final Input<String> resourceGroupName;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ApplicationArgs2({
    this.autoConfigEnabled,
    this.autoCreate,
    this.cweMonitorEnabled,
    this.groupingType,
    this.opsCenterEnabled,
    this.opsItemSnsTopicArn,
    this.region,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoConfigEnabledValue = autoConfigEnabled;
    if (autoConfigEnabledValue != null) {
      map['autoConfigEnabled'] = autoConfigEnabledValue;
    }
    final autoCreateValue = autoCreate;
    if (autoCreateValue != null) {
      map['autoCreate'] = autoCreateValue;
    }
    final cweMonitorEnabledValue = cweMonitorEnabled;
    if (cweMonitorEnabledValue != null) {
      map['cweMonitorEnabled'] = cweMonitorEnabledValue;
    }
    final groupingTypeValue = groupingType;
    if (groupingTypeValue != null) {
      map['groupingType'] = groupingTypeValue;
    }
    final opsCenterEnabledValue = opsCenterEnabled;
    if (opsCenterEnabledValue != null) {
      map['opsCenterEnabled'] = opsCenterEnabledValue;
    }
    final opsItemSnsTopicArnValue = opsItemSnsTopicArn;
    if (opsItemSnsTopicArnValue != null) {
      map['opsItemSnsTopicArn'] = opsItemSnsTopicArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceGroupName'] = resourceGroupName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ApplicationArgs2.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs2(
      autoConfigEnabled: Input.asOptionalInput<bool>(map['autoConfigEnabled']),
      autoCreate: Input.asOptionalInput<bool>(map['autoCreate']),
      cweMonitorEnabled: Input.asOptionalInput<bool>(map['cweMonitorEnabled']),
      groupingType: Input.asOptionalInput<String>(map['groupingType']),
      opsCenterEnabled: Input.asOptionalInput<bool>(map['opsCenterEnabled']),
      opsItemSnsTopicArn:
          Input.asOptionalInput<String>(map['opsItemSnsTopicArn']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceGroupName: Input.asInput<String>(map['resourceGroupName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
