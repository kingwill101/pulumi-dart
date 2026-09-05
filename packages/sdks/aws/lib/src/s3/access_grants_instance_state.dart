// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessGrantsInstance resources.
class AccessGrantsInstanceState {
  /// ARN of the S3 Access Grants instance.
  final pulumi.Input<String?>? accessGrantsInstanceArn;
  /// Unique ID of the S3 Access Grants instance.
  final pulumi.Input<String?>? accessGrantsInstanceId;
  /// AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? accountId;
  /// ARN of the AWS IAM Identity Center instance application; a subresource of the original Identity Center instance.
  final pulumi.Input<String?>? identityCenterApplicationArn;
  /// ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  final pulumi.Input<String?>? identityCenterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AccessGrantsInstanceState].
  /// [accessGrantsInstanceArn] ARN of the S3 Access Grants instance.
  /// [accessGrantsInstanceId] Unique ID of the S3 Access Grants instance.
  /// [accountId] AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [identityCenterApplicationArn] ARN of the AWS IAM Identity Center instance application; a subresource of the original Identity Center instance.
  /// [identityCenterArn] ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AccessGrantsInstanceState({
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
      accessGrantsInstanceArn: (() { final guardedValue = map['accessGrantsInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessGrantsInstanceId: (() { final guardedValue = map['accessGrantsInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCenterApplicationArn: (() { final guardedValue = map['identityCenterApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCenterArn: (() { final guardedValue = map['identityCenterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
