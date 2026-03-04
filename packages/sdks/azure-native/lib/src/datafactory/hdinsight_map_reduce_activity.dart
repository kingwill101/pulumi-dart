// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// HDInsight MapReduce activity type.
class HDInsightMapReduceActivity {
  /// User specified arguments to HDInsightActivity.
  final pulumi.Input<List<dynamic>>? arguments;

  /// Class name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> className;

  /// Allows user to specify defines for the MapReduce job request.
  final pulumi.Input<Map<String, dynamic>>? defines;

  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// Debug info option.
  final pulumi.Input<String>? getDebugInfo;

  /// Jar path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> jarFilePath;

  /// Jar libs.
  final pulumi.Input<List<dynamic>>? jarLibs;

  /// Jar linked service reference.
  final pulumi.Input<LinkedServiceReference>? jarLinkedService;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Storage linked service references.
  final pulumi.Input<List<LinkedServiceReference>>? storageLinkedServices;

  /// Type of activity.
  /// Expected value is 'HDInsightMapReduce'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [HDInsightMapReduceActivity].
  /// [arguments] User specified arguments to HDInsightActivity.
  /// [className] Class name. Type: string (or Expression with resultType string).
  /// [defines] Allows user to specify defines for the MapReduce job request.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [getDebugInfo] Debug info option.
  /// [jarFilePath] Jar path. Type: string (or Expression with resultType string).
  /// [jarLibs] Jar libs.
  /// [jarLinkedService] Jar linked service reference.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storageLinkedServices] Storage linked service references.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  HDInsightMapReduceActivity({
    this.arguments,
    required this.className,
    this.defines,
    this.dependsOn,
    this.description,
    this.getDebugInfo,
    required this.jarFilePath,
    this.jarLibs,
    this.jarLinkedService,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    this.storageLinkedServices,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'className': className,
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
      'jarFilePath': jarFilePath,
      'jarLibs': ?jarLibs,
      'jarLinkedService':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(jarLinkedService, (value) => value.toMap()),
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
    };
  }

  factory HDInsightMapReduceActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightMapReduceActivity(
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      className: pulumi.Input.fromValue(map['className']),
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
      jarFilePath: pulumi.Input.fromValue(map['jarFilePath']),
      jarLibs: (() {
        final guardedValue = map['jarLibs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      jarLinkedService: (() {
        final guardedValue = map['jarLinkedService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
    );
  }
}
