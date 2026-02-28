// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionConfigurationDistributionLaunchTemplateConfiguration {
  /// The account ID that this configuration applies to.
  final String accountId;

  /// Whether the specified Amazon EC2 launch template is set as the default launch template.
  final bool default_;

  /// ID of the Amazon EC2 launch template.
  final String launchTemplateId;

  /// Creates a new [GetDistributionConfigurationDistributionLaunchTemplateConfiguration].
  /// [accountId] The account ID that this configuration applies to.
  /// [default_] Whether the specified Amazon EC2 launch template is set as the default launch template.
  /// [launchTemplateId] ID of the Amazon EC2 launch template.
  GetDistributionConfigurationDistributionLaunchTemplateConfiguration({
    required this.accountId,
    required this.default_,
    required this.launchTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['default'] = default_;
    map['launchTemplateId'] = launchTemplateId;
    return map;
  }

  factory GetDistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionLaunchTemplateConfiguration(
      accountId: map['accountId'] as String,
      default_: map['default'] as bool,
      launchTemplateId: map['launchTemplateId'] as String,
    );
  }
}
