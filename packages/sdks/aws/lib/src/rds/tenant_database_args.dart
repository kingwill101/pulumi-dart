// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_database_timeouts.dart';

/// {@template pulumi_rds_tenant_database_tenant_database_args_doc}
/// The set of arguments for TenantDatabase.
/// {@endtemplate}
/// {@macro pulumi_rds_tenant_database_tenant_database_args_doc}
class TenantDatabaseArgs {
  /// Character set of the tenant database. Defaults to `AL32UTF8`.
  final pulumi.Input<String?>? characterSetName;
  /// Identifier of the DB instance that contains the tenant database.
  final pulumi.Input<String> dbInstanceIdentifier;
  /// Name of the DB snapshot created when the tenant database is deleted. Required unless `skipFinalSnapshot` is `true`.
  final pulumi.Input<String?>? finalSnapshotIdentifier;
  /// Whether to manage the master user password with AWS Secrets Manager. When `true`, conflicts with `masterUserPassword` and `masterUserPasswordWo`. Turning it off requires one of them.
  final pulumi.Input<bool?>? manageMasterUserPassword;
  /// Password for the master user. Stored in the Terraform state. Conflicts with `masterUserPasswordWo`.
  final pulumi.Input<String?>? masterUserPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master user. Not stored in the Terraform state. Requires `masterUserPasswordWoVersion`.
  final pulumi.Input<String?>? masterUserPasswordWo;
  /// Version of `masterUserPasswordWo`. Change it to update the password.
  final pulumi.Input<int?>? masterUserPasswordWoVersion;
  /// ARN, ID, or alias of the AWS KMS key used to encrypt the Secrets Manager secret when `manageMasterUserPassword` is `true`. Can't be changed while `manageMasterUserPassword` is `true`; turn it off, apply, then turn it back on with the new key. After import, omit it or use the secret's key ARN. Defaults to the `aws/secretsmanager` key.
  final pulumi.Input<String?>? masterUserSecretKmsKeyId;
  /// Name of the master user for the tenant database.
  final pulumi.Input<String> masterUsername;
  /// National character set of the tenant database. Defaults to `AL16UTF16`.
  final pulumi.Input<String?>? ncharCharacterSetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether to skip the final DB snapshot when the tenant database is deleted. Defaults to `false`.
  final pulumi.Input<bool?>? skipFinalSnapshot;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** One of `manageMasterUserPassword`, `masterUserPassword`, or `masterUserPasswordWo` is required by RDS when creating a tenant database.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Name of the tenant database. Changing it renames the tenant database.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tenantDbName;
  final pulumi.Input<TenantDatabaseTimeouts?>? timeouts;

  /// Creates a new [TenantDatabaseArgs].
  /// [characterSetName] Character set of the tenant database. Defaults to `AL32UTF8`.
  /// [dbInstanceIdentifier] Identifier of the DB instance that contains the tenant database.
  /// [finalSnapshotIdentifier] Name of the DB snapshot created when the tenant database is deleted. Required unless `skipFinalSnapshot` is `true`.
  /// [manageMasterUserPassword] Whether to manage the master user password with AWS Secrets Manager. When `true`, conflicts with `masterUserPassword` and `masterUserPasswordWo`. Turning it off requires one of them.
  /// [masterUserPassword] Password for the master user. Stored in the Terraform state. Conflicts with `masterUserPasswordWo`.
  /// [masterUserPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [masterUserPasswordWoVersion] Version of `masterUserPasswordWo`. Change it to update the password.
  /// [masterUserSecretKmsKeyId] ARN, ID, or alias of the AWS KMS key used to encrypt the Secrets Manager secret when `manageMasterUserPassword` is `true`. Can't be changed while `manageMasterUserPassword` is `true`; turn it off, apply, then turn it back on with the new key. After import, omit it or use the secret's key ARN. Defaults to the `aws/secretsmanager` key.
  /// [masterUsername] Name of the master user for the tenant database.
  /// [ncharCharacterSetName] National character set of the tenant database. Defaults to `AL16UTF16`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipFinalSnapshot] Whether to skip the final DB snapshot when the tenant database is deleted. Defaults to `false`.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenantDbName] Name of the tenant database. Changing it renames the tenant database.
  /// [timeouts] Optional.
  const TenantDatabaseArgs({
    this.characterSetName,
    required this.dbInstanceIdentifier,
    this.finalSnapshotIdentifier,
    this.manageMasterUserPassword,
    this.masterUserPassword,
    this.masterUserPasswordWo,
    this.masterUserPasswordWoVersion,
    this.masterUserSecretKmsKeyId,
    required this.masterUsername,
    this.ncharCharacterSetName,
    this.region,
    this.skipFinalSnapshot,
    this.tags,
    required this.tenantDbName,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSetName': ?characterSetName,
      'dbInstanceIdentifier': dbInstanceIdentifier,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'manageMasterUserPassword': ?manageMasterUserPassword,
      'masterUserPassword': ?masterUserPassword,
      'masterUserPasswordWo': ?masterUserPasswordWo,
      'masterUserPasswordWoVersion': ?masterUserPasswordWoVersion,
      'masterUserSecretKmsKeyId': ?masterUserSecretKmsKeyId,
      'masterUsername': masterUsername,
      'ncharCharacterSetName': ?ncharCharacterSetName,
      'region': ?region,
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'tags': ?tags,
      'tenantDbName': tenantDbName,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TenantDatabaseTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TenantDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return TenantDatabaseArgs(
      characterSetName: (() { final guardedValue = map['characterSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIdentifier: pulumi.Input.fromValue(map['dbInstanceIdentifier'] as String),
      finalSnapshotIdentifier: (() { final guardedValue = map['finalSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manageMasterUserPassword: (() { final guardedValue = map['manageMasterUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      masterUserPassword: (() { final guardedValue = map['masterUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUserPasswordWo: (() { final guardedValue = map['masterUserPasswordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUserPasswordWoVersion: (() { final guardedValue = map['masterUserPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      masterUserSecretKmsKeyId: (() { final guardedValue = map['masterUserSecretKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUsername: pulumi.Input.fromValue(map['masterUsername'] as String),
      ncharCharacterSetName: (() { final guardedValue = map['ncharCharacterSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipFinalSnapshot: (() { final guardedValue = map['skipFinalSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantDbName: pulumi.Input.fromValue(map['tenantDbName'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TenantDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
