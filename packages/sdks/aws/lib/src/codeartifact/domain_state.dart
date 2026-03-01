// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// The ARN of the Domain.
  final pulumi.Input<String>? arn;
  /// The total size of all assets in the domain.
  final pulumi.Input<String>? assetSizeBytes;
  /// A timestamp that represents the date and time the domain was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? createdTime;
  /// The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable.
  final pulumi.Input<String>? domain;
  /// The encryption key for the domain. This is used to encrypt content stored in a domain. The KMS Key Amazon Resource Name (ARN). The default aws/codeartifact AWS KMS master key is used if this element is absent.
  final pulumi.Input<String>? encryptionKey;
  /// The AWS account ID that owns the domain.
  final pulumi.Input<String>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The number of repositories in the domain.
  final pulumi.Input<int>? repositoryCount;
  /// The ARN of the Amazon S3 bucket that is used to store package assets in the domain.
  final pulumi.Input<String>? s3BucketArn;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DomainState].
  /// [arn] The ARN of the Domain.
  /// [assetSizeBytes] The total size of all assets in the domain.
  /// [createdTime] A timestamp that represents the date and time the domain was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [domain] The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable.
  /// [encryptionKey] The encryption key for the domain. This is used to encrypt content stored in a domain. The KMS Key Amazon Resource Name (ARN). The default aws/codeartifact AWS KMS master key is used if this element is absent.
  /// [owner] The AWS account ID that owns the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryCount] The number of repositories in the domain.
  /// [s3BucketArn] The ARN of the Amazon S3 bucket that is used to store package assets in the domain.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DomainState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? assetSizeBytes,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? region,
    pulumi.Output<int>? repositoryCount,
    pulumi.Output<String>? s3BucketArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assetSizeBytes = pulumi.Input.asOptionalInput<String>(assetSizeBytes),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      region = pulumi.Input.asOptionalInput<String>(region),
      repositoryCount = pulumi.Input.asOptionalInput<int>(repositoryCount),
      s3BucketArn = pulumi.Input.asOptionalInput<String>(s3BucketArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assetSizeBytes': ?assetSizeBytes,
      'createdTime': ?createdTime,
      'domain': ?domain,
      'encryptionKey': ?encryptionKey,
      'owner': ?owner,
      'region': ?region,
      'repositoryCount': ?repositoryCount,
      's3BucketArn': ?s3BucketArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assetSizeBytes: map['assetSizeBytes'] == null ? null : pulumi.Output.create<String>(map['assetSizeBytes'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositoryCount: map['repositoryCount'] == null ? null : pulumi.Output.create<int>(map['repositoryCount'] as int),
      s3BucketArn: map['s3BucketArn'] == null ? null : pulumi.Output.create<String>(map['s3BucketArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

