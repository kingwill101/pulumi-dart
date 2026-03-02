// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// ARN of the Application.
  final pulumi.Input<String>? arn;
  /// Indicates whether Application Insights automatically configures unmonitored resources in the resource group.
  final pulumi.Input<bool>? autoConfigEnabled;
  /// Configures all of the resources in the resource group by applying the recommended configurations.
  final pulumi.Input<bool>? autoCreate;
  /// Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  final pulumi.Input<bool>? cweMonitorEnabled;
  /// Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  final pulumi.Input<String>? groupingType;
  /// When set to `true`, creates opsItems for any problems detected on an application.
  final pulumi.Input<bool>? opsCenterEnabled;
  /// SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  final pulumi.Input<String>? opsItemSnsTopicArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the resource group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? resourceGroupName;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ApplicationState].
  /// [arn] ARN of the Application.
  /// [autoConfigEnabled] Indicates whether Application Insights automatically configures unmonitored resources in the resource group.
  /// [autoCreate] Configures all of the resources in the resource group by applying the recommended configurations.
  /// [cweMonitorEnabled] Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  /// [groupingType] Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  /// [opsCenterEnabled] When set to `true`, creates opsItems for any problems detected on an application.
  /// [opsItemSnsTopicArn] SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceGroupName] Name of the resource group.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ApplicationState({
    this.arn,
    this.autoConfigEnabled,
    this.autoCreate,
    this.cweMonitorEnabled,
    this.groupingType,
    this.opsCenterEnabled,
    this.opsItemSnsTopicArn,
    this.region,
    this.resourceGroupName,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoConfigEnabled': ?autoConfigEnabled,
      'autoCreate': ?autoCreate,
      'cweMonitorEnabled': ?cweMonitorEnabled,
      'groupingType': ?groupingType,
      'opsCenterEnabled': ?opsCenterEnabled,
      'opsItemSnsTopicArn': ?opsItemSnsTopicArn,
      'region': ?region,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      autoConfigEnabled: map['autoConfigEnabled'] == null ? null : (map['autoConfigEnabled'] as bool).input(),
      autoCreate: map['autoCreate'] == null ? null : (map['autoCreate'] as bool).input(),
      cweMonitorEnabled: map['cweMonitorEnabled'] == null ? null : (map['cweMonitorEnabled'] as bool).input(),
      groupingType: map['groupingType'] == null ? null : (map['groupingType'] as String).input(),
      opsCenterEnabled: map['opsCenterEnabled'] == null ? null : (map['opsCenterEnabled'] as bool).input(),
      opsItemSnsTopicArn: map['opsItemSnsTopicArn'] == null ? null : (map['opsItemSnsTopicArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

