// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration setting of LCM (Local Configuration Manager).
class ConfigurationSettingResponse {
  /// Specifies what happens after a reboot during the application of a configuration. The possible values are ContinueConfiguration and StopConfiguration
  final pulumi.Input<String> actionAfterReboot;
  /// If true - new configurations downloaded from the pull service are allowed to overwrite the old ones on the target node. Otherwise, false
  final pulumi.Input<bool> allowModuleOverwrite;
  /// Specifies how the LCM(Local Configuration Manager) actually applies the configuration to the target nodes. Possible values are ApplyOnly, ApplyAndMonitor, and ApplyAndAutoCorrect.
  final pulumi.Input<String> configurationMode;
  /// How often, in minutes, the current configuration is checked and applied. This property is ignored if the ConfigurationMode property is set to ApplyOnly. The default value is 15.
  final pulumi.Input<double> configurationModeFrequencyMins;
  /// Set this to true to automatically reboot the node after a configuration that requires reboot is applied. Otherwise, you will have to manually reboot the node for any configuration that requires it. The default value is false. To use this setting when a reboot condition is enacted by something other than DSC (such as Windows Installer), combine this setting with the xPendingReboot module.
  final pulumi.Input<bool> rebootIfNeeded;
  /// The time interval, in minutes, at which the LCM checks a pull service to get updated configurations. This value is ignored if the LCM is not configured in pull mode. The default value is 30.
  final pulumi.Input<double> refreshFrequencyMins;

  /// Creates a new [ConfigurationSettingResponse].
  /// [actionAfterReboot] Specifies what happens after a reboot during the application of a configuration. The possible values are ContinueConfiguration and StopConfiguration
  /// [allowModuleOverwrite] If true - new configurations downloaded from the pull service are allowed to overwrite the old ones on the target node. Otherwise, false
  /// [configurationMode] Specifies how the LCM(Local Configuration Manager) actually applies the configuration to the target nodes. Possible values are ApplyOnly, ApplyAndMonitor, and ApplyAndAutoCorrect.
  /// [configurationModeFrequencyMins] How often, in minutes, the current configuration is checked and applied. This property is ignored if the ConfigurationMode property is set to ApplyOnly. The default value is 15.
  /// [rebootIfNeeded] Set this to true to automatically reboot the node after a configuration that requires reboot is applied. Otherwise, you will have to manually reboot the node for any configuration that requires it. The default value is false. To use this setting when a reboot condition is enacted by something other than DSC (such as Windows Installer), combine this setting with the xPendingReboot module.
  /// [refreshFrequencyMins] The time interval, in minutes, at which the LCM checks a pull service to get updated configurations. This value is ignored if the LCM is not configured in pull mode. The default value is 30.
  const ConfigurationSettingResponse({
    required this.actionAfterReboot,
    required this.allowModuleOverwrite,
    required this.configurationMode,
    required this.configurationModeFrequencyMins,
    required this.rebootIfNeeded,
    required this.refreshFrequencyMins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionAfterReboot': actionAfterReboot,
      'allowModuleOverwrite': allowModuleOverwrite,
      'configurationMode': configurationMode,
      'configurationModeFrequencyMins': configurationModeFrequencyMins,
      'rebootIfNeeded': rebootIfNeeded,
      'refreshFrequencyMins': refreshFrequencyMins,
    };
  }

  factory ConfigurationSettingResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationSettingResponse(
      actionAfterReboot: pulumi.Input.fromValue(map['actionAfterReboot'] as String),
      allowModuleOverwrite: pulumi.Input.fromValue(map['allowModuleOverwrite'] as bool),
      configurationMode: pulumi.Input.fromValue(map['configurationMode'] as String),
      configurationModeFrequencyMins: pulumi.Input.fromValue(map['configurationModeFrequencyMins'] as double),
      rebootIfNeeded: pulumi.Input.fromValue(map['rebootIfNeeded'] as bool),
      refreshFrequencyMins: pulumi.Input.fromValue(map['refreshFrequencyMins'] as double),
    );
  }
}
