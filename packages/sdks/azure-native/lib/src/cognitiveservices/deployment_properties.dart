// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_capacity_settings.dart';
import 'deployment_model.dart';
import 'deployment_scale_settings.dart';

/// Properties of Cognitive Services account deployment.
class DeploymentProperties {
  /// Internal use only.
  final pulumi.Input<DeploymentCapacitySettings>? capacitySettings;
  /// The current capacity.
  final pulumi.Input<int>? currentCapacity;
  /// Properties of Cognitive Services account deployment model.
  final pulumi.Input<DeploymentModel>? model;
  /// The name of parent deployment.
  final pulumi.Input<String>? parentDeploymentName;
  /// The name of RAI policy.
  final pulumi.Input<String>? raiPolicyName;
  /// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  final pulumi.Input<DeploymentScaleSettings>? scaleSettings;
  /// Deployment model version upgrade option.
  final pulumi.Input<String>? versionUpgradeOption;

  /// Creates a new [DeploymentProperties].
  /// [capacitySettings] Internal use only.
  /// [currentCapacity] The current capacity.
  /// [model] Properties of Cognitive Services account deployment model.
  /// [parentDeploymentName] The name of parent deployment.
  /// [raiPolicyName] The name of RAI policy.
  /// [scaleSettings] Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  /// [versionUpgradeOption] Deployment model version upgrade option.
  DeploymentProperties({
    this.capacitySettings,
    this.currentCapacity,
    this.model,
    this.parentDeploymentName,
    this.raiPolicyName,
    this.scaleSettings,
    this.versionUpgradeOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacitySettings': ?pulumi.Input.mapOptionalInputValue<DeploymentCapacitySettings, Map<String, dynamic>>(capacitySettings, (value) => value.toMap()),
      'currentCapacity': ?currentCapacity,
      'model': ?pulumi.Input.mapOptionalInputValue<DeploymentModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'parentDeploymentName': ?parentDeploymentName,
      'raiPolicyName': ?raiPolicyName,
      'scaleSettings': ?pulumi.Input.mapOptionalInputValue<DeploymentScaleSettings, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory DeploymentProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentProperties(
      capacitySettings: map['capacitySettings'] == null ? null : (DeploymentCapacitySettings.fromMap((map['capacitySettings'] as Map).cast<String, dynamic>())).input(),
      currentCapacity: map['currentCapacity'] == null ? null : (map['currentCapacity'] as int).input(),
      model: map['model'] == null ? null : (DeploymentModel.fromMap((map['model'] as Map).cast<String, dynamic>())).input(),
      parentDeploymentName: map['parentDeploymentName'] == null ? null : (map['parentDeploymentName'] as String).input(),
      raiPolicyName: map['raiPolicyName'] == null ? null : (map['raiPolicyName'] as String).input(),
      scaleSettings: map['scaleSettings'] == null ? null : (DeploymentScaleSettings.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>())).input(),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : (map['versionUpgradeOption'] as String).input(),
    );
  }
}

