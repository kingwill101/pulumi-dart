// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_capacity_settings.dart';
import 'deployment_model.dart';
import 'deployment_scale_settings.dart';

/// Properties of Cognitive Services account deployment.
class DeploymentProperties {
  /// Internal use only.
  final pulumi.Input<DeploymentCapacitySettings?>? capacitySettings;
  /// The current capacity.
  final pulumi.Input<int?>? currentCapacity;
  /// Properties of Cognitive Services account deployment model.
  final pulumi.Input<DeploymentModel?>? model;
  /// The name of parent deployment.
  final pulumi.Input<String?>? parentDeploymentName;
  /// The name of RAI policy.
  final pulumi.Input<String?>? raiPolicyName;
  /// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  final pulumi.Input<DeploymentScaleSettings?>? scaleSettings;
  /// Specifies the deployment name that should serve requests when the request would have otherwise been throttled due to reaching current deployment throughput limit.
  final pulumi.Input<String?>? spilloverDeploymentName;
  /// Deployment model version upgrade option.
  final pulumi.Input<dynamic>? versionUpgradeOption;

  /// Creates a new [DeploymentProperties].
  /// [capacitySettings] Internal use only.
  /// [currentCapacity] The current capacity.
  /// [model] Properties of Cognitive Services account deployment model.
  /// [parentDeploymentName] The name of parent deployment.
  /// [raiPolicyName] The name of RAI policy.
  /// [scaleSettings] Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  /// [spilloverDeploymentName] Specifies the deployment name that should serve requests when the request would have otherwise been throttled due to reaching current deployment throughput limit.
  /// [versionUpgradeOption] Deployment model version upgrade option.
  const DeploymentProperties({
    this.capacitySettings,
    this.currentCapacity,
    this.model,
    this.parentDeploymentName,
    this.raiPolicyName,
    this.scaleSettings,
    this.spilloverDeploymentName,
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
      'spilloverDeploymentName': ?spilloverDeploymentName,
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory DeploymentProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentProperties(
      capacitySettings: (() { final guardedValue = map['capacitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentCapacitySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currentCapacity: (() { final guardedValue = map['currentCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentDeploymentName: (() { final guardedValue = map['parentDeploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      raiPolicyName: (() { final guardedValue = map['raiPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleSettings: (() { final guardedValue = map['scaleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentScaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spilloverDeploymentName: (() { final guardedValue = map['spilloverDeploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionUpgradeOption: (() { final guardedValue = map['versionUpgradeOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
