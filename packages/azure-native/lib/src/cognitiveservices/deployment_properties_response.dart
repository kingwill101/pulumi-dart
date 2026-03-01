// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'call_rate_limit_response.dart';
import 'deployment_capacity_settings_response.dart';
import 'deployment_model_response.dart';
import 'deployment_scale_settings_response.dart';
import 'throttling_rule_response.dart';

/// Properties of Cognitive Services account deployment.
class DeploymentPropertiesResponse {
  /// The call rate limit Cognitive Services account.
  final CallRateLimitResponse callRateLimit;
  /// The capabilities.
  final Map<String, String> capabilities;
  /// Internal use only.
  final DeploymentCapacitySettingsResponse? capacitySettings;
  /// The current capacity.
  final int? currentCapacity;
  /// If the dynamic throttling is enabled.
  final bool dynamicThrottlingEnabled;
  /// Properties of Cognitive Services account deployment model.
  final DeploymentModelResponse? model;
  /// The name of parent deployment.
  final String? parentDeploymentName;
  /// Gets the status of the resource at the time the operation was called.
  final String provisioningState;
  /// The name of RAI policy.
  final String? raiPolicyName;
  final List<ThrottlingRuleResponse> rateLimits;
  /// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  final DeploymentScaleSettingsResponse? scaleSettings;
  /// Deployment model version upgrade option.
  final String? versionUpgradeOption;

  /// Creates a new [DeploymentPropertiesResponse].
  /// [callRateLimit] The call rate limit Cognitive Services account.
  /// [capabilities] The capabilities.
  /// [capacitySettings] Internal use only.
  /// [currentCapacity] The current capacity.
  /// [dynamicThrottlingEnabled] If the dynamic throttling is enabled.
  /// [model] Properties of Cognitive Services account deployment model.
  /// [parentDeploymentName] The name of parent deployment.
  /// [provisioningState] Gets the status of the resource at the time the operation was called.
  /// [raiPolicyName] The name of RAI policy.
  /// [rateLimits] Required.
  /// [scaleSettings] Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  /// [versionUpgradeOption] Deployment model version upgrade option.
  DeploymentPropertiesResponse({
    required this.callRateLimit,
    required this.capabilities,
    this.capacitySettings,
    this.currentCapacity,
    required this.dynamicThrottlingEnabled,
    this.model,
    this.parentDeploymentName,
    required this.provisioningState,
    this.raiPolicyName,
    required this.rateLimits,
    this.scaleSettings,
    this.versionUpgradeOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callRateLimit': callRateLimit.toMap(),
      'capabilities': capabilities,
      'capacitySettings': ?capacitySettings == null ? null : capacitySettings!.toMap(),
      'currentCapacity': ?currentCapacity,
      'dynamicThrottlingEnabled': dynamicThrottlingEnabled,
      'model': ?model == null ? null : model!.toMap(),
      'parentDeploymentName': ?parentDeploymentName,
      'provisioningState': provisioningState,
      'raiPolicyName': ?raiPolicyName,
      'rateLimits': pulumi.Input.encodeList<ThrottlingRuleResponse, Map<String, dynamic>>(rateLimits, (value) => value.toMap()),
      'scaleSettings': ?scaleSettings == null ? null : scaleSettings!.toMap(),
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory DeploymentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentPropertiesResponse(
      callRateLimit: CallRateLimitResponse.fromMap((map['callRateLimit'] as Map).cast<String, dynamic>()),
      capabilities: (map['capabilities'] as Map).cast<String, String>(),
      capacitySettings: map['capacitySettings'] == null ? null : DeploymentCapacitySettingsResponse.fromMap((map['capacitySettings'] as Map).cast<String, dynamic>()),
      currentCapacity: map['currentCapacity'] == null ? null : map['currentCapacity'] as int,
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] as bool,
      model: map['model'] == null ? null : DeploymentModelResponse.fromMap((map['model'] as Map).cast<String, dynamic>()),
      parentDeploymentName: map['parentDeploymentName'] == null ? null : map['parentDeploymentName'] as String,
      provisioningState: map['provisioningState'] as String,
      raiPolicyName: map['raiPolicyName'] == null ? null : map['raiPolicyName'] as String,
      rateLimits: pulumi.Input.decodeList<ThrottlingRuleResponse>(map['rateLimits'], (value) => ThrottlingRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      scaleSettings: map['scaleSettings'] == null ? null : DeploymentScaleSettingsResponse.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>()),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : map['versionUpgradeOption'] as String,
    );
  }
}

