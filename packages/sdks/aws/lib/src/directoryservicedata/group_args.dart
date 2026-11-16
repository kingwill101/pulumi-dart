// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservicedata_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_directoryservicedata_group_group_args_doc}
class GroupArgs {
  /// ID of the Directory that's associated with the group.
  final pulumi.Input<String> directoryId;
  /// Scope of the AD group. Valid values are `DomainLocal`, `Global`, `Universal`, and `BuiltinLocal`. If omitted, the value is read from AWS. See [AD group scopes](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope) for scope restrictions.
  final pulumi.Input<String?>? groupScope;
  /// Type of the AD group. Valid values are `Distribution` and `Security`. If omitted, the value is read from AWS. See [AD group types](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work).
  final pulumi.Input<String?>? groupType;
  /// Region where the group is managed. Defaults to the provider region.
  ///
  /// Changes to `groupScope` and `groupType` in the same apply are sent to AWS as separate requests, with the scope updated first.
  final pulumi.Input<String?>? region;
  /// SAM account name of the group. Must be between 1 and 64 characters and must not contain any of the following characters: `: ; | = + " * ? &lt; &gt; / \ , [ ] @`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> samAccountName;

  /// Creates a new [GroupArgs].
  /// [directoryId] ID of the Directory that's associated with the group.
  /// [groupScope] Scope of the AD group. Valid values are `DomainLocal`, `Global`, `Universal`, and `BuiltinLocal`. If omitted, the value is read from AWS. See [AD group scopes](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope) for scope restrictions.
  /// [groupType] Type of the AD group. Valid values are `Distribution` and `Security`. If omitted, the value is read from AWS. See [AD group types](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work).
  /// [region] Region where the group is managed. Defaults to the provider region.
  /// [samAccountName] SAM account name of the group. Must be between 1 and 64 characters and must not contain any of the following characters: `: ; | = + " * ? &lt; &gt; / \ , [ ] @`.
  const GroupArgs({
    required this.directoryId,
    this.groupScope,
    this.groupType,
    this.region,
    required this.samAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'groupScope': ?groupScope,
      'groupType': ?groupType,
      'region': ?region,
      'samAccountName': samAccountName,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      groupScope: (() { final guardedValue = map['groupScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samAccountName: pulumi.Input.fromValue(map['samAccountName'] as String),
    );
  }
}
