// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_access_grants_location_configuration.dart';
import 'access_grant_grantee.dart';

/// Input properties used for looking up and filtering AccessGrant resources.
class AccessGrantState {
  /// ARN of the S3 Access Grant.
  final pulumi.Input<String?>? accessGrantArn;
  /// Unique ID of the S3 Access Grant.
  final pulumi.Input<String?>? accessGrantId;
  /// See `accessGrantsLocationConfiguration` Block below for more details.
  final pulumi.Input<AccessGrantAccessGrantsLocationConfiguration?>? accessGrantsLocationConfiguration;
  /// ID of the S3 Access Grants location to with the access grant is giving access.
  final pulumi.Input<String?>? accessGrantsLocationId;
  /// AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? accountId;
  /// Access grant's scope.
  final pulumi.Input<String?>? grantScope;
  /// See `grantee` Block below for more details.
  final pulumi.Input<AccessGrantGrantee?>? grantee;
  /// Access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  final pulumi.Input<String?>? permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  final pulumi.Input<String?>? s3PrefixType;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AccessGrantState].
  /// [accessGrantArn] ARN of the S3 Access Grant.
  /// [accessGrantId] Unique ID of the S3 Access Grant.
  /// [accessGrantsLocationConfiguration] See `accessGrantsLocationConfiguration` Block below for more details.
  /// [accessGrantsLocationId] ID of the S3 Access Grants location to with the access grant is giving access.
  /// [accountId] AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [grantScope] Access grant's scope.
  /// [grantee] See `grantee` Block below for more details.
  /// [permission] Access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3PrefixType] If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AccessGrantState({
    this.accessGrantArn,
    this.accessGrantId,
    this.accessGrantsLocationConfiguration,
    this.accessGrantsLocationId,
    this.accountId,
    this.grantScope,
    this.grantee,
    this.permission,
    this.region,
    this.s3PrefixType,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGrantArn': ?accessGrantArn,
      'accessGrantId': ?accessGrantId,
      'accessGrantsLocationConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessGrantAccessGrantsLocationConfiguration, Map<String, dynamic>>(accessGrantsLocationConfiguration, (value) => value.toMap()),
      'accessGrantsLocationId': ?accessGrantsLocationId,
      'accountId': ?accountId,
      'grantScope': ?grantScope,
      'grantee': ?pulumi.Input.mapOptionalInputValue<AccessGrantGrantee, Map<String, dynamic>>(grantee, (value) => value.toMap()),
      'permission': ?permission,
      'region': ?region,
      's3PrefixType': ?s3PrefixType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AccessGrantState.fromMap(Map<String, dynamic> map) {
    return AccessGrantState(
      accessGrantArn: (() { final guardedValue = map['accessGrantArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessGrantId: (() { final guardedValue = map['accessGrantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessGrantsLocationConfiguration: (() { final guardedValue = map['accessGrantsLocationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessGrantAccessGrantsLocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      accessGrantsLocationId: (() { final guardedValue = map['accessGrantsLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantScope: (() { final guardedValue = map['grantScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantee: (() { final guardedValue = map['grantee']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessGrantGrantee.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3PrefixType: (() { final guardedValue = map['s3PrefixType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
