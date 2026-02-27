// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_grant_access_grants_location_configuration/access_grant_access_grants_location_configuration.dart';
import '../access_grant_grantee/access_grant_grantee.dart';

/// The set of arguments for AccessGrant.
class AccessGrantArgs {
  /// See Location Configuration below for more details.
  final Input<AccessGrantAccessGrantsLocationConfiguration>?
      accessGrantsLocationConfiguration;

  /// The ID of the S3 Access Grants location to with the access grant is giving access.
  final Input<String> accessGrantsLocationId;

  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? accountId;

  /// See Grantee below for more details.
  final Input<AccessGrantGrantee> grantee;

  /// The access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  final Input<String> permission;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  final Input<String>? s3PrefixType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AccessGrantArgs({
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
    final map = <String, dynamic>{};
    final accessGrantsLocationConfigurationValue =
        accessGrantsLocationConfiguration;
    if (accessGrantsLocationConfigurationValue != null) {
      map['accessGrantsLocationConfiguration'] = Input.mapOptionalInputValue<
              AccessGrantAccessGrantsLocationConfiguration,
              Map<String, dynamic>>(
          accessGrantsLocationConfigurationValue, (value) => value.toMap());
    }
    map['accessGrantsLocationId'] = accessGrantsLocationId;
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['grantee'] =
        Input.mapInputValue<AccessGrantGrantee, Map<String, dynamic>>(
            grantee, (value) => value.toMap());
    map['permission'] = permission;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3PrefixTypeValue = s3PrefixType;
    if (s3PrefixTypeValue != null) {
      map['s3PrefixType'] = s3PrefixTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AccessGrantArgs.fromMap(Map<String, dynamic> map) {
    return AccessGrantArgs(
      accessGrantsLocationConfiguration:
          Input.asOptionalInput<AccessGrantAccessGrantsLocationConfiguration>(
              map['accessGrantsLocationConfiguration']),
      accessGrantsLocationId:
          Input.asInput<String>(map['accessGrantsLocationId']),
      accountId: Input.asOptionalInput<String>(map['accountId']),
      grantee: Input.asInput<AccessGrantGrantee>(map['grantee']),
      permission: Input.asInput<String>(map['permission']),
      region: Input.asOptionalInput<String>(map['region']),
      s3PrefixType: Input.asOptionalInput<String>(map['s3PrefixType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
