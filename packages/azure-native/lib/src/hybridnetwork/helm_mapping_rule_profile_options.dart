// ignore_for_file: unused_element, unnecessary_cast

import 'helm_install_options.dart';
import 'helm_upgrade_options.dart';

/// The helm deployment options
class HelmMappingRuleProfileOptions {
  /// The helm deployment install options
  final HelmInstallOptions? installOptions;
  /// The helm deployment upgrade options
  final HelmUpgradeOptions? upgradeOptions;

  /// Creates a new [HelmMappingRuleProfileOptions].
  /// [installOptions] The helm deployment install options
  /// [upgradeOptions] The helm deployment upgrade options
  HelmMappingRuleProfileOptions({
    this.installOptions,
    this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installOptions': ?installOptions == null ? null : installOptions!.toMap(),
      'upgradeOptions': ?upgradeOptions == null ? null : upgradeOptions!.toMap(),
    };
  }

  factory HelmMappingRuleProfileOptions.fromMap(Map<String, dynamic> map) {
    return HelmMappingRuleProfileOptions(
      installOptions: map['installOptions'] == null ? null : HelmInstallOptions.fromMap((map['installOptions'] as Map).cast<String, dynamic>()),
      upgradeOptions: map['upgradeOptions'] == null ? null : HelmUpgradeOptions.fromMap((map['upgradeOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

