// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'continuation_settings_reference_response.dart';
import 'data_flow_reference_response.dart';
import 'data_flow_staging_info_response.dart';
import 'execute_data_flow_activity_type_properties_response_compute.dart';
import 'integration_runtime_reference_response.dart';
import 'power_query_sink_mapping_response.dart';
import 'power_query_sink_response.dart';
import 'user_property_response.dart';

/// Execute power query activity.
class ExecuteWranglingDataflowActivityResponse {
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
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// List of mapping for Power Query mashup query to sink dataset(s).
  final pulumi.Input<List<PowerQuerySinkMappingResponse>>? queries;
  /// Concurrent run setting used for data flow execution. Allows sinks with the same save order to be processed concurrently. Type: boolean (or Expression with resultType boolean)
  final pulumi.Input<dynamic>? runConcurrently;
  /// (Deprecated. Please use Queries). List of Power Query activity sinks mapped to a queryName.
  final pulumi.Input<Map<String, PowerQuerySinkResponse>>? sinks;
  /// Specify number of parallel staging for sources applicable to the sink. Type: integer (or Expression with resultType integer)
  final pulumi.Input<dynamic>? sourceStagingConcurrency;
  /// Staging info for execute data flow activity.
  final pulumi.Input<DataFlowStagingInfoResponse>? staging;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Trace level setting used for data flow monitoring output. Supported values are: 'coarse', 'fine', and 'none'. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? traceLevel;
  /// Type of activity.
  /// Expected value is 'ExecuteWranglingDataflow'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [ExecuteWranglingDataflowActivityResponse].
  /// [compute] Compute properties for data flow activity.
  /// [continuationSettings] Continuation settings for execute data flow activity.
  /// [continueOnError] Continue on error setting used for data flow execution. Enables processing to continue if a sink fails. Type: boolean (or Expression with resultType boolean)
  /// [dataFlow] Data flow reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [integrationRuntime] The integration runtime reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [queries] List of mapping for Power Query mashup query to sink dataset(s).
  /// [runConcurrently] Concurrent run setting used for data flow execution. Allows sinks with the same save order to be processed concurrently. Type: boolean (or Expression with resultType boolean)
  /// [sinks] (Deprecated. Please use Queries). List of Power Query activity sinks mapped to a queryName.
  /// [sourceStagingConcurrency] Specify number of parallel staging for sources applicable to the sink. Type: integer (or Expression with resultType integer)
  /// [staging] Staging info for execute data flow activity.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [traceLevel] Trace level setting used for data flow monitoring output. Supported values are: 'coarse', 'fine', and 'none'. Type: string (or Expression with resultType string)
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  ExecuteWranglingDataflowActivityResponse({
    this.compute,
    this.continuationSettings,
    this.continueOnError,
    required this.dataFlow,
    this.dependsOn,
    this.description,
    this.integrationRuntime,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.queries,
    this.runConcurrently,
    this.sinks,
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
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'queries': ?pulumi.Input.mapOptionalInputValue<List<PowerQuerySinkMappingResponse>, List<Map<String, dynamic>>>(queries, (value) => pulumi.Input.encodeList<PowerQuerySinkMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runConcurrently': ?runConcurrently,
      'sinks': ?pulumi.Input.mapOptionalInputValue<Map<String, PowerQuerySinkResponse>, Map<String, Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeMapValues<PowerQuerySinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceStagingConcurrency': ?sourceStagingConcurrency,
      'staging': ?pulumi.Input.mapOptionalInputValue<DataFlowStagingInfoResponse, Map<String, dynamic>>(staging, (value) => value.toMap()),
      'state': ?state,
      'traceLevel': ?traceLevel,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExecuteWranglingDataflowActivityResponse.fromMap(Map<String, dynamic> map) {
    return ExecuteWranglingDataflowActivityResponse(
      compute: map['compute'] == null ? null : (ExecuteDataFlowActivityTypePropertiesResponseCompute.fromMap((map['compute']! as Map).cast<String, dynamic>())).input(),
      continuationSettings: map['continuationSettings'] == null ? null : (ContinuationSettingsReferenceResponse.fromMap((map['continuationSettings']! as Map).cast<String, dynamic>())).input(),
      continueOnError: map['continueOnError'] == null ? null : (map['continueOnError']!).input(),
      dataFlow: (DataFlowReferenceResponse.fromMap((map['dataFlow'] as Map).cast<String, dynamic>())).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn']!, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      integrationRuntime: map['integrationRuntime'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['integrationRuntime']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      queries: map['queries'] == null ? null : (pulumi.Input.decodeList<PowerQuerySinkMappingResponse>(map['queries']!, (value) => PowerQuerySinkMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      runConcurrently: map['runConcurrently'] == null ? null : (map['runConcurrently']!).input(),
      sinks: map['sinks'] == null ? null : (pulumi.Input.decodeMapValues<PowerQuerySinkResponse>(map['sinks']!, (value) => PowerQuerySinkResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceStagingConcurrency: map['sourceStagingConcurrency'] == null ? null : (map['sourceStagingConcurrency']!).input(),
      staging: map['staging'] == null ? null : (DataFlowStagingInfoResponse.fromMap((map['staging']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      traceLevel: map['traceLevel'] == null ? null : (map['traceLevel']!).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties']!, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

