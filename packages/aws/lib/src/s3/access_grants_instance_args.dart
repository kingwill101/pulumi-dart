// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_access_grants_instance_access_grants_instance_args_doc}
/// The set of arguments for AccessGrantsInstance.
/// {@endtemplate}
/// {@macro pulumi_s3_control_access_grants_instance_access_grants_instance_args_doc}
class AccessGrantsInstanceArgs {
  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;
  /// The ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  final pulumi.Input<String>? identityCenterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessGrantsInstanceArgs].
  /// [accountId] The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [identityCenterArn] The ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AccessGrantsInstanceArgs({
    String? accountId,
    String? identityCenterArn,
    String? region,
    Map<String, String>? tags,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      identityCenterArn = pulumi.Input.asOptionalInput<String>(identityCenterArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'identityCenterArn': ?identityCenterArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AccessGrantsInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AccessGrantsInstanceArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      identityCenterArn: map['identityCenterArn'] == null ? null : map['identityCenterArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

