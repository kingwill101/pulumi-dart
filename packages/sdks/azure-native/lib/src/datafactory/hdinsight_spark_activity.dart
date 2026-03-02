// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// HDInsight Spark activity.
class HDInsightSparkActivity {
  /// The user-specified arguments to HDInsightSparkActivity.
  final pulumi.Input<List<dynamic>>? arguments;
  /// The application's Java/Spark main class.
  final pulumi.Input<String>? className;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// The relative path to the root folder of the code/package to be executed. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> entryFilePath;
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
  /// The user to impersonate that will execute the job. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? proxyUser;
  /// The root path in 'sparkJobLinkedService' for all the job’s files. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> rootPath;
  /// Spark configuration property.
  final pulumi.Input<Map<String, dynamic>>? sparkConfig;
  /// The storage linked service for uploading the entry file and dependencies, and for receiving logs.
  final pulumi.Input<LinkedServiceReference>? sparkJobLinkedService;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'HDInsightSpark'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'entryFilePath': entryFilePath,
      'getDebugInfo': ?getDebugInfo,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'proxyUser': ?proxyUser,
      'rootPath': rootPath,
      'sparkConfig': ?sparkConfig,
      'sparkJobLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(sparkJobLinkedService, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HDInsightSparkActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightSparkActivity(
      arguments: map['arguments'] == null ? null : ((map['arguments'] as List).cast<dynamic>()).input(),
      className: map['className'] == null ? null : (map['className'] as String).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      entryFilePath: (map['entryFilePath']).input(),
      getDebugInfo: map['getDebugInfo'] == null ? null : (map['getDebugInfo'] as String).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      proxyUser: map['proxyUser'] == null ? null : (map['proxyUser']).input(),
      rootPath: (map['rootPath']).input(),
      sparkConfig: map['sparkConfig'] == null ? null : ((map['sparkConfig'] as Map).cast<String, dynamic>()).input(),
      sparkJobLinkedService: map['sparkJobLinkedService'] == null ? null : (LinkedServiceReference.fromMap((map['sparkJobLinkedService'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

