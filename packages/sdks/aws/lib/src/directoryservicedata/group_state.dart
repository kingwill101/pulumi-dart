// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// ID of the Directory that's associated with the group.
  final pulumi.Input<String?>? directoryId;
  /// Distinguished name of the group.
  final pulumi.Input<String?>? distinguishedName;
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
  final pulumi.Input<String?>? samAccountName;
  /// Unique Security identifier (SID) of the group.
  final pulumi.Input<String?>? sid;

  /// Creates a new [GroupState].
  /// [directoryId] ID of the Directory that's associated with the group.
  /// [distinguishedName] Distinguished name of the group.
  /// [groupScope] Scope of the AD group. Valid values are `DomainLocal`, `Global`, `Universal`, and `BuiltinLocal`. If omitted, the value is read from AWS. See [AD group scopes](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope) for scope restrictions.
  /// [groupType] Type of the AD group. Valid values are `Distribution` and `Security`. If omitted, the value is read from AWS. See [AD group types](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work).
  /// [region] Region where the group is managed. Defaults to the provider region.
  /// [samAccountName] SAM account name of the group. Must be between 1 and 64 characters and must not contain any of the following characters: `: ; | = + " * ? &lt; &gt; / \ , [ ] @`.
  /// [sid] Unique Security identifier (SID) of the group.
  const GroupState({
    this.directoryId,
    this.distinguishedName,
    this.groupScope,
    this.groupType,
    this.region,
    this.samAccountName,
    this.sid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': ?directoryId,
      'distinguishedName': ?distinguishedName,
      'groupScope': ?groupScope,
      'groupType': ?groupType,
      'region': ?region,
      'samAccountName': ?samAccountName,
      'sid': ?sid,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distinguishedName: (() { final guardedValue = map['distinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupScope: (() { final guardedValue = map['groupScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samAccountName: (() { final guardedValue = map['samAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
