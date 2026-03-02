// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessGrantsInstance resources.
class AccessGrantsInstanceState {
  /// Amazon Resource Name (ARN) of the S3 Access Grants instance.
  final pulumi.Input<String>? accessGrantsInstanceArn;
  /// Unique ID of the S3 Access Grants instance.
  final pulumi.Input<String>? accessGrantsInstanceId;
  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;
  /// The ARN of the AWS IAM Identity Center instance application; a subresource of the original Identity Center instance.
  final pulumi.Input<String>? identityCenterApplicationArn;
  /// The ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  final pulumi.Input<String>? identityCenterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AccessGrantsInstanceState].
  /// [accessGrantsInstanceArn] Amazon Resource Name (ARN) of the S3 Access Grants instance.
  /// [accessGrantsInstanceId] Unique ID of the S3 Access Grants instance.
  /// [accountId] The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [identityCenterApplicationArn] The ARN of the AWS IAM Identity Center instance application; a subresource of the original Identity Center instance.
  /// [identityCenterArn] The ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AccessGrantsInstanceState({
    this.accessGrantsInstanceArn,
    this.accessGrantsInstanceId,
    this.accountId,
    this.identityCenterApplicationArn,
    this.identityCenterArn,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGrantsInstanceArn': ?accessGrantsInstanceArn,
      'accessGrantsInstanceId': ?accessGrantsInstanceId,
      'accountId': ?accountId,
      'identityCenterApplicationArn': ?identityCenterApplicationArn,
      'identityCenterArn': ?identityCenterArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AccessGrantsInstanceState.fromMap(Map<String, dynamic> map) {
    return AccessGrantsInstanceState(
      accessGrantsInstanceArn: map['accessGrantsInstanceArn'] == null ? null : (map['accessGrantsInstanceArn'] as String).input(),
      accessGrantsInstanceId: map['accessGrantsInstanceId'] == null ? null : (map['accessGrantsInstanceId'] as String).input(),
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      identityCenterApplicationArn: map['identityCenterApplicationArn'] == null ? null : (map['identityCenterApplicationArn'] as String).input(),
      identityCenterArn: map['identityCenterArn'] == null ? null : (map['identityCenterArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

