// ignore_for_file: unused_element, unnecessary_cast

class DistributionConfigurationDistributionLaunchTemplateConfiguration {
  /// The account ID that this configuration applies to.
  final String? accountId;

  /// Indicates whether to set the specified Amazon EC2 launch template as the default launch template. Defaults to `true`.
  final bool? default_;

  /// The ID of the Amazon EC2 launch template to use.
  final String launchTemplateId;

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
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final default_Value = default_;
    if (default_Value != null) {
      map['default'] = default_Value;
    }
    map['launchTemplateId'] = launchTemplateId;
    return map;
  }

  factory DistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DistributionConfigurationDistributionLaunchTemplateConfiguration(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      default_: map['default'] == null ? null : map['default'] as bool,
      launchTemplateId: map['launchTemplateId'] as String,
    );
  }
}
