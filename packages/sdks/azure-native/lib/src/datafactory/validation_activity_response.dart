// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'dataset_reference_response.dart';
import 'user_property_response.dart';

/// This activity verifies that an external resource exists.
class ValidationActivityResponse {
  /// Can be used if dataset points to a folder. If set to true, the folder must have at least one file. If set to false, the folder must be empty. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? childItems;
  /// Validation activity dataset reference.
  final pulumi.Input<DatasetReferenceResponse> dataset;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Can be used if dataset points to a file. The file must be greater than or equal in size to the value specified. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? minimumSize;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String?>? onInactiveMarkAs;
  /// A delay in seconds between validation attempts. If no value is specified, 10 seconds will be used as the default. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sleep;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String?>? state;
  /// Specifies the timeout for the activity to run. If there is no value specified, it takes the value of TimeSpan.FromDays(7) which is 1 week as default. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? timeout;
  /// Type of activity.
  /// Expected value is 'Validation'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>?>? userProperties;

  /// Creates a new [ValidationActivityResponse].
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
  const ValidationActivityResponse({
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
      'dataset': pulumi.Input.mapInputValue<DatasetReferenceResponse, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'minimumSize': ?minimumSize,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'sleep': ?sleep,
      'state': ?state,
      'timeout': ?timeout,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidationActivityResponse.fromMap(Map<String, dynamic> map) {
    return ValidationActivityResponse(
      childItems: (() { final guardedValue = map['childItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dataset: pulumi.Input.fromValue(DatasetReferenceResponse.fromMap((map['dataset']! as Map).cast<String, dynamic>())),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumSize: (() { final guardedValue = map['minimumSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sleep: (() { final guardedValue = map['sleep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
