// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amw_account_response.dart';
import 'baseline_properties_response.dart';
import 'execution_state_response.dart';
import 'metric_response.dart';
import 'sli_properties_response.dart';

/// Defines the root level properties of an SLI resource.
class SliResourceResponse {
  /// Defines the SLO baseline associated with the SLI.
  final pulumi.Input<BaselinePropertiesResponse> baselineProperties;
  /// Specifies the category of the SLI, used to classify signals such as Availability and Latency.
  final pulumi.Input<String> category;
  /// A user-provided description of the SLI, with a maximum length of 1000 characters.
  final pulumi.Input<String> description;
  /// Destination AMW accounts.
  final pulumi.Input<List<AmwAccountResponse>> destinationAmwAccounts;
  /// The destination Azure Monitor Workspace (AMW) accounts where the SLI emits metrics.
  final pulumi.Input<List<MetricResponse>> destinationMetrics;
  /// A flag to determine whether alert is enabled.
  final pulumi.Input<bool> enableAlert;
  /// Determines how the SLI is evaluated—either based on request counts or time windows.
  final pulumi.Input<String> evaluationType;
  /// Indicates the current execution status of the SLI resource in ARM responses.
  final pulumi.Input<ExecutionStateResponse> executionState;
  /// Indicates the provisioning status of the last operation.
  final pulumi.Input<dynamic> provisioningState;
  /// Defines the SLI properties associated with the SLI.
  final pulumi.Input<SliPropertiesResponse> sliProperties;
  /// The streaming rule Id associated with the Sli resource.
  final pulumi.Input<String> streamingRuleId;
  /// The streaming rule last updated timestamp associated with the Sli resource.
  final pulumi.Input<String> streamingRuleLastUpdatedTimestamp;

  /// Creates a new [SliResourceResponse].
  /// [baselineProperties] Defines the SLO baseline associated with the SLI.
  /// [category] Specifies the category of the SLI, used to classify signals such as Availability and Latency.
  /// [description] A user-provided description of the SLI, with a maximum length of 1000 characters.
  /// [destinationAmwAccounts] Destination AMW accounts.
  /// [destinationMetrics] The destination Azure Monitor Workspace (AMW) accounts where the SLI emits metrics.
  /// [enableAlert] A flag to determine whether alert is enabled.
  /// [evaluationType] Determines how the SLI is evaluated—either based on request counts or time windows.
  /// [executionState] Indicates the current execution status of the SLI resource in ARM responses.
  /// [provisioningState] Indicates the provisioning status of the last operation.
  /// [sliProperties] Defines the SLI properties associated with the SLI.
  /// [streamingRuleId] The streaming rule Id associated with the Sli resource.
  /// [streamingRuleLastUpdatedTimestamp] The streaming rule last updated timestamp associated with the Sli resource.
  const SliResourceResponse({
    required this.baselineProperties,
    required this.category,
    required this.description,
    required this.destinationAmwAccounts,
    required this.destinationMetrics,
    required this.enableAlert,
    required this.evaluationType,
    required this.executionState,
    required this.provisioningState,
    required this.sliProperties,
    required this.streamingRuleId,
    required this.streamingRuleLastUpdatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineProperties': pulumi.Input.mapInputValue<BaselinePropertiesResponse, Map<String, dynamic>>(baselineProperties, (value) => value.toMap()),
      'category': category,
      'description': description,
      'destinationAmwAccounts': pulumi.Input.mapInputValue<List<AmwAccountResponse>, List<Map<String, dynamic>>>(destinationAmwAccounts, (value) => pulumi.Input.encodeList<AmwAccountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationMetrics': pulumi.Input.mapInputValue<List<MetricResponse>, List<Map<String, dynamic>>>(destinationMetrics, (value) => pulumi.Input.encodeList<MetricResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableAlert': enableAlert,
      'evaluationType': evaluationType,
      'executionState': pulumi.Input.mapInputValue<ExecutionStateResponse, Map<String, dynamic>>(executionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'sliProperties': pulumi.Input.mapInputValue<SliPropertiesResponse, Map<String, dynamic>>(sliProperties, (value) => value.toMap()),
      'streamingRuleId': streamingRuleId,
      'streamingRuleLastUpdatedTimestamp': streamingRuleLastUpdatedTimestamp,
    };
  }

  factory SliResourceResponse.fromMap(Map<String, dynamic> map) {
    return SliResourceResponse(
      baselineProperties: pulumi.Input.fromValue(BaselinePropertiesResponse.fromMap((map['baselineProperties']! as Map).cast<String, dynamic>())),
      category: pulumi.Input.fromValue(map['category'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationAmwAccounts: pulumi.Input.fromValue(pulumi.Input.decodeList<AmwAccountResponse>(map['destinationAmwAccounts']!, (value) => AmwAccountResponse.fromMap((value as Map).cast<String, dynamic>()))),
      destinationMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricResponse>(map['destinationMetrics']!, (value) => MetricResponse.fromMap((value as Map).cast<String, dynamic>()))),
      enableAlert: pulumi.Input.fromValue(map['enableAlert'] as bool),
      evaluationType: pulumi.Input.fromValue(map['evaluationType'] as String),
      executionState: pulumi.Input.fromValue(ExecutionStateResponse.fromMap((map['executionState']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState']),
      sliProperties: pulumi.Input.fromValue(SliPropertiesResponse.fromMap((map['sliProperties']! as Map).cast<String, dynamic>())),
      streamingRuleId: pulumi.Input.fromValue(map['streamingRuleId'] as String),
      streamingRuleLastUpdatedTimestamp: pulumi.Input.fromValue(map['streamingRuleLastUpdatedTimestamp'] as String),
    );
  }
}
