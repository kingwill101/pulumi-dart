// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_application_application_args_doc}
class ApplicationArgs {
  /// Whether to automatically configure unmonitored resources in the resource group.
  final pulumi.Input<bool?>? autoConfigEnabled;
  /// Configures all of the resources in the resource group by applying the recommended configurations.
  final pulumi.Input<bool?>? autoCreate;
  /// Whether to enable Application Insights to listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  final pulumi.Input<bool?>? cweMonitorEnabled;
  /// Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  final pulumi.Input<String?>? groupingType;
  /// When set to `true`, creates opsItems for any problems detected on an application.
  final pulumi.Input<bool?>? opsCenterEnabled;
  /// SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  final pulumi.Input<String?>? opsItemSnsTopicArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the resource group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceGroupName;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ApplicationArgs].
  /// [autoConfigEnabled] Whether to automatically configure unmonitored resources in the resource group.
  /// [autoCreate] Configures all of the resources in the resource group by applying the recommended configurations.
  /// [cweMonitorEnabled] Whether to enable Application Insights to listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  /// [groupingType] Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  /// [opsCenterEnabled] When set to `true`, creates opsItems for any problems detected on an application.
  /// [opsItemSnsTopicArn] SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceGroupName] Name of the resource group.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ApplicationArgs({
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
    return <String, dynamic>{
      'autoConfigEnabled': ?autoConfigEnabled,
      'autoCreate': ?autoCreate,
      'cweMonitorEnabled': ?cweMonitorEnabled,
      'groupingType': ?groupingType,
      'opsCenterEnabled': ?opsCenterEnabled,
      'opsItemSnsTopicArn': ?opsItemSnsTopicArn,
      'region': ?region,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      autoConfigEnabled: (() { final guardedValue = map['autoConfigEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoCreate: (() { final guardedValue = map['autoCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cweMonitorEnabled: (() { final guardedValue = map['cweMonitorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupingType: (() { final guardedValue = map['groupingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opsCenterEnabled: (() { final guardedValue = map['opsCenterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      opsItemSnsTopicArn: (() { final guardedValue = map['opsItemSnsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
