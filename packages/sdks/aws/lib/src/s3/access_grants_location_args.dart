// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_access_grants_location_access_grants_location_args_doc}
/// The set of arguments for AccessGrantsLocation.
/// {@endtemplate}
/// {@macro pulumi_s3_control_access_grants_location_access_grants_location_args_doc}
class AccessGrantsLocationArgs {
  /// AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? accountId;
  /// ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access requests to the location.
  final pulumi.Input<String> iamRoleArn;
  /// Default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  final pulumi.Input<String> locationScope;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccessGrantsLocationArgs].
  /// [accountId] AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [iamRoleArn] ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access requests to the location.
  /// [locationScope] Default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AccessGrantsLocationArgs({
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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      locationScope: pulumi.Input.fromValue(map['locationScope'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
