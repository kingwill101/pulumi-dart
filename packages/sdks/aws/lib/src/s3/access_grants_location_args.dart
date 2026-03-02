// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_access_grants_location_access_grants_location_args_doc}
/// The set of arguments for AccessGrantsLocation.
/// {@endtemplate}
/// {@macro pulumi_s3_control_access_grants_location_access_grants_location_args_doc}
class AccessGrantsLocationArgs {
  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;
  /// The ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access
  /// requests to the location.
  final pulumi.Input<String> iamRoleArn;
  /// The default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  final pulumi.Input<String> locationScope;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessGrantsLocationArgs].
  /// [accountId] The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [iamRoleArn] The ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access
  /// [locationScope] The default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AccessGrantsLocationArgs({
    this.accountId,
    required this.iamRoleArn,
    required this.locationScope,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'iamRoleArn': iamRoleArn,
      'locationScope': locationScope,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AccessGrantsLocationArgs.fromMap(Map<String, dynamic> map) {
    return AccessGrantsLocationArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      iamRoleArn: (map['iamRoleArn'] as String).input(),
      locationScope: (map['locationScope'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

