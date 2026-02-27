// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccessGrantsLocation.
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

  AccessGrantsLocationArgs({
    this.accountId,
    required this.iamRoleArn,
    required this.locationScope,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['iamRoleArn'] = iamRoleArn;
    map['locationScope'] = locationScope;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AccessGrantsLocationArgs.fromMap(Map<String, dynamic> map) {
    return AccessGrantsLocationArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      iamRoleArn: pulumi.Input.asInput<String>(map['iamRoleArn']),
      locationScope: pulumi.Input.asInput<String>(map['locationScope']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
