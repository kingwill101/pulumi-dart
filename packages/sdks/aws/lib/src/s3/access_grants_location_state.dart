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
  AccessGrantsLocationState({
    pulumi.Output<String>? accessGrantsLocationArn,
    pulumi.Output<String>? accessGrantsLocationId,
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? locationScope,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accessGrantsLocationArn = pulumi.Input.asOptionalInput<String>(accessGrantsLocationArn),
      accessGrantsLocationId = pulumi.Input.asOptionalInput<String>(accessGrantsLocationId),
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      locationScope = pulumi.Input.asOptionalInput<String>(locationScope),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accessGrantsLocationArn: map['accessGrantsLocationArn'] == null ? null : pulumi.Output.create<String>(map['accessGrantsLocationArn'] as String),
      accessGrantsLocationId: map['accessGrantsLocationId'] == null ? null : pulumi.Output.create<String>(map['accessGrantsLocationId'] as String),
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      locationScope: map['locationScope'] == null ? null : pulumi.Output.create<String>(map['locationScope'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

