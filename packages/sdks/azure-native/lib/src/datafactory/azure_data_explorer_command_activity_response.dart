// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Azure Data Explorer command activity.
class AzureDataExplorerCommandActivityResponse {
  /// A control command, according to the Azure Data Explorer command syntax. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> command;
  /// Control command timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))..)
  final pulumi.Input<dynamic>? commandTimeout;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse?>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String?>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse?>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String?>? state;
  /// Type of activity.
  /// Expected value is 'AzureDataExplorerCommand'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>?>? userProperties;

  /// Creates a new [AzureDataExplorerCommandActivityResponse].
  /// [command] A control command, according to the Azure Data Explorer command syntax. Type: string (or Expression with resultType string).
  /// [commandTimeout] Control command timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))..)
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const AzureDataExplorerCommandActivityResponse({
    required this.command,
    this.commandTimeout,
    this.dependsOn,
    this.description,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': command,
      'commandTimeout': ?commandTimeout,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureDataExplorerCommandActivityResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataExplorerCommandActivityResponse(
      command: pulumi.Input.fromValue(map['command']),
      commandTimeout: (() { final guardedValue = map['commandTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
