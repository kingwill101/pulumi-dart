// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'script_activity_script_block_response.dart';
import 'script_activity_type_properties_response_log_settings.dart';
import 'user_property_response.dart';

/// Script activity type.
class ScriptActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// Log settings of script activity.
  final pulumi.Input<ScriptActivityTypePropertiesResponseLogSettings>? logSettings;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Enable to retrieve result sets from multiple SQL statements and the number of rows affected by the DML statement. Supported connector: SnowflakeV2. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? returnMultistatementResult;
  /// ScriptBlock execution timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? scriptBlockExecutionTimeout;
  /// Array of script blocks. Type: array.
  final pulumi.Input<List<ScriptActivityScriptBlockResponse>>? scripts;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Indicates whether to treat decimal values as strings to avoid value overflow issue. This option is enabled for SnowflakeV2 connector only. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? treatDecimalAsString;
  /// Type of activity.
  /// Expected value is 'Script'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [ScriptActivityResponse].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [linkedServiceName] Linked service reference.
  /// [logSettings] Log settings of script activity.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [returnMultistatementResult] Enable to retrieve result sets from multiple SQL statements and the number of rows affected by the DML statement. Supported connector: SnowflakeV2. Type: boolean (or Expression with resultType boolean).
  /// [scriptBlockExecutionTimeout] ScriptBlock execution timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [scripts] Array of script blocks. Type: array.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [treatDecimalAsString] Indicates whether to treat decimal values as strings to avoid value overflow issue. This option is enabled for SnowflakeV2 connector only. Type: boolean (or Expression with resultType boolean).
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  ScriptActivityResponse({
    this.dependsOn,
    this.description,
    required this.linkedServiceName,
    this.logSettings,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.returnMultistatementResult,
    this.scriptBlockExecutionTimeout,
    this.scripts,
    this.state,
    this.treatDecimalAsString,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'logSettings': ?pulumi.Input.mapOptionalInputValue<ScriptActivityTypePropertiesResponseLogSettings, Map<String, dynamic>>(logSettings, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'returnMultistatementResult': ?returnMultistatementResult,
      'scriptBlockExecutionTimeout': ?scriptBlockExecutionTimeout,
      'scripts': ?pulumi.Input.mapOptionalInputValue<List<ScriptActivityScriptBlockResponse>, List<Map<String, dynamic>>>(scripts, (value) => pulumi.Input.encodeList<ScriptActivityScriptBlockResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'treatDecimalAsString': ?treatDecimalAsString,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScriptActivityResponse.fromMap(Map<String, dynamic> map) {
    return ScriptActivityResponse(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      logSettings: (() { final guardedValue = map['logSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScriptActivityTypePropertiesResponseLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnMultistatementResult: (() { final guardedValue = map['returnMultistatementResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scriptBlockExecutionTimeout: (() { final guardedValue = map['scriptBlockExecutionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scripts: (() { final guardedValue = map['scripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScriptActivityScriptBlockResponse>(guardedValue, (value) => ScriptActivityScriptBlockResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      treatDecimalAsString: (() { final guardedValue = map['treatDecimalAsString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

