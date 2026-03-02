// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'custom_activity_reference_object.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Custom activity type.
class CustomActivity {
  /// Elevation level and scope for the user, default is nonadmin task. Type: string (or Expression with resultType double).
  final pulumi.Input<dynamic>? autoUserSpecification;
  /// Command for custom activity Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> command;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// User defined property bag. There is no restriction on the keys or values that can be used. The user specified custom activity has the full responsibility to consume and interpret the content defined.
  final pulumi.Input<Map<String, dynamic>>? extendedProperties;
  /// Folder path for resource files Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? folderPath;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// Reference objects
  final pulumi.Input<CustomActivityReferenceObject>? referenceObjects;
  /// Resource linked service reference.
  final pulumi.Input<LinkedServiceReference>? resourceLinkedService;
  /// The retention time for the files submitted for custom activity. Type: double (or Expression with resultType double).
  final pulumi.Input<dynamic>? retentionTimeInDays;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [CustomActivity].
  /// [autoUserSpecification] Elevation level and scope for the user, default is nonadmin task. Type: string (or Expression with resultType double).
  /// [command] Command for custom activity Type: string (or Expression with resultType string).
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [extendedProperties] User defined property bag. There is no restriction on the keys or values that can be used. The user specified custom activity has the full responsibility to consume and interpret the content defined.
  /// [folderPath] Folder path for resource files Type: string (or Expression with resultType string).
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [referenceObjects] Reference objects
  /// [resourceLinkedService] Resource linked service reference.
  /// [retentionTimeInDays] The retention time for the files submitted for custom activity. Type: double (or Expression with resultType double).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  CustomActivity({
    this.autoUserSpecification,
    required this.command,
    this.dependsOn,
    this.description,
    this.extendedProperties,
    this.folderPath,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.referenceObjects,
    this.resourceLinkedService,
    this.retentionTimeInDays,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUserSpecification': ?autoUserSpecification,
      'command': command,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'extendedProperties': ?extendedProperties,
      'folderPath': ?folderPath,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'referenceObjects': ?pulumi.Input.mapOptionalInputValue<CustomActivityReferenceObject, Map<String, dynamic>>(referenceObjects, (value) => value.toMap()),
      'resourceLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(resourceLinkedService, (value) => value.toMap()),
      'retentionTimeInDays': ?retentionTimeInDays,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomActivity.fromMap(Map<String, dynamic> map) {
    return CustomActivity(
      autoUserSpecification: map['autoUserSpecification'] == null ? null : (map['autoUserSpecification']!).input(),
      command: (map['command']).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn']!, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      extendedProperties: map['extendedProperties'] == null ? null : ((map['extendedProperties']! as Map).cast<String, dynamic>()).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']!).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      referenceObjects: map['referenceObjects'] == null ? null : (CustomActivityReferenceObject.fromMap((map['referenceObjects']! as Map).cast<String, dynamic>())).input(),
      resourceLinkedService: map['resourceLinkedService'] == null ? null : (LinkedServiceReference.fromMap((map['resourceLinkedService']! as Map).cast<String, dynamic>())).input(),
      retentionTimeInDays: map['retentionTimeInDays'] == null ? null : (map['retentionTimeInDays']!).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties']!, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

