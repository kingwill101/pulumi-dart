// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_access_grants_location_configuration.dart';
import 'access_grant_grantee.dart';

/// {@template pulumi_s3_control_access_grant_access_grant_args_doc}
/// The set of arguments for AccessGrant.
/// {@endtemplate}
/// {@macro pulumi_s3_control_access_grant_access_grant_args_doc}
class AccessGrantArgs {
  /// See Location Configuration below for more details.
  final pulumi.Input<AccessGrantAccessGrantsLocationConfiguration>? accessGrantsLocationConfiguration;
  /// The ID of the S3 Access Grants location to with the access grant is giving access.
  final pulumi.Input<String> accessGrantsLocationId;
  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;
  /// See Grantee below for more details.
  final pulumi.Input<AccessGrantGrantee> grantee;
  /// The access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  final pulumi.Input<String> permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  final pulumi.Input<String>? s3PrefixType;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessGrantArgs].
  /// [accessGrantsLocationConfiguration] See Location Configuration below for more details.
  /// [accessGrantsLocationId] The ID of the S3 Access Grants location to with the access grant is giving access.
  /// [accountId] The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [grantee] See Grantee below for more details.
  /// [permission] The access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3PrefixType] If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AccessGrantArgs({
    pulumi.Output<AccessGrantAccessGrantsLocationConfiguration>? accessGrantsLocationConfiguration,
    required pulumi.Output<String> accessGrantsLocationId,
    pulumi.Output<String>? accountId,
    required pulumi.Output<AccessGrantGrantee> grantee,
    required pulumi.Output<String> permission,
    pulumi.Output<String>? region,
    pulumi.Output<String>? s3PrefixType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessGrantsLocationConfiguration = pulumi.Input.asOptionalInput<AccessGrantAccessGrantsLocationConfiguration>(accessGrantsLocationConfiguration),
      accessGrantsLocationId = pulumi.Input.asInput<String>(accessGrantsLocationId),
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      grantee = pulumi.Input.asInput<AccessGrantGrantee>(grantee),
      permission = pulumi.Input.asInput<String>(permission),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3PrefixType = pulumi.Input.asOptionalInput<String>(s3PrefixType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessGrantsLocationConfiguration: map['accessGrantsLocationConfiguration'] == null ? null : pulumi.Output.create<AccessGrantAccessGrantsLocationConfiguration>(AccessGrantAccessGrantsLocationConfiguration.fromMap((map['accessGrantsLocationConfiguration'] as Map).cast<String, dynamic>())),
      accessGrantsLocationId: pulumi.Output.create<String>(map['accessGrantsLocationId'] as String),
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      grantee: pulumi.Output.create<AccessGrantGrantee>(AccessGrantGrantee.fromMap((map['grantee'] as Map).cast<String, dynamic>())),
      permission: pulumi.Output.create<String>(map['permission'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3PrefixType: map['s3PrefixType'] == null ? null : pulumi.Output.create<String>(map['s3PrefixType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

