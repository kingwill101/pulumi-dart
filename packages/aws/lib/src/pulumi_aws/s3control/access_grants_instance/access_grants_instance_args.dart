// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccessGrantsInstance.
class AccessGrantsInstanceArgs {
  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;

  /// The ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  final pulumi.Input<String>? identityCenterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  AccessGrantsInstanceArgs({
    this.accountId,
    this.identityCenterArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final identityCenterArnValue = identityCenterArn;
    if (identityCenterArnValue != null) {
      map['identityCenterArn'] = identityCenterArnValue;
    }
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

  factory AccessGrantsInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AccessGrantsInstanceArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      identityCenterArn:
          pulumi.Input.asOptionalInput<String>(map['identityCenterArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
