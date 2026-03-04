// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// HDInsight Spark activity.
class HDInsightSparkActivityResponse {
  /// The user-specified arguments to HDInsightSparkActivity.
  final pulumi.Input<List<dynamic>>? arguments;

  /// The application's Java/Spark main class.
  final pulumi.Input<String>? className;

  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// The relative path to the root folder of the code/package to be executed. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> entryFilePath;

  /// Debug info option.
  final pulumi.Input<String>? getDebugInfo;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;

  /// The user to impersonate that will execute the job. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? proxyUser;

  /// The root path in 'sparkJobLinkedService' for all the job’s files. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> rootPath;

  /// Spark configuration property.
  final pulumi.Input<Map<String, dynamic>>? sparkConfig;

  /// The storage linked service for uploading the entry file and dependencies, and for receiving logs.
  final pulumi.Input<LinkedServiceReferenceResponse>? sparkJobLinkedService;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Type of activity.
  /// Expected value is 'HDInsightSpark'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [HDInsightSparkActivityResponse].
  /// [arguments] The user-specified arguments to HDInsightSparkActivity.
  /// [className] The application's Java/Spark main class.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [entryFilePath] The relative path to the root folder of the code/package to be executed. Type: string (or Expression with resultType string).
  /// [getDebugInfo] Debug info option.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [proxyUser] The user to impersonate that will execute the job. Type: string (or Expression with resultType string).
  /// [rootPath] The root path in 'sparkJobLinkedService' for all the job’s files. Type: string (or Expression with resultType string).
  /// [sparkConfig] Spark configuration property.
  /// [sparkJobLinkedService] The storage linked service for uploading the entry file and dependencies, and for receiving logs.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  HDInsightSparkActivityResponse({
    this.arguments,
    this.className,
    this.dependsOn,
    this.description,
    required this.entryFilePath,
    this.getDebugInfo,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.proxyUser,
    required this.rootPath,
    this.sparkConfig,
    this.sparkJobLinkedService,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'className': ?className,
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependencyResponse>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependencyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'entryFilePath': entryFilePath,
      'getDebugInfo': ?getDebugInfo,
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicyResponse,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'proxyUser': ?proxyUser,
      'rootPath': rootPath,
      'sparkConfig': ?sparkConfig,
      'sparkJobLinkedService':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(sparkJobLinkedService, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserPropertyResponse>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<
                  UserPropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory HDInsightSparkActivityResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightSparkActivityResponse(
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      className: (() {
        final guardedValue = map['className'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependencyResponse>(
            guardedValue,
            (value) => ActivityDependencyResponse.fromMap(
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
      entryFilePath: pulumi.Input.fromValue(map['entryFilePath']),
      getDebugInfo: (() {
        final guardedValue = map['getDebugInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReferenceResponse.fromMap(
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
          ActivityPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      proxyUser: (() {
        final guardedValue = map['proxyUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      rootPath: pulumi.Input.fromValue(map['rootPath']),
      sparkConfig: (() {
        final guardedValue = map['sparkConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      sparkJobLinkedService: (() {
        final guardedValue = map['sparkJobLinkedService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() {
        final guardedValue = map['userProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserPropertyResponse>(
            guardedValue,
            (value) => UserPropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
