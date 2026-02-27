import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_codeartifact_args.dart';

/// Provides a CodeArtifact Domain Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeArtifact domain.
///
///
/// Using `pulumi import`, import CodeArtifact Domain using the CodeArtifact Domain arn. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/domain:Domain example arn:aws:codeartifact:us-west-2:012345678912:domain/tf-acc-test-8593714120730241305
/// ```
class DomainCodeartifact extends pulumi.CustomResource {
  /// The ARN of the Domain.
  late final pulumi.Output<String> arn;

  /// The total size of all assets in the domain.
  late final pulumi.Output<String> assetSizeBytes;

  /// A timestamp that represents the date and time the domain was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> createdTime;

  /// The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable.
  late final pulumi.Output<String> domain;

  /// The encryption key for the domain. This is used to encrypt content stored in a domain. The KMS Key Amazon Resource Name (ARN). The default aws/codeartifact AWS KMS master key is used if this element is absent.
  late final pulumi.Output<String> encryptionKey;

  /// The AWS account ID that owns the domain.
  late final pulumi.Output<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The number of repositories in the domain.
  late final pulumi.Output<int> repositoryCount;

  /// The ARN of the Amazon S3 bucket that is used to store package assets in the domain.
  late final pulumi.Output<String> s3BucketArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DomainCodeartifact(
    String name, {
    DomainCodeartifactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assetSizeBytes = registerOutput<String>('assetSizeBytes');
    this.createdTime = registerOutput<String>('createdTime');
    this.domain = registerOutput<String>('domain');
    this.encryptionKey = registerOutput<String>('encryptionKey');
    this.owner = registerOutput<String>('owner');
    this.region = registerOutput<String>('region');
    this.repositoryCount = registerOutput<int>('repositoryCount');
    this.s3BucketArn = registerOutput<String>('s3BucketArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
