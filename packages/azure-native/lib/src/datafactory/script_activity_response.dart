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
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// Log settings of script activity.
  final ScriptActivityTypePropertiesResponseLogSettings? logSettings;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Enable to retrieve result sets from multiple SQL statements and the number of rows affected by the DML statement. Supported connector: SnowflakeV2. Type: boolean (or Expression with resultType boolean).
  final dynamic returnMultistatementResult;
  /// ScriptBlock execution timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic scriptBlockExecutionTimeout;
  /// Array of script blocks. Type: array.
  final List<ScriptActivityScriptBlockResponse>? scripts;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Indicates whether to treat decimal values as strings to avoid value overflow issue. This option is enabled for SnowflakeV2 connector only. Type: boolean (or Expression with resultType boolean).
  final dynamic treatDecimalAsString;
  /// Type of activity.
  /// Expected value is 'Script'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'linkedServiceName': linkedServiceName.toMap(),
      'logSettings': ?logSettings == null ? null : logSettings!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'returnMultistatementResult': ?returnMultistatementResult,
      'scriptBlockExecutionTimeout': ?scriptBlockExecutionTimeout,
      'scripts': ?scripts == null ? null : pulumi.Input.encodeList<ScriptActivityScriptBlockResponse, Map<String, dynamic>>(scripts!, (value) => value.toMap()),
      'state': ?state,
      'treatDecimalAsString': ?treatDecimalAsString,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory ScriptActivityResponse.fromMap(Map<String, dynamic> map) {
    return ScriptActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      logSettings: map['logSettings'] == null ? null : ScriptActivityTypePropertiesResponseLogSettings.fromMap((map['logSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      returnMultistatementResult: map['returnMultistatementResult'] == null ? null : map['returnMultistatementResult'],
      scriptBlockExecutionTimeout: map['scriptBlockExecutionTimeout'] == null ? null : map['scriptBlockExecutionTimeout'],
      scripts: map['scripts'] == null ? null : pulumi.Input.decodeList<ScriptActivityScriptBlockResponse>(map['scripts'], (value) => ScriptActivityScriptBlockResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
      treatDecimalAsString: map['treatDecimalAsString'] == null ? null : map['treatDecimalAsString'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

