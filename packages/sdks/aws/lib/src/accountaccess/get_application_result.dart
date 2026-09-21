// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_identity_source.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  final String? arn;
  /// Date and time, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339), when the Application was created.
  final String? createdAt;
  final String? identityCenterInstanceArn;
  /// Identity source for the application. Forces replacement when changed. See `identitySource` Block below.
  final List<GetApplicationIdentitySource>? identitySources;
  final String? region;
  /// Current lifecycle status. One of `CREATE_IN_PROGRESS`, `ACTIVE`, `DELETE_IN_PROGRESS`, `CREATE_FAILED`, `DELETE_FAILED`.
  final String? status;
  /// Map of tags assigned to the Application.
  final Map<String, String>? tags;
  /// Internal tenant identifier returned by the service.
  final String? tenantId;
  /// Date and time, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339), when the Application was last updated.
  final String? updatedAt;

  /// Creates a new [GetApplicationResult].
  /// [arn] Optional.
  /// [createdAt] Date and time, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339), when the Application was created.
  /// [identityCenterInstanceArn] Optional.
  /// [identitySources] Identity source for the application. Forces replacement when changed. See `identitySource` Block below.
  /// [region] Optional.
  /// [status] Current lifecycle status. One of `CREATE_IN_PROGRESS`, `ACTIVE`, `DELETE_IN_PROGRESS`, `CREATE_FAILED`, `DELETE_FAILED`.
  /// [tags] Map of tags assigned to the Application.
  /// [tenantId] Internal tenant identifier returned by the service.
  /// [updatedAt] Date and time, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339), when the Application was last updated.
  const GetApplicationResult({
    this.arn,
    this.createdAt,
    this.identityCenterInstanceArn,
    this.identitySources,
    this.region,
    this.status,
    this.tags,
    this.tenantId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'identityCenterInstanceArn': ?identityCenterInstanceArn,
      'identitySources': ?(() { final guardedValue = identitySources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationIdentitySource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityCenterInstanceArn: (() { final guardedValue = map['identityCenterInstanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identitySources: (() { final guardedValue = map['identitySources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationIdentitySource>(guardedValue, (value) => GetApplicationIdentitySource.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
