// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'continuation_settings_reference.dart';
import 'data_flow_reference.dart';
import 'data_flow_staging_info.dart';
import 'execute_data_flow_activity_type_properties_compute.dart';
import 'integration_runtime_reference.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Execute data flow activity.
class ExecuteDataFlowActivity {
  /// Compute properties for data flow activity.
  final ExecuteDataFlowActivityTypePropertiesCompute? compute;
  /// Continuation settings for execute data flow activity.
  final ContinuationSettingsReference? continuationSettings;
  /// Continue on error setting used for data flow execution. Enables processing to continue if a sink fails. Type: boolean (or Expression with resultType boolean)
  final dynamic continueOnError;
  /// Data flow reference.
  final DataFlowReference dataFlow;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? integrationRuntime;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Concurrent run setting used for data flow execution. Allows sinks with the same save order to be processed concurrently. Type: boolean (or Expression with resultType boolean)
  final dynamic runConcurrently;
  /// Specify number of parallel staging for sources applicable to the sink. Type: integer (or Expression with resultType integer)
  final dynamic sourceStagingConcurrency;
  /// Staging info for execute data flow activity.
  final DataFlowStagingInfo? staging;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Trace level setting used for data flow monitoring output. Supported values are: 'coarse', 'fine', and 'none'. Type: string (or Expression with resultType string)
  final dynamic traceLevel;
  /// Type of activity.
  /// Expected value is 'ExecuteDataFlow'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [ExecuteDataFlowActivity].
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
  ExecuteDataFlowActivity({
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
      'compute': ?compute == null ? null : compute!.toMap(),
      'continuationSettings': ?continuationSettings == null ? null : continuationSettings!.toMap(),
      'continueOnError': ?continueOnError,
      'dataFlow': dataFlow.toMap(),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'integrationRuntime': ?integrationRuntime == null ? null : integrationRuntime!.toMap(),
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'runConcurrently': ?runConcurrently,
      'sourceStagingConcurrency': ?sourceStagingConcurrency,
      'staging': ?staging == null ? null : staging!.toMap(),
      'state': ?state,
      'traceLevel': ?traceLevel,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory ExecuteDataFlowActivity.fromMap(Map<String, dynamic> map) {
    return ExecuteDataFlowActivity(
      compute: map['compute'] == null ? null : ExecuteDataFlowActivityTypePropertiesCompute.fromMap((map['compute'] as Map).cast<String, dynamic>()),
      continuationSettings: map['continuationSettings'] == null ? null : ContinuationSettingsReference.fromMap((map['continuationSettings'] as Map).cast<String, dynamic>()),
      continueOnError: map['continueOnError'] == null ? null : map['continueOnError'],
      dataFlow: DataFlowReference.fromMap((map['dataFlow'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      integrationRuntime: map['integrationRuntime'] == null ? null : IntegrationRuntimeReference.fromMap((map['integrationRuntime'] as Map).cast<String, dynamic>()),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      runConcurrently: map['runConcurrently'] == null ? null : map['runConcurrently'],
      sourceStagingConcurrency: map['sourceStagingConcurrency'] == null ? null : map['sourceStagingConcurrency'],
      staging: map['staging'] == null ? null : DataFlowStagingInfo.fromMap((map['staging'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      traceLevel: map['traceLevel'] == null ? null : map['traceLevel'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

