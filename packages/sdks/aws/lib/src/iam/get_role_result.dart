// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_role_last_used.dart';

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

  /// Contains information about the last time that an IAM role was used. See `role_last_used` for details.
  final List<GetRoleRoleLastUsed> roleLastUseds;

  /// Tags attached to the role.
  final Map<String, String> tags;

  /// Stable and unique string identifying the role.
  final String uniqueId;

  /// Creates a new [GetRoleResult].
  /// [arn] ARN of the role.
  /// [assumeRolePolicy] Policy document associated with the role.
  /// [createDate] Creation date of the role in RFC 3339 format.
  /// [description] Description for the role.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxSessionDuration] Maximum session duration.
  /// [name] Required.
  /// [path] Path to the role.
  /// [permissionsBoundary] The ARN of the policy that is used to set the permissions boundary for the role.
  /// [roleLastUseds] Contains information about the last time that an IAM role was used. See `role_last_used` for details.
  /// [tags] Tags attached to the role.
  /// [uniqueId] Stable and unique string identifying the role.
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
    return <String, dynamic>{
      'arn': arn,
      'assumeRolePolicy': assumeRolePolicy,
      'createDate': createDate,
      'description': description,
      'id': id,
      'maxSessionDuration': maxSessionDuration,
      'name': name,
      'path': path,
      'permissionsBoundary': permissionsBoundary,
      'roleLastUseds':
          pulumi.Input.encodeList<GetRoleRoleLastUsed, Map<String, dynamic>>(
            roleLastUseds,
            (value) => value.toMap(),
          ),
      'tags': tags,
      'uniqueId': uniqueId,
    };
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
      roleLastUseds: pulumi.Input.decodeList<GetRoleRoleLastUsed>(
        map['roleLastUseds']!,
        (value) =>
            GetRoleRoleLastUsed.fromMap((value as Map).cast<String, dynamic>()),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      uniqueId: map['uniqueId'] as String,
    );
  }
}
