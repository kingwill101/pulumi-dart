// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionConfigurationDistributionLaunchTemplateConfiguration {
  /// The account ID that this configuration applies to.
  final pulumi.Input<String> accountId;
  /// Whether the specified Amazon EC2 launch template is set as the default launch template.
  final pulumi.Input<bool> default_;
  /// ID of the Amazon EC2 launch template.
  final pulumi.Input<String> launchTemplateId;

  /// Creates a new [GetDistributionConfigurationDistributionLaunchTemplateConfiguration].
  /// [accountId] The account ID that this configuration applies to.
  /// [default_] Whether the specified Amazon EC2 launch template is set as the default launch template.
  /// [launchTemplateId] ID of the Amazon EC2 launch template.
  const GetDistributionConfigurationDistributionLaunchTemplateConfiguration({
    required this.accountId,
    required this.default_,
    required this.launchTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'default': default_,
      'launchTemplateId': launchTemplateId,
    };
  }

  factory GetDistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionLaunchTemplateConfiguration(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      default_: pulumi.Input.fromValue(map['default'] as bool),
      launchTemplateId: pulumi.Input.fromValue(map['launchTemplateId'] as String),
    );
  }
}
