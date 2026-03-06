// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessGrantsLocation resources.
class AccessGrantsLocationState {
  /// Amazon Resource Name (ARN) of the S3 Access Grants location.
  final pulumi.Input<String>? accessGrantsLocationArn;
  /// Unique ID of the S3 Access Grants location.
  final pulumi.Input<String>? accessGrantsLocationId;
  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;
  /// The ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access
  /// requests to the location.
  final pulumi.Input<String>? iamRoleArn;
  /// The default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  final pulumi.Input<String>? locationScope;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AccessGrantsLocationState].
  /// [accessGrantsLocationArn] Amazon Resource Name (ARN) of the S3 Access Grants location.
  /// [accessGrantsLocationId] Unique ID of the S3 Access Grants location.
  /// [accountId] The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [iamRoleArn] The ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access
  /// [locationScope] The default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  const AccessGrantsLocationState({
    this.accessGrantsLocationArn,
    this.accessGrantsLocationId,
    this.accountId,
    this.iamRoleArn,
    this.locationScope,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGrantsLocationArn': ?accessGrantsLocationArn,
      'accessGrantsLocationId': ?accessGrantsLocationId,
      'accountId': ?accountId,
      'iamRoleArn': ?iamRoleArn,
      'locationScope': ?locationScope,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AccessGrantsLocationState.fromMap(Map<String, dynamic> map) {
    return AccessGrantsLocationState(
      accessGrantsLocationArn: (() { final guardedValue = map['accessGrantsLocationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessGrantsLocationId: (() { final guardedValue = map['accessGrantsLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationScope: (() { final guardedValue = map['locationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

