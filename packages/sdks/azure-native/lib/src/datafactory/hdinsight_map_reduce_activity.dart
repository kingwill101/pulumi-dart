// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// HDInsight MapReduce activity type.
class HDInsightMapReduceActivity {
  /// User specified arguments to HDInsightActivity.
  final List<dynamic>? arguments;
  /// Class name. Type: string (or Expression with resultType string).
  final dynamic className;
  /// Allows user to specify defines for the MapReduce job request.
  final Map<String, dynamic>? defines;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Debug info option.
  final String? getDebugInfo;
  /// Jar path. Type: string (or Expression with resultType string).
  final dynamic jarFilePath;
  /// Jar libs.
  final List<dynamic>? jarLibs;
  /// Jar linked service reference.
  final LinkedServiceReference? jarLinkedService;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Storage linked service references.
  final List<LinkedServiceReference>? storageLinkedServices;
  /// Type of activity.
  /// Expected value is 'HDInsightMapReduce'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'getDebugInfo': ?getDebugInfo,
      'jarFilePath': jarFilePath,
      'jarLibs': ?jarLibs,
      'jarLinkedService': ?jarLinkedService == null ? null : jarLinkedService!.toMap(),
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'storageLinkedServices': ?storageLinkedServices == null ? null : pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(storageLinkedServices!, (value) => value.toMap()),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory HDInsightMapReduceActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightMapReduceActivity(
      arguments: map['arguments'] == null ? null : (map['arguments'] as List).cast<dynamic>(),
      className: map['className'],
      defines: map['defines'] == null ? null : (map['defines'] as Map).cast<String, dynamic>(),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      getDebugInfo: map['getDebugInfo'] == null ? null : map['getDebugInfo'] as String,
      jarFilePath: map['jarFilePath'],
      jarLibs: map['jarLibs'] == null ? null : (map['jarLibs'] as List).cast<dynamic>(),
      jarLinkedService: map['jarLinkedService'] == null ? null : LinkedServiceReference.fromMap((map['jarLinkedService'] as Map).cast<String, dynamic>()),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      storageLinkedServices: map['storageLinkedServices'] == null ? null : pulumi.Input.decodeList<LinkedServiceReference>(map['storageLinkedServices'], (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

