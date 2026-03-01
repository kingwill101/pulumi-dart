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
    pulumi.Output<String>? accessGrantsInstanceArn,
    pulumi.Output<String>? accessGrantsInstanceId,
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? identityCenterApplicationArn,
    pulumi.Output<String>? identityCenterArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accessGrantsInstanceArn = pulumi.Input.asOptionalInput<String>(accessGrantsInstanceArn),
      accessGrantsInstanceId = pulumi.Input.asOptionalInput<String>(accessGrantsInstanceId),
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      identityCenterApplicationArn = pulumi.Input.asOptionalInput<String>(identityCenterApplicationArn),
      identityCenterArn = pulumi.Input.asOptionalInput<String>(identityCenterArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accessGrantsInstanceArn: map['accessGrantsInstanceArn'] == null ? null : pulumi.Output.create<String>(map['accessGrantsInstanceArn'] as String),
      accessGrantsInstanceId: map['accessGrantsInstanceId'] == null ? null : pulumi.Output.create<String>(map['accessGrantsInstanceId'] as String),
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      identityCenterApplicationArn: map['identityCenterApplicationArn'] == null ? null : pulumi.Output.create<String>(map['identityCenterApplicationArn'] as String),
      identityCenterArn: map['identityCenterArn'] == null ? null : pulumi.Output.create<String>(map['identityCenterArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

