// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the type of Azure DevOps pool permission.
class AzureDevOpsPermissionProfile {
  /// Group email addresses
  final pulumi.Input<List<String>>? groups;
  /// Determines who has admin permissions to the Azure DevOps pool.
  final pulumi.Input<String> kind;
  /// User email addresses
  final pulumi.Input<List<String>>? users;

  /// Creates a new [AzureDevOpsPermissionProfile].
  /// [groups] Group email addresses
  /// [kind] Determines who has admin permissions to the Azure DevOps pool.
  /// [users] User email addresses
  AzureDevOpsPermissionProfile({
    this.groups,
    required this.kind,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'kind': kind,
      'users': ?users,
    };
  }

  factory AzureDevOpsPermissionProfile.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsPermissionProfile(
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

