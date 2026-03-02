// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'continuation_settings_reference_response.dart';
import 'data_flow_reference_response.dart';
import 'data_flow_staging_info_response.dart';
import 'execute_data_flow_activity_type_properties_response_compute.dart';
import 'integration_runtime_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Execute data flow activity.
class ExecuteDataFlowActivityResponse {
  /// Compute properties for data flow activity.
  final pulumi.Input<ExecuteDataFlowActivityTypePropertiesResponseCompute>? compute;
  /// Continuation settings for execute data flow activity.
  final pulumi.Input<ContinuationSettingsReferenceResponse>? continuationSettings;
  /// Continue on error setting used for data flow execution. Enables processing to continue if a sink fails. Type: boolean (or Expression with resultType boolean)
  final pulumi.Input<dynamic>? continueOnError;
  /// Data flow reference.
  final pulumi.Input<DataFlowReferenceResponse> dataFlow;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? integrationRuntime;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Concurrent run setting used for data flow execution. Allows sinks with the same save order to be processed concurrently. Type: boolean (or Expression with resultType boolean)
  final pulumi.Input<dynamic>? runConcurrently;
  /// Specify number of parallel staging for sources applicable to the sink. Type: integer (or Expression with resultType integer)
  final pulumi.Input<dynamic>? sourceStagingConcurrency;
  /// Staging info for execute data flow activity.
  final pulumi.Input<DataFlowStagingInfoResponse>? staging;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Trace level setting used for data flow monitoring output. Supported values are: 'coarse', 'fine', and 'none'. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? traceLevel;
  /// Type of activity.
  /// Expected value is 'ExecuteDataFlow'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [ExecuteDataFlowActivityResponse].
  /// [compute] Compute properties for data flow activity.
  /// [continuationSettings] Continuation settings for execute data flow activity.
  /// [continueOnError] Continue on error setting used for data flow execution. Enables processing to continue if a sink fails. Type: boolean (or Expression with resultType boolean)
  /// [dataFlow] Data flow reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [integrationRuntime] The integration runtime reference.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [runConcurrently] Concurrent run setting used for data flow execution. Allows sinks with the same save order to be processed concurrently. Type: boolean (or Expression with resultType boolean)
  /// [sourceStagingConcurrency] Specify number of parallel staging for sources applicable to the sink. Type: integer (or Expression with resultType integer)
  /// [staging] Staging info for execute data flow activity.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [traceLevel] Trace level setting used for data flow monitoring output. Supported values are: 'coarse', 'fine', and 'none'. Type: string (or Expression with resultType string)
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  ExecuteDataFlowActivityResponse({
    this.compute,
    this.continuationSettings,
    this.continueOnError,
    required this.dataFlow,
    this.dependsOn,
    this.description,
    this.integrationRuntime,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.runConcurrently,
    this.sourceStagingConcurrency,
    this.staging,
    this.state,
    this.traceLevel,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compute': ?pulumi.Input.mapOptionalInputValue<ExecuteDataFlowActivityTypePropertiesResponseCompute, Map<String, dynamic>>(compute, (value) => value.toMap()),
      'continuationSettings': ?pulumi.Input.mapOptionalInputValue<ContinuationSettingsReferenceResponse, Map<String, dynamic>>(continuationSettings, (value) => value.toMap()),
      'continueOnError': ?continueOnError,
      'dataFlow': pulumi.Input.mapInputValue<DataFlowReferenceResponse, Map<String, dynamic>>(dataFlow, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'integrationRuntime': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(integrationRuntime, (value) => value.toMap()),
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'runConcurrently': ?runConcurrently,
      'sourceStagingConcurrency': ?sourceStagingConcurrency,
      'staging': ?pulumi.Input.mapOptionalInputValue<DataFlowStagingInfoResponse, Map<String, dynamic>>(staging, (value) => value.toMap()),
      'state': ?state,
      'traceLevel': ?traceLevel,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExecuteDataFlowActivityResponse.fromMap(Map<String, dynamic> map) {
    return ExecuteDataFlowActivityResponse(
      compute: map['compute'] == null ? null : (ExecuteDataFlowActivityTypePropertiesResponseCompute.fromMap((map['compute']! as Map).cast<String, dynamic>())).input(),
      continuationSettings: map['continuationSettings'] == null ? null : (ContinuationSettingsReferenceResponse.fromMap((map['continuationSettings']! as Map).cast<String, dynamic>())).input(),
      continueOnError: map['continueOnError'] == null ? null : (map['continueOnError']!).input(),
      dataFlow: (DataFlowReferenceResponse.fromMap((map['dataFlow'] as Map).cast<String, dynamic>())).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn']!, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      integrationRuntime: map['integrationRuntime'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['integrationRuntime']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      runConcurrently: map['runConcurrently'] == null ? null : (map['runConcurrently']!).input(),
      sourceStagingConcurrency: map['sourceStagingConcurrency'] == null ? null : (map['sourceStagingConcurrency']!).input(),
      staging: map['staging'] == null ? null : (DataFlowStagingInfoResponse.fromMap((map['staging']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      traceLevel: map['traceLevel'] == null ? null : (map['traceLevel']!).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties']!, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

