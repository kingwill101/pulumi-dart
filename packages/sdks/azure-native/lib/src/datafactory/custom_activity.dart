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
  final dynamic autoUserSpecification;
  /// Command for custom activity Type: string (or Expression with resultType string).
  final dynamic command;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// User defined property bag. There is no restriction on the keys or values that can be used. The user specified custom activity has the full responsibility to consume and interpret the content defined.
  final Map<String, dynamic>? extendedProperties;
  /// Folder path for resource files Type: string (or Expression with resultType string).
  final dynamic folderPath;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Reference objects
  final CustomActivityReferenceObject? referenceObjects;
  /// Resource linked service reference.
  final LinkedServiceReference? resourceLinkedService;
  /// The retention time for the files submitted for custom activity. Type: double (or Expression with resultType double).
  final dynamic retentionTimeInDays;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'Custom'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'extendedProperties': ?extendedProperties,
      'folderPath': ?folderPath,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'referenceObjects': ?referenceObjects == null ? null : referenceObjects!.toMap(),
      'resourceLinkedService': ?resourceLinkedService == null ? null : resourceLinkedService!.toMap(),
      'retentionTimeInDays': ?retentionTimeInDays,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory CustomActivity.fromMap(Map<String, dynamic> map) {
    return CustomActivity(
      autoUserSpecification: map['autoUserSpecification'] == null ? null : map['autoUserSpecification'],
      command: map['command'],
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      extendedProperties: map['extendedProperties'] == null ? null : (map['extendedProperties'] as Map).cast<String, dynamic>(),
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      referenceObjects: map['referenceObjects'] == null ? null : CustomActivityReferenceObject.fromMap((map['referenceObjects'] as Map).cast<String, dynamic>()),
      resourceLinkedService: map['resourceLinkedService'] == null ? null : LinkedServiceReference.fromMap((map['resourceLinkedService'] as Map).cast<String, dynamic>()),
      retentionTimeInDays: map['retentionTimeInDays'] == null ? null : map['retentionTimeInDays'],
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

