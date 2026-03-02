// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_access_grants_location_configuration.dart';
import 'access_grant_grantee.dart';

/// Input properties used for looking up and filtering AccessGrant resources.
class AccessGrantState {
  /// Amazon Resource Name (ARN) of the S3 Access Grant.
  final pulumi.Input<String>? accessGrantArn;
  /// Unique ID of the S3 Access Grant.
  final pulumi.Input<String>? accessGrantId;
  /// See Location Configuration below for more details.
  final pulumi.Input<AccessGrantAccessGrantsLocationConfiguration>? accessGrantsLocationConfiguration;
  /// The ID of the S3 Access Grants location to with the access grant is giving access.
  final pulumi.Input<String>? accessGrantsLocationId;
  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;
  /// The access grant's scope.
  final pulumi.Input<String>? grantScope;
  /// See Grantee below for more details.
  final pulumi.Input<AccessGrantGrantee>? grantee;
  /// The access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  final pulumi.Input<String>? permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  final pulumi.Input<String>? s3PrefixType;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AccessGrantState].
  /// [accessGrantArn] Amazon Resource Name (ARN) of the S3 Access Grant.
  /// [accessGrantId] Unique ID of the S3 Access Grant.
  /// [accessGrantsLocationConfiguration] See Location Configuration below for more details.
  /// [accessGrantsLocationId] The ID of the S3 Access Grants location to with the access grant is giving access.
  /// [accountId] The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [grantScope] The access grant's scope.
  /// [grantee] See Grantee below for more details.
  /// [permission] The access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3PrefixType] If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AccessGrantState({
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
      accessGrantArn: map['accessGrantArn'] == null ? null : (map['accessGrantArn'] as String).input(),
      accessGrantId: map['accessGrantId'] == null ? null : (map['accessGrantId'] as String).input(),
      accessGrantsLocationConfiguration: map['accessGrantsLocationConfiguration'] == null ? null : (AccessGrantAccessGrantsLocationConfiguration.fromMap((map['accessGrantsLocationConfiguration'] as Map).cast<String, dynamic>())).input(),
      accessGrantsLocationId: map['accessGrantsLocationId'] == null ? null : (map['accessGrantsLocationId'] as String).input(),
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      grantScope: map['grantScope'] == null ? null : (map['grantScope'] as String).input(),
      grantee: map['grantee'] == null ? null : (AccessGrantGrantee.fromMap((map['grantee'] as Map).cast<String, dynamic>())).input(),
      permission: map['permission'] == null ? null : (map['permission'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      s3PrefixType: map['s3PrefixType'] == null ? null : (map['s3PrefixType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

