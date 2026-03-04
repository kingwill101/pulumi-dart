// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// HDInsight Hive activity type.
class HDInsightHiveActivity {
  /// User specified arguments to HDInsightActivity.
  final pulumi.Input<List<dynamic>>? arguments;

  /// Allows user to specify defines for Hive job request.
  final pulumi.Input<Map<String, dynamic>>? defines;

  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// Debug info option.
  final pulumi.Input<String>? getDebugInfo;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;

  /// Query timeout value (in minutes).  Effective when the HDInsight cluster is with ESP (Enterprise Security Package)
  final pulumi.Input<int>? queryTimeout;

  /// Script linked service reference.
  final pulumi.Input<LinkedServiceReference>? scriptLinkedService;

  /// Script path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? scriptPath;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Storage linked service references.
  final pulumi.Input<List<LinkedServiceReference>>? storageLinkedServices;

  /// Type of activity.
  /// Expected value is 'HDInsightHive'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// User specified arguments under hivevar namespace.
  final pulumi.Input<Map<String, dynamic>>? variables;

  /// Creates a new [HDInsightHiveActivity].
  /// [arguments] User specified arguments to HDInsightActivity.
  /// [defines] Allows user to specify defines for Hive job request.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [getDebugInfo] Debug info option.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [queryTimeout] Query timeout value (in minutes).  Effective when the HDInsight cluster is with ESP (Enterprise Security Package)
  /// [scriptLinkedService] Script linked service reference.
  /// [scriptPath] Script path. Type: string (or Expression with resultType string).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storageLinkedServices] Storage linked service references.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  /// [variables] User specified arguments under hivevar namespace.
  HDInsightHiveActivity({
    this.arguments,
    this.defines,
    this.dependsOn,
    this.description,
    this.getDebugInfo,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.queryTimeout,
    this.scriptLinkedService,
    this.scriptPath,
    this.state,
    this.storageLinkedServices,
    required this.type,
    this.userProperties,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'defines': ?defines,
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependency>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependency,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'getDebugInfo': ?getDebugInfo,
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'queryTimeout': ?queryTimeout,
      'scriptLinkedService':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(scriptLinkedService, (value) => value.toMap()),
      'scriptPath': ?scriptPath,
      'state': ?state,
      'storageLinkedServices':
          ?pulumi.Input.mapOptionalInputValue<
            List<LinkedServiceReference>,
            List<Map<String, dynamic>>
          >(
            storageLinkedServices,
            (value) =>
                pulumi.Input.encodeList<
                  LinkedServiceReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserProperty>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'variables': ?variables,
    };
  }

  factory HDInsightHiveActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightHiveActivity(
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      defines: (() {
        final guardedValue = map['defines'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependency>(
            guardedValue,
            (value) => ActivityDependency.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      getDebugInfo: (() {
        final guardedValue = map['getDebugInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() {
        final guardedValue = map['onInactiveMarkAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      queryTimeout: (() {
        final guardedValue = map['queryTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scriptLinkedService: (() {
        final guardedValue = map['scriptLinkedService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scriptPath: (() {
        final guardedValue = map['scriptPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageLinkedServices: (() {
        final guardedValue = map['storageLinkedServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LinkedServiceReference>(
            guardedValue,
            (value) => LinkedServiceReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() {
        final guardedValue = map['userProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserProperty>(
            guardedValue,
            (value) =>
                UserProperty.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      variables: (() {
        final guardedValue = map['variables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
