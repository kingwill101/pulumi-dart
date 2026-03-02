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
  final pulumi.Input<CallRateLimitResponse> callRateLimit;
  /// The capabilities.
  final pulumi.Input<Map<String, String>> capabilities;
  /// Internal use only.
  final pulumi.Input<DeploymentCapacitySettingsResponse>? capacitySettings;
  /// The current capacity.
  final pulumi.Input<int>? currentCapacity;
  /// If the dynamic throttling is enabled.
  final pulumi.Input<bool> dynamicThrottlingEnabled;
  /// Properties of Cognitive Services account deployment model.
  final pulumi.Input<DeploymentModelResponse>? model;
  /// The name of parent deployment.
  final pulumi.Input<String>? parentDeploymentName;
  /// Gets the status of the resource at the time the operation was called.
  final pulumi.Input<String> provisioningState;
  /// The name of RAI policy.
  final pulumi.Input<String>? raiPolicyName;
  final pulumi.Input<List<ThrottlingRuleResponse>> rateLimits;
  /// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
  final pulumi.Input<DeploymentScaleSettingsResponse>? scaleSettings;
  /// Deployment model version upgrade option.
  final pulumi.Input<String>? versionUpgradeOption;

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
      'callRateLimit': pulumi.Input.mapInputValue<CallRateLimitResponse, Map<String, dynamic>>(callRateLimit, (value) => value.toMap()),
      'capabilities': capabilities,
      'capacitySettings': ?pulumi.Input.mapOptionalInputValue<DeploymentCapacitySettingsResponse, Map<String, dynamic>>(capacitySettings, (value) => value.toMap()),
      'currentCapacity': ?currentCapacity,
      'dynamicThrottlingEnabled': dynamicThrottlingEnabled,
      'model': ?pulumi.Input.mapOptionalInputValue<DeploymentModelResponse, Map<String, dynamic>>(model, (value) => value.toMap()),
      'parentDeploymentName': ?parentDeploymentName,
      'provisioningState': provisioningState,
      'raiPolicyName': ?raiPolicyName,
      'rateLimits': pulumi.Input.mapInputValue<List<ThrottlingRuleResponse>, List<Map<String, dynamic>>>(rateLimits, (value) => pulumi.Input.encodeList<ThrottlingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scaleSettings': ?pulumi.Input.mapOptionalInputValue<DeploymentScaleSettingsResponse, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory DeploymentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentPropertiesResponse(
      callRateLimit: (CallRateLimitResponse.fromMap((map['callRateLimit'] as Map).cast<String, dynamic>())).input(),
      capabilities: ((map['capabilities'] as Map).cast<String, String>()).input(),
      capacitySettings: map['capacitySettings'] == null ? null : (DeploymentCapacitySettingsResponse.fromMap((map['capacitySettings']! as Map).cast<String, dynamic>())).input(),
      currentCapacity: map['currentCapacity'] == null ? null : (map['currentCapacity']! as int).input(),
      dynamicThrottlingEnabled: (map['dynamicThrottlingEnabled'] as bool).input(),
      model: map['model'] == null ? null : (DeploymentModelResponse.fromMap((map['model']! as Map).cast<String, dynamic>())).input(),
      parentDeploymentName: map['parentDeploymentName'] == null ? null : (map['parentDeploymentName']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      raiPolicyName: map['raiPolicyName'] == null ? null : (map['raiPolicyName']! as String).input(),
      rateLimits: (pulumi.Input.decodeList<ThrottlingRuleResponse>(map['rateLimits'], (value) => ThrottlingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scaleSettings: map['scaleSettings'] == null ? null : (DeploymentScaleSettingsResponse.fromMap((map['scaleSettings']! as Map).cast<String, dynamic>())).input(),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : (map['versionUpgradeOption']! as String).input(),
    );
  }
}

