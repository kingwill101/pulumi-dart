// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'dataset_reference.dart';
import 'user_property.dart';

/// This activity verifies that an external resource exists.
class ValidationActivity {
  /// Can be used if dataset points to a folder. If set to true, the folder must have at least one file. If set to false, the folder must be empty. Type: boolean (or Expression with resultType boolean).
  final dynamic childItems;
  /// Validation activity dataset reference.
  final DatasetReference dataset;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Can be used if dataset points to a file. The file must be greater than or equal in size to the value specified. Type: integer (or Expression with resultType integer).
  final dynamic minimumSize;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// A delay in seconds between validation attempts. If no value is specified, 10 seconds will be used as the default. Type: integer (or Expression with resultType integer).
  final dynamic sleep;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Specifies the timeout for the activity to run. If there is no value specified, it takes the value of TimeSpan.FromDays(7) which is 1 week as default. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic timeout;
  /// Type of activity.
  /// Expected value is 'Validation'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [ValidationActivity].
  /// [childItems] Can be used if dataset points to a folder. If set to true, the folder must have at least one file. If set to false, the folder must be empty. Type: boolean (or Expression with resultType boolean).
  /// [dataset] Validation activity dataset reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [minimumSize] Can be used if dataset points to a file. The file must be greater than or equal in size to the value specified. Type: integer (or Expression with resultType integer).
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [sleep] A delay in seconds between validation attempts. If no value is specified, 10 seconds will be used as the default. Type: integer (or Expression with resultType integer).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [timeout] Specifies the timeout for the activity to run. If there is no value specified, it takes the value of TimeSpan.FromDays(7) which is 1 week as default. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  ValidationActivity({
    this.childItems,
    required this.dataset,
    this.dependsOn,
    this.description,
    this.minimumSize,
    required this.name,
    this.onInactiveMarkAs,
    this.sleep,
    this.state,
    this.timeout,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childItems': ?childItems,
      'dataset': dataset.toMap(),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'minimumSize': ?minimumSize,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'sleep': ?sleep,
      'state': ?state,
      'timeout': ?timeout,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory ValidationActivity.fromMap(Map<String, dynamic> map) {
    return ValidationActivity(
      childItems: map['childItems'] == null ? null : map['childItems'],
      dataset: DatasetReference.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      minimumSize: map['minimumSize'] == null ? null : map['minimumSize'],
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      sleep: map['sleep'] == null ? null : map['sleep'],
      state: map['state'] == null ? null : map['state'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

