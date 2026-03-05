// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_install_options_response.dart';
import 'helm_upgrade_options_response.dart';

/// The helm deployment options
class HelmMappingRuleProfileResponseOptions {
  /// The helm deployment install options
  final pulumi.Input<HelmInstallOptionsResponse>? installOptions;
  /// The helm deployment upgrade options
  final pulumi.Input<HelmUpgradeOptionsResponse>? upgradeOptions;

  /// Creates a new [HelmMappingRuleProfileResponseOptions].
  /// [installOptions] The helm deployment install options
  /// [upgradeOptions] The helm deployment upgrade options
  HelmMappingRuleProfileResponseOptions({
    this.installOptions,
    this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installOptions': ?pulumi.Input.mapOptionalInputValue<HelmInstallOptionsResponse, Map<String, dynamic>>(installOptions, (value) => value.toMap()),
      'upgradeOptions': ?pulumi.Input.mapOptionalInputValue<HelmUpgradeOptionsResponse, Map<String, dynamic>>(upgradeOptions, (value) => value.toMap()),
    };
  }

  factory HelmMappingRuleProfileResponseOptions.fromMap(Map<String, dynamic> map) {
    return HelmMappingRuleProfileResponseOptions(
      installOptions: (() { final guardedValue = map['installOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HelmInstallOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgradeOptions: (() { final guardedValue = map['upgradeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HelmUpgradeOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

