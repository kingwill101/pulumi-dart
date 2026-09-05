// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_access_grants_location_configuration.dart';
import 'access_grant_grantee.dart';

/// {@template pulumi_s3_control_access_grant_access_grant_args_doc}
/// The set of arguments for AccessGrant.
/// {@endtemplate}
/// {@macro pulumi_s3_control_access_grant_access_grant_args_doc}
class AccessGrantArgs {
  /// See `accessGrantsLocationConfiguration` Block below for more details.
  final pulumi.Input<AccessGrantAccessGrantsLocationConfiguration?>? accessGrantsLocationConfiguration;
  /// ID of the S3 Access Grants location to with the access grant is giving access.
  final pulumi.Input<String> accessGrantsLocationId;
  /// AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? accountId;
  /// See `grantee` Block below for more details.
  final pulumi.Input<AccessGrantGrantee> grantee;
  /// Access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  final pulumi.Input<String> permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  final pulumi.Input<String?>? s3PrefixType;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccessGrantArgs].
  /// [accessGrantsLocationConfiguration] See `accessGrantsLocationConfiguration` Block below for more details.
  /// [accessGrantsLocationId] ID of the S3 Access Grants location to with the access grant is giving access.
  /// [accountId] AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [grantee] See `grantee` Block below for more details.
  /// [permission] Access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3PrefixType] If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AccessGrantArgs({
    this.accessGrantsLocationConfiguration,
    required this.accessGrantsLocationId,
    this.accountId,
    required this.grantee,
    required this.permission,
    this.region,
    this.s3PrefixType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGrantsLocationConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessGrantAccessGrantsLocationConfiguration, Map<String, dynamic>>(accessGrantsLocationConfiguration, (value) => value.toMap()),
      'accessGrantsLocationId': accessGrantsLocationId,
      'accountId': ?accountId,
      'grantee': pulumi.Input.mapInputValue<AccessGrantGrantee, Map<String, dynamic>>(grantee, (value) => value.toMap()),
      'permission': permission,
      'region': ?region,
      's3PrefixType': ?s3PrefixType,
      'tags': ?tags,
    };
  }

  factory AccessGrantArgs.fromMap(Map<String, dynamic> map) {
    return AccessGrantArgs(
      accessGrantsLocationConfiguration: (() { final guardedValue = map['accessGrantsLocationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessGrantAccessGrantsLocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      accessGrantsLocationId: pulumi.Input.fromValue(map['accessGrantsLocationId'] as String),
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantee: pulumi.Input.fromValue(AccessGrantGrantee.fromMap((map['grantee']! as Map).cast<String, dynamic>())),
      permission: pulumi.Input.fromValue(map['permission'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3PrefixType: (() { final guardedValue = map['s3PrefixType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
