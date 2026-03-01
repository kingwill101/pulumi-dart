// ignore_for_file: unused_element, unnecessary_cast

import 'helm_install_options_response.dart';
import 'helm_upgrade_options_response.dart';

/// The helm deployment options
class HelmMappingRuleProfileResponseOptions {
  /// The helm deployment install options
  final HelmInstallOptionsResponse? installOptions;
  /// The helm deployment upgrade options
  final HelmUpgradeOptionsResponse? upgradeOptions;

  /// Creates a new [HelmMappingRuleProfileResponseOptions].
  /// [installOptions] The helm deployment install options
  /// [upgradeOptions] The helm deployment upgrade options
  HelmMappingRuleProfileResponseOptions({
    this.installOptions,
    this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installOptions': ?installOptions == null ? null : installOptions!.toMap(),
      'upgradeOptions': ?upgradeOptions == null ? null : upgradeOptions!.toMap(),
    };
  }

  factory HelmMappingRuleProfileResponseOptions.fromMap(Map<String, dynamic> map) {
    return HelmMappingRuleProfileResponseOptions(
      installOptions: map['installOptions'] == null ? null : HelmInstallOptionsResponse.fromMap((map['installOptions'] as Map).cast<String, dynamic>()),
      upgradeOptions: map['upgradeOptions'] == null ? null : HelmUpgradeOptionsResponse.fromMap((map['upgradeOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

