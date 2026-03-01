// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// HDInsight Spark activity.
class HDInsightSparkActivity {
  /// The user-specified arguments to HDInsightSparkActivity.
  final List<dynamic>? arguments;
  /// The application's Java/Spark main class.
  final String? className;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// The relative path to the root folder of the code/package to be executed. Type: string (or Expression with resultType string).
  final dynamic entryFilePath;
  /// Debug info option.
  final String? getDebugInfo;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// The user to impersonate that will execute the job. Type: string (or Expression with resultType string).
  final dynamic proxyUser;
  /// The root path in 'sparkJobLinkedService' for all the job’s files. Type: string (or Expression with resultType string).
  final dynamic rootPath;
  /// Spark configuration property.
  final Map<String, dynamic>? sparkConfig;
  /// The storage linked service for uploading the entry file and dependencies, and for receiving logs.
  final LinkedServiceReference? sparkJobLinkedService;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'HDInsightSpark'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [HDInsightSparkActivity].
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
  HDInsightSparkActivity({
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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'entryFilePath': entryFilePath,
      'getDebugInfo': ?getDebugInfo,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'proxyUser': ?proxyUser,
      'rootPath': rootPath,
      'sparkConfig': ?sparkConfig,
      'sparkJobLinkedService': ?sparkJobLinkedService == null ? null : sparkJobLinkedService!.toMap(),
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory HDInsightSparkActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightSparkActivity(
      arguments: map['arguments'] == null ? null : (map['arguments'] as List).cast<dynamic>(),
      className: map['className'] == null ? null : map['className'] as String,
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      entryFilePath: map['entryFilePath'],
      getDebugInfo: map['getDebugInfo'] == null ? null : map['getDebugInfo'] as String,
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      proxyUser: map['proxyUser'] == null ? null : map['proxyUser'],
      rootPath: map['rootPath'],
      sparkConfig: map['sparkConfig'] == null ? null : (map['sparkConfig'] as Map).cast<String, dynamic>(),
      sparkJobLinkedService: map['sparkJobLinkedService'] == null ? null : LinkedServiceReference.fromMap((map['sparkJobLinkedService'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

