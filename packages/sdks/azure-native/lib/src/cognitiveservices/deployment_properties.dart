// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_capacity_settings.dart';
import 'deployment_model.dart';
import 'deployment_scale_settings.dart';

/// Properties of Cognitive Services account deployment.
class DeploymentProperties {
  /// Internal use only.
  final DeploymentCapacitySettings? capacitySettings;
  /// The current capacity.
  final int? currentCapacity;
  /// Properties of Cognitive Services account deployment model.
  final DeploymentModel? model;
  /// The name of parent deployment.
  final String? parentDeploymentName;
  /// The name of RAI policy.
  final String? raiPolicyName;
  /// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  final DeploymentScaleSettings? scaleSettings;
  /// Deployment model version upgrade option.
  final String? versionUpgradeOption;

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
      'capacitySettings': ?capacitySettings == null ? null : capacitySettings!.toMap(),
      'currentCapacity': ?currentCapacity,
      'model': ?model == null ? null : model!.toMap(),
      'parentDeploymentName': ?parentDeploymentName,
      'raiPolicyName': ?raiPolicyName,
      'scaleSettings': ?scaleSettings == null ? null : scaleSettings!.toMap(),
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory DeploymentProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentProperties(
      capacitySettings: map['capacitySettings'] == null ? null : DeploymentCapacitySettings.fromMap((map['capacitySettings'] as Map).cast<String, dynamic>()),
      currentCapacity: map['currentCapacity'] == null ? null : map['currentCapacity'] as int,
      model: map['model'] == null ? null : DeploymentModel.fromMap((map['model'] as Map).cast<String, dynamic>()),
      parentDeploymentName: map['parentDeploymentName'] == null ? null : map['parentDeploymentName'] as String,
      raiPolicyName: map['raiPolicyName'] == null ? null : map['raiPolicyName'] as String,
      scaleSettings: map['scaleSettings'] == null ? null : DeploymentScaleSettings.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>()),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : map['versionUpgradeOption'] as String,
    );
  }
}

