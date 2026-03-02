// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// HDInsight Pig activity type.
class HDInsightPigActivity {
  /// User specified arguments to HDInsightActivity. Type: array (or Expression with resultType array).
  final pulumi.Input<dynamic>? arguments;
  /// Allows user to specify defines for Pig job request.
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
  /// Script linked service reference.
  final pulumi.Input<LinkedServiceReference>? scriptLinkedService;
  /// Script path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? scriptPath;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Storage linked service references.
  final pulumi.Input<List<LinkedServiceReference>>? storageLinkedServices;
  /// Type of activity.
  /// Expected value is 'HDInsightPig'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [HDInsightPigActivity].
  /// [arguments] User specified arguments to HDInsightActivity. Type: array (or Expression with resultType array).
  /// [defines] Allows user to specify defines for Pig job request.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [getDebugInfo] Debug info option.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [scriptLinkedService] Script linked service reference.
  /// [scriptPath] Script path. Type: string (or Expression with resultType string).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storageLinkedServices] Storage linked service references.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  HDInsightPigActivity({
    this.arguments,
    this.defines,
    this.dependsOn,
    this.description,
    this.getDebugInfo,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.scriptLinkedService,
    this.scriptPath,
    this.state,
    this.storageLinkedServices,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'defines': ?defines,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'getDebugInfo': ?getDebugInfo,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'scriptLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(scriptLinkedService, (value) => value.toMap()),
      'scriptPath': ?scriptPath,
      'state': ?state,
      'storageLinkedServices': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceReference>, List<Map<String, dynamic>>>(storageLinkedServices, (value) => pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HDInsightPigActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightPigActivity(
      arguments: map['arguments'] == null ? null : (map['arguments']!).input(),
      defines: map['defines'] == null ? null : ((map['defines']! as Map).cast<String, dynamic>()).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn']!, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      getDebugInfo: map['getDebugInfo'] == null ? null : (map['getDebugInfo']! as String).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      scriptLinkedService: map['scriptLinkedService'] == null ? null : (LinkedServiceReference.fromMap((map['scriptLinkedService']! as Map).cast<String, dynamic>())).input(),
      scriptPath: map['scriptPath'] == null ? null : (map['scriptPath']!).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      storageLinkedServices: map['storageLinkedServices'] == null ? null : (pulumi.Input.decodeList<LinkedServiceReference>(map['storageLinkedServices']!, (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties']!, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

