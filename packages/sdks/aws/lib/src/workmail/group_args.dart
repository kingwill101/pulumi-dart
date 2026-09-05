// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workmail_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_workmail_group_group_args_doc}
class GroupArgs {
  /// Primary email address used to register the group with WorkMail.
  final pulumi.Input<String> email;
  /// Whether to hide the group from the global address list.
  final pulumi.Input<bool?>? hiddenFromGlobalAddressList;
  /// Name of the group.
  final pulumi.Input<String?>? name;
  /// Identifier of the WorkMail organization where the group is managed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GroupArgs].
  /// [email] Primary email address used to register the group with WorkMail.
  /// [hiddenFromGlobalAddressList] Whether to hide the group from the global address list.
  /// [name] Name of the group.
  /// [organizationId] Identifier of the WorkMail organization where the group is managed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GroupArgs({
    required this.email,
    this.hiddenFromGlobalAddressList,
    this.name,
    required this.organizationId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'hiddenFromGlobalAddressList': ?hiddenFromGlobalAddressList,
      'name': ?name,
      'organizationId': organizationId,
      'region': ?region,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      email: pulumi.Input.fromValue(map['email'] as String),
      hiddenFromGlobalAddressList: (() { final guardedValue = map['hiddenFromGlobalAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
