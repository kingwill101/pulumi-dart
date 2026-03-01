// ignore_for_file: unused_element, unnecessary_cast


/// Defines the type of Azure DevOps pool permission.
class AzureDevOpsPermissionProfile {
  /// Group email addresses
  final List<String>? groups;
  /// Determines who has admin permissions to the Azure DevOps pool.
  final String kind;
  /// User email addresses
  final List<String>? users;

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
      groups: map['groups'] == null ? null : (map['groups'] as List).cast<String>(),
      kind: map['kind'] as String,
      users: map['users'] == null ? null : (map['users'] as List).cast<String>(),
    );
  }
}

