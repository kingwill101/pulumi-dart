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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'getDebugInfo': ?getDebugInfo,
      'jarFilePath': jarFilePath,
      'jarLibs': ?jarLibs,
      'jarLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(jarLinkedService, (value) => value.toMap()),
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'storageLinkedServices': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceReference>, List<Map<String, dynamic>>>(storageLinkedServices, (value) => pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HDInsightMapReduceActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightMapReduceActivity(
      arguments: map['arguments'] == null ? null : ((map['arguments']! as List).cast<dynamic>()).input(),
      className: (map['className']).input(),
      defines: map['defines'] == null ? null : ((map['defines']! as Map).cast<String, dynamic>()).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn']!, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      getDebugInfo: map['getDebugInfo'] == null ? null : (map['getDebugInfo']! as String).input(),
      jarFilePath: (map['jarFilePath']).input(),
      jarLibs: map['jarLibs'] == null ? null : ((map['jarLibs']! as List).cast<dynamic>()).input(),
      jarLinkedService: map['jarLinkedService'] == null ? null : (LinkedServiceReference.fromMap((map['jarLinkedService']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      storageLinkedServices: map['storageLinkedServices'] == null ? null : (pulumi.Input.decodeList<LinkedServiceReference>(map['storageLinkedServices']!, (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties']!, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

