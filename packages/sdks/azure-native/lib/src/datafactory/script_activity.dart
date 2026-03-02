// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'script_activity_script_block.dart';
import 'script_activity_type_properties_log_settings.dart';
import 'user_property.dart';

/// Script activity type.
class ScriptActivity {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// Log settings of script activity.
  final pulumi.Input<ScriptActivityTypePropertiesLogSettings>? logSettings;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// Enable to retrieve result sets from multiple SQL statements and the number of rows affected by the DML statement. Supported connector: SnowflakeV2. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? returnMultistatementResult;
  /// ScriptBlock execution timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? scriptBlockExecutionTimeout;
  /// Array of script blocks. Type: array.
  final pulumi.Input<List<ScriptActivityScriptBlock>>? scripts;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Indicates whether to treat decimal values as strings to avoid value overflow issue. This option is enabled for SnowflakeV2 connector only. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? treatDecimalAsString;
  /// Type of activity.
  /// Expected value is 'Script'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [ScriptActivity].
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
  ScriptActivity({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'logSettings': ?pulumi.Input.mapOptionalInputValue<ScriptActivityTypePropertiesLogSettings, Map<String, dynamic>>(logSettings, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'returnMultistatementResult': ?returnMultistatementResult,
      'scriptBlockExecutionTimeout': ?scriptBlockExecutionTimeout,
      'scripts': ?pulumi.Input.mapOptionalInputValue<List<ScriptActivityScriptBlock>, List<Map<String, dynamic>>>(scripts, (value) => pulumi.Input.encodeList<ScriptActivityScriptBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'treatDecimalAsString': ?treatDecimalAsString,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScriptActivity.fromMap(Map<String, dynamic> map) {
    return ScriptActivity(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn']!, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      logSettings: map['logSettings'] == null ? null : (ScriptActivityTypePropertiesLogSettings.fromMap((map['logSettings']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      returnMultistatementResult: map['returnMultistatementResult'] == null ? null : (map['returnMultistatementResult']!).input(),
      scriptBlockExecutionTimeout: map['scriptBlockExecutionTimeout'] == null ? null : (map['scriptBlockExecutionTimeout']!).input(),
      scripts: map['scripts'] == null ? null : (pulumi.Input.decodeList<ScriptActivityScriptBlock>(map['scripts']!, (value) => ScriptActivityScriptBlock.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      treatDecimalAsString: map['treatDecimalAsString'] == null ? null : (map['treatDecimalAsString']!).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties']!, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

