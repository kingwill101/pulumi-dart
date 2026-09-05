// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_role_last_used.dart';

/// Result data returned by getRole.
class GetRoleResult {
  /// ARN of the role.
  final String? arn;
  /// Policy document associated with the role.
  final String? assumeRolePolicy;
  /// Creation date of the role in RFC 3339 format.
  final String? createDate;
  /// Description for the role.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Maximum session duration.
  final int? maxSessionDuration;
  final String? name;
  /// Path to the role.
  final String? path;
  /// The ARN of the policy that is used to set the permissions boundary for the role.
  final String? permissionsBoundary;
  /// Contains information about the last time that an IAM role was used. See `roleLastUsed` for details.
  final List<GetRoleRoleLastUsed>? roleLastUseds;
  /// Tags attached to the role.
  final Map<String, String>? tags;
  /// Stable and unique string identifying the role.
  final String? uniqueId;

  /// Creates a new [GetRoleResult].
  /// [arn] ARN of the role.
  /// [assumeRolePolicy] Policy document associated with the role.
  /// [createDate] Creation date of the role in RFC 3339 format.
  /// [description] Description for the role.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxSessionDuration] Maximum session duration.
  /// [name] Optional.
  /// [path] Path to the role.
  /// [permissionsBoundary] The ARN of the policy that is used to set the permissions boundary for the role.
  /// [roleLastUseds] Contains information about the last time that an IAM role was used. See `roleLastUsed` for details.
  /// [tags] Tags attached to the role.
  /// [uniqueId] Stable and unique string identifying the role.
  const GetRoleResult({
    this.arn,
    this.assumeRolePolicy,
    this.createDate,
    this.description,
    this.id,
    this.maxSessionDuration,
    this.name,
    this.path,
    this.permissionsBoundary,
    this.roleLastUseds,
    this.tags,
    this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assumeRolePolicy': ?assumeRolePolicy,
      'createDate': ?createDate,
      'description': ?description,
      'id': ?id,
      'maxSessionDuration': ?maxSessionDuration,
      'name': ?name,
      'path': ?path,
      'permissionsBoundary': ?permissionsBoundary,
      'roleLastUseds': ?(() { final guardedValue = roleLastUseds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoleRoleLastUsed, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'uniqueId': ?uniqueId,
    };
  }

  factory GetRoleResult.fromMap(Map<String, dynamic> map) {
    return GetRoleResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assumeRolePolicy: (() { final guardedValue = map['assumeRolePolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createDate: (() { final guardedValue = map['createDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxSessionDuration: (() { final guardedValue = map['maxSessionDuration']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissionsBoundary: (() { final guardedValue = map['permissionsBoundary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleLastUseds: (() { final guardedValue = map['roleLastUseds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoleRoleLastUsed>(guardedValue, (value) => GetRoleRoleLastUsed.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
