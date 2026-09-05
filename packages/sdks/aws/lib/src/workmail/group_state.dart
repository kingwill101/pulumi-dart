// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Timestamp when the group was disabled from WorkMail use.
  final pulumi.Input<String?>? disabledDate;
  /// Primary email address used to register the group with WorkMail.
  final pulumi.Input<String?>? email;
  /// Timestamp when the group was enabled for WorkMail use.
  final pulumi.Input<String?>? enabledDate;
  /// Identifier of the group.
  final pulumi.Input<String?>? groupId;
  /// Whether to hide the group from the global address list.
  final pulumi.Input<bool?>? hiddenFromGlobalAddressList;
  /// Name of the group.
  final pulumi.Input<String?>? name;
  /// Identifier of the WorkMail organization where the group is managed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Current WorkMail state of the group.
  final pulumi.Input<String?>? state;

  /// Creates a new [GroupState].
  /// [disabledDate] Timestamp when the group was disabled from WorkMail use.
  /// [email] Primary email address used to register the group with WorkMail.
  /// [enabledDate] Timestamp when the group was enabled for WorkMail use.
  /// [groupId] Identifier of the group.
  /// [hiddenFromGlobalAddressList] Whether to hide the group from the global address list.
  /// [name] Name of the group.
  /// [organizationId] Identifier of the WorkMail organization where the group is managed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Current WorkMail state of the group.
  const GroupState({
    this.disabledDate,
    this.email,
    this.enabledDate,
    this.groupId,
    this.hiddenFromGlobalAddressList,
    this.name,
    this.organizationId,
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledDate': ?disabledDate,
      'email': ?email,
      'enabledDate': ?enabledDate,
      'groupId': ?groupId,
      'hiddenFromGlobalAddressList': ?hiddenFromGlobalAddressList,
      'name': ?name,
      'organizationId': ?organizationId,
      'region': ?region,
      'state': ?state,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      disabledDate: (() { final guardedValue = map['disabledDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledDate: (() { final guardedValue = map['enabledDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiddenFromGlobalAddressList: (() { final guardedValue = map['hiddenFromGlobalAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
