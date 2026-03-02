// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConfigurationDistributionLaunchTemplateConfiguration {
  /// The account ID that this configuration applies to.
  final pulumi.Input<String>? accountId;
  /// Indicates whether to set the specified Amazon EC2 launch template as the default launch template. Defaults to `true`.
  final pulumi.Input<bool>? default_;
  /// The ID of the Amazon EC2 launch template to use.
  final pulumi.Input<String> launchTemplateId;

  /// Creates a new [DistributionConfigurationDistributionLaunchTemplateConfiguration].
  /// [accountId] The account ID that this configuration applies to.
  /// [default_] Indicates whether to set the specified Amazon EC2 launch template as the default launch template. Defaults to `true`.
  /// [launchTemplateId] The ID of the Amazon EC2 launch template to use.
  DistributionConfigurationDistributionLaunchTemplateConfiguration({
    this.accountId,
    this.default_,
    required this.launchTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'default': ?default_,
      'launchTemplateId': launchTemplateId,
    };
  }

  factory DistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionLaunchTemplateConfiguration(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      default_: map['default'] == null ? null : ((map['default'] as bool).input()).input(),
      launchTemplateId: (map['launchTemplateId'] as String).input(),
    );
  }
}

