// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the type of Azure DevOps pool permission.
class AzureDevOpsPermissionProfileResponse {
  /// Group email addresses
  final pulumi.Input<List<String>>? groups;
  /// Determines who has admin permissions to the Azure DevOps pool.
  final pulumi.Input<String> kind;
  /// User email addresses
  final pulumi.Input<List<String>>? users;

  /// Creates a new [AzureDevOpsPermissionProfileResponse].
  /// [groups] Group email addresses
  /// [kind] Determines who has admin permissions to the Azure DevOps pool.
  /// [users] User email addresses
  AzureDevOpsPermissionProfileResponse({
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

  factory AzureDevOpsPermissionProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsPermissionProfileResponse(
      groups: map['groups'] == null ? null : ((map['groups'] as List).cast<String>()).input(),
      kind: (map['kind'] as String).input(),
      users: map['users'] == null ? null : ((map['users'] as List).cast<String>()).input(),
    );
  }
}

