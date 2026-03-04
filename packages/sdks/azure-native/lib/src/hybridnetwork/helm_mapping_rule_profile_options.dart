// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_install_options.dart';
import 'helm_upgrade_options.dart';

/// The helm deployment options
class HelmMappingRuleProfileOptions {
  /// The helm deployment install options
  final pulumi.Input<HelmInstallOptions>? installOptions;

  /// The helm deployment upgrade options
  final pulumi.Input<HelmUpgradeOptions>? upgradeOptions;

  /// Creates a new [HelmMappingRuleProfileOptions].
  /// [installOptions] The helm deployment install options
  /// [upgradeOptions] The helm deployment upgrade options
  HelmMappingRuleProfileOptions({this.installOptions, this.upgradeOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installOptions':
          ?pulumi.Input.mapOptionalInputValue<
            HelmInstallOptions,
            Map<String, dynamic>
          >(installOptions, (value) => value.toMap()),
      'upgradeOptions':
          ?pulumi.Input.mapOptionalInputValue<
            HelmUpgradeOptions,
            Map<String, dynamic>
          >(upgradeOptions, (value) => value.toMap()),
    };
  }

  factory HelmMappingRuleProfileOptions.fromMap(Map<String, dynamic> map) {
    return HelmMappingRuleProfileOptions(
      installOptions: (() {
        final guardedValue = map['installOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HelmInstallOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      upgradeOptions: (() {
        final guardedValue = map['upgradeOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HelmUpgradeOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
