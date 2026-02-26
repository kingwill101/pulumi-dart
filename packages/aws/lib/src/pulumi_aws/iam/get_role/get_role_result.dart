// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_role_role_last_used/get_role_role_last_used.dart';

/// Result data returned by getRole.
class GetRoleResult {
  /// ARN of the role.
  final String arn;

  /// Policy document associated with the role.
  final String assumeRolePolicy;

  /// Creation date of the role in RFC 3339 format.
  final String createDate;

  /// Description for the role.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Maximum session duration.
  final int maxSessionDuration;
  final String name;

  /// Path to the role.
  final String path;

  /// The ARN of the policy that is used to set the permissions boundary for the role.
  final String permissionsBoundary;

  /// Contains information about the last time that an IAM role was used. See <span pulumi-lang-nodejs="`roleLastUsed`" pulumi-lang-dotnet="`RoleLastUsed`" pulumi-lang-go="`roleLastUsed`" pulumi-lang-python="`role_last_used`" pulumi-lang-yaml="`roleLastUsed`" pulumi-lang-java="`roleLastUsed`">`role_last_used`</span> for details.
  final List<GetRoleRoleLastUsed> roleLastUseds;

  /// Tags attached to the role.
  final Map<String, String> tags;

  /// Stable and unique string identifying the role.
  final String uniqueId;

  GetRoleResult({
    required this.arn,
    required this.assumeRolePolicy,
    required this.createDate,
    required this.description,
    required this.id,
    required this.maxSessionDuration,
    required this.name,
    required this.path,
    required this.permissionsBoundary,
    required this.roleLastUseds,
    required this.tags,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['assumeRolePolicy'] = assumeRolePolicy;
    map['createDate'] = createDate;
    map['description'] = description;
    map['id'] = id;
    map['maxSessionDuration'] = maxSessionDuration;
    map['name'] = name;
    map['path'] = path;
    map['permissionsBoundary'] = permissionsBoundary;
    map['roleLastUseds'] =
        Input.encodeList<GetRoleRoleLastUsed, Map<String, dynamic>>(
            roleLastUseds, (value) => value.toMap());
    map['tags'] = tags;
    map['uniqueId'] = uniqueId;
    return map;
  }

  factory GetRoleResult.fromMap(Map<String, dynamic> map) {
    return GetRoleResult(
      arn: map['arn'] as String,
      assumeRolePolicy: map['assumeRolePolicy'] as String,
      createDate: map['createDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      maxSessionDuration: map['maxSessionDuration'] as int,
      name: map['name'] as String,
      path: map['path'] as String,
      permissionsBoundary: map['permissionsBoundary'] as String,
      roleLastUseds: Input.decodeList<GetRoleRoleLastUsed>(
          map['roleLastUseds'],
          (value) => GetRoleRoleLastUsed.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      uniqueId: map['uniqueId'] as String,
    );
  }
}
