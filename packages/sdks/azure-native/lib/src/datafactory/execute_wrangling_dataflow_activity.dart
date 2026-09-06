// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'continuation_settings_reference.dart';
import 'data_flow_reference.dart';
import 'data_flow_staging_info.dart';
import 'execute_data_flow_activity_type_properties_compute.dart';
import 'integration_runtime_reference.dart';
import 'power_query_sink.dart';
import 'power_query_sink_mapping.dart';
import 'user_property.dart';

/// Execute power query activity.
class ExecuteWranglingDataflowActivity {
  /// Compute properties for data flow activity.
  final pulumi.Input<ExecuteDataFlowActivityTypePropertiesCompute?>? compute;
  /// Continuation settings for execute data flow activity.
  final pulumi.Input<ContinuationSettingsReference?>? continuationSettings;
  /// Continue on error setting used for data flow execution. Enables processing to continue if a sink fails. Type: boolean (or Expression with resultType boolean)
  final pulumi.Input<dynamic>? continueOnError;
  /// Data flow reference.
  final pulumi.Input<DataFlowReference> dataFlow;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? integrationRuntime;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<dynamic>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy?>? policy;
  /// List of mapping for Power Query mashup query to sink dataset(s).
  final pulumi.Input<List<PowerQuerySinkMapping>?>? queries;
  /// Concurrent run setting used for data flow execution. Allows sinks with the same save order to be processed concurrently. Type: boolean (or Expression with resultType boolean)
  final pulumi.Input<dynamic>? runConcurrently;
  /// (Deprecated. Please use Queries). List of Power Query activity sinks mapped to a queryName.
  final pulumi.Input<Map<String, PowerQuerySink>?>? sinks;
  /// Specify number of parallel staging for sources applicable to the sink. Type: integer (or Expression with resultType integer)
  final pulumi.Input<dynamic>? sourceStagingConcurrency;
  /// Staging info for execute data flow activity.
  final pulumi.Input<DataFlowStagingInfo?>? staging;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<dynamic>? state;
  /// Trace level setting used for data flow monitoring output. Supported values are: 'coarse', 'fine', and 'none'. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? traceLevel;
  /// Type of activity.
  /// Expected value is 'ExecuteWranglingDataflow'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>?>? userProperties;

  /// Creates a new [ExecuteWranglingDataflowActivity].
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
  const ExecuteWranglingDataflowActivity({
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
      'compute': ?pulumi.Input.mapOptionalInputValue<ExecuteDataFlowActivityTypePropertiesCompute, Map<String, dynamic>>(compute, (value) => value.toMap()),
      'continuationSettings': ?pulumi.Input.mapOptionalInputValue<ContinuationSettingsReference, Map<String, dynamic>>(continuationSettings, (value) => value.toMap()),
      'continueOnError': ?continueOnError,
      'dataFlow': pulumi.Input.mapInputValue<DataFlowReference, Map<String, dynamic>>(dataFlow, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'integrationRuntime': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(integrationRuntime, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'queries': ?pulumi.Input.mapOptionalInputValue<List<PowerQuerySinkMapping>, List<Map<String, dynamic>>>(queries, (value) => pulumi.Input.encodeList<PowerQuerySinkMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runConcurrently': ?runConcurrently,
      'sinks': ?pulumi.Input.mapOptionalInputValue<Map<String, PowerQuerySink>, Map<String, Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeMapValues<PowerQuerySink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceStagingConcurrency': ?sourceStagingConcurrency,
      'staging': ?pulumi.Input.mapOptionalInputValue<DataFlowStagingInfo, Map<String, dynamic>>(staging, (value) => value.toMap()),
      'state': ?state,
      'traceLevel': ?traceLevel,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExecuteWranglingDataflowActivity.fromMap(Map<String, dynamic> map) {
    return ExecuteWranglingDataflowActivity(
      compute: (() { final guardedValue = map['compute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecuteDataFlowActivityTypePropertiesCompute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continuationSettings: (() { final guardedValue = map['continuationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuationSettingsReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continueOnError: (() { final guardedValue = map['continueOnError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dataFlow: pulumi.Input.fromValue(DataFlowReference.fromMap((map['dataFlow']! as Map).cast<String, dynamic>())),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependency>(guardedValue, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntime: (() { final guardedValue = map['integrationRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queries: (() { final guardedValue = map['queries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PowerQuerySinkMapping>(guardedValue, (value) => PowerQuerySinkMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      runConcurrently: (() { final guardedValue = map['runConcurrently']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sinks: (() { final guardedValue = map['sinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PowerQuerySink>(guardedValue, (value) => PowerQuerySink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceStagingConcurrency: (() { final guardedValue = map['sourceStagingConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      staging: (() { final guardedValue = map['staging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataFlowStagingInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      traceLevel: (() { final guardedValue = map['traceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProperty>(guardedValue, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
