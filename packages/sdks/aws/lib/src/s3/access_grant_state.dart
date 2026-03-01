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
    pulumi.Output<String>? accessGrantArn,
    pulumi.Output<String>? accessGrantId,
    pulumi.Output<AccessGrantAccessGrantsLocationConfiguration>? accessGrantsLocationConfiguration,
    pulumi.Output<String>? accessGrantsLocationId,
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? grantScope,
    pulumi.Output<AccessGrantGrantee>? grantee,
    pulumi.Output<String>? permission,
    pulumi.Output<String>? region,
    pulumi.Output<String>? s3PrefixType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accessGrantArn = pulumi.Input.asOptionalInput<String>(accessGrantArn),
      accessGrantId = pulumi.Input.asOptionalInput<String>(accessGrantId),
      accessGrantsLocationConfiguration = pulumi.Input.asOptionalInput<AccessGrantAccessGrantsLocationConfiguration>(accessGrantsLocationConfiguration),
      accessGrantsLocationId = pulumi.Input.asOptionalInput<String>(accessGrantsLocationId),
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      grantScope = pulumi.Input.asOptionalInput<String>(grantScope),
      grantee = pulumi.Input.asOptionalInput<AccessGrantGrantee>(grantee),
      permission = pulumi.Input.asOptionalInput<String>(permission),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3PrefixType = pulumi.Input.asOptionalInput<String>(s3PrefixType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accessGrantArn: map['accessGrantArn'] == null ? null : pulumi.Output.create<String>(map['accessGrantArn'] as String),
      accessGrantId: map['accessGrantId'] == null ? null : pulumi.Output.create<String>(map['accessGrantId'] as String),
      accessGrantsLocationConfiguration: map['accessGrantsLocationConfiguration'] == null ? null : pulumi.Output.create<AccessGrantAccessGrantsLocationConfiguration>(AccessGrantAccessGrantsLocationConfiguration.fromMap((map['accessGrantsLocationConfiguration'] as Map).cast<String, dynamic>())),
      accessGrantsLocationId: map['accessGrantsLocationId'] == null ? null : pulumi.Output.create<String>(map['accessGrantsLocationId'] as String),
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      grantScope: map['grantScope'] == null ? null : pulumi.Output.create<String>(map['grantScope'] as String),
      grantee: map['grantee'] == null ? null : pulumi.Output.create<AccessGrantGrantee>(AccessGrantGrantee.fromMap((map['grantee'] as Map).cast<String, dynamic>())),
      permission: map['permission'] == null ? null : pulumi.Output.create<String>(map['permission'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3PrefixType: map['s3PrefixType'] == null ? null : pulumi.Output.create<String>(map['s3PrefixType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

