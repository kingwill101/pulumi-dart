// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration_response.dart';
import 'image_scanning_configuration_response.dart';
import 'lifecycle_policy_response.dart';
import 'tag_response.dart';

/// Definition of awsEcrRepository
class AwsEcrRepositoryPropertiesResponse {
  /// Property arn
  final String? arn;
  /// If true, deleting the repository force deletes the contents of the repository. If false, the repository must be empty before attempting to delete it. If true, deleting the repository force deletes the contents of the repository. Without a force delete, you can only delete empty repositories.
  final bool? emptyOnDelete;
  /// The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest. The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest. By default, when no encryption configuration is set or the ``AES256`` encryption type is used, Amazon ECR uses server-side encryption with Amazon S3-managed encryption keys which encrypts your data at rest using an AES-256 encryption algorithm. This does not require any action on your part. For more control over the encryption of the contents of your repository, you can use server-side encryption with KMSlong key stored in KMSlong (KMS) to encrypt your images. For more information, see [Amazon ECR encryption at rest](https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html) in the *Amazon Elastic Container Registry User Guide*.
  final EncryptionConfigurationResponse? encryptionConfiguration;
  /// The image scanning configuration for the repository. This determines whether images are scanned for known vulnerabilities after being pushed to the repository. The image scanning configuration for a repository.
  final ImageScanningConfigurationResponse? imageScanningConfiguration;
  /// The tag mutability setting for the repository. If this parameter is omitted, the default setting of ``MUTABLE`` will be used which will allow image tags to be overwritten. If ``IMMUTABLE`` is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.
  final String? imageTagMutability;
  /// Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle policy template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html). The ``LifecyclePolicy`` property type specifies a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle policy template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html) in the *Amazon ECR User Guide*.
  final LifecyclePolicyResponse? lifecyclePolicy;
  /// The name to use for the repository. The repository name may be specified on its own (such as ``nginx-web-app``) or it can be prepended with a namespace to group the repository into a category (such as ``project-a/nginx-web-app``). If you don't specify a name, CFNlong generates a unique physical ID and uses that ID for the repository name. For more information, see [Name type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html). The repository name must start with a letter and can only contain lowercase letters, numbers, hyphens, underscores, and forward slashes.  If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  final String? repositoryName;
  /// The JSON repository policy text to apply to the repository. For more information, see [Amazon ECR repository policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html) in the *Amazon Elastic Container Registry User Guide*.
  final dynamic repositoryPolicyText;
  /// Property repositoryUri
  final String? repositoryUri;
  /// An array of key-value pairs to apply to this resource.
  final List<TagResponse>? tags;

  /// Creates a new [AwsEcrRepositoryPropertiesResponse].
  /// [arn] Property arn
  /// [emptyOnDelete] If true, deleting the repository force deletes the contents of the repository. If false, the repository must be empty before attempting to delete it. If true, deleting the repository force deletes the contents of the repository. Without a force delete, you can only delete empty repositories.
  /// [encryptionConfiguration] The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest. The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest. By default, when no encryption configuration is set or the ``AES256`` encryption type is used, Amazon ECR uses server-side encryption with Amazon S3-managed encryption keys which encrypts your data at rest using an AES-256 encryption algorithm. This does not require any action on your part. For more control over the encryption of the contents of your repository, you can use server-side encryption with KMSlong key stored in KMSlong (KMS) to encrypt your images. For more information, see [Amazon ECR encryption at rest](https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html) in the *Amazon Elastic Container Registry User Guide*.
  /// [imageScanningConfiguration] The image scanning configuration for the repository. This determines whether images are scanned for known vulnerabilities after being pushed to the repository. The image scanning configuration for a repository.
  /// [imageTagMutability] The tag mutability setting for the repository. If this parameter is omitted, the default setting of ``MUTABLE`` will be used which will allow image tags to be overwritten. If ``IMMUTABLE`` is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.
  /// [lifecyclePolicy] Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle policy template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html). The ``LifecyclePolicy`` property type specifies a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle policy template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html) in the *Amazon ECR User Guide*.
  /// [repositoryName] The name to use for the repository. The repository name may be specified on its own (such as ``nginx-web-app``) or it can be prepended with a namespace to group the repository into a category (such as ``project-a/nginx-web-app``). If you don't specify a name, CFNlong generates a unique physical ID and uses that ID for the repository name. For more information, see [Name type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html). The repository name must start with a letter and can only contain lowercase letters, numbers, hyphens, underscores, and forward slashes.  If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  /// [repositoryPolicyText] The JSON repository policy text to apply to the repository. For more information, see [Amazon ECR repository policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html) in the *Amazon Elastic Container Registry User Guide*.
  /// [repositoryUri] Property repositoryUri
  /// [tags] An array of key-value pairs to apply to this resource.
  AwsEcrRepositoryPropertiesResponse({
    this.arn,
    this.emptyOnDelete,
    this.encryptionConfiguration,
    this.imageScanningConfiguration,
    this.imageTagMutability,
    this.lifecyclePolicy,
    this.repositoryName,
    this.repositoryPolicyText,
    this.repositoryUri,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'emptyOnDelete': ?emptyOnDelete,
      'encryptionConfiguration': ?encryptionConfiguration == null ? null : encryptionConfiguration!.toMap(),
      'imageScanningConfiguration': ?imageScanningConfiguration == null ? null : imageScanningConfiguration!.toMap(),
      'imageTagMutability': ?imageTagMutability,
      'lifecyclePolicy': ?lifecyclePolicy == null ? null : lifecyclePolicy!.toMap(),
      'repositoryName': ?repositoryName,
      'repositoryPolicyText': ?repositoryPolicyText,
      'repositoryUri': ?repositoryUri,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsEcrRepositoryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEcrRepositoryPropertiesResponse(
      arn: map['arn'] == null ? null : map['arn'] as String,
      emptyOnDelete: map['emptyOnDelete'] == null ? null : map['emptyOnDelete'] as bool,
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : EncryptionConfigurationResponse.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : ImageScanningConfigurationResponse.fromMap((map['imageScanningConfiguration'] as Map).cast<String, dynamic>()),
      imageTagMutability: map['imageTagMutability'] == null ? null : map['imageTagMutability'] as String,
      lifecyclePolicy: map['lifecyclePolicy'] == null ? null : LifecyclePolicyResponse.fromMap((map['lifecyclePolicy'] as Map).cast<String, dynamic>()),
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
      repositoryPolicyText: map['repositoryPolicyText'] == null ? null : map['repositoryPolicyText'],
      repositoryUri: map['repositoryUri'] == null ? null : map['repositoryUri'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

