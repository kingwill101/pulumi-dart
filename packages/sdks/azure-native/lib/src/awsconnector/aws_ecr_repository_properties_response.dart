// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration_response.dart';
import 'image_scanning_configuration_response.dart';
import 'lifecycle_policy_response.dart';
import 'tag_response.dart';

/// Definition of awsEcrRepository
class AwsEcrRepositoryPropertiesResponse {
  /// Property arn
  final pulumi.Input<String>? arn;
  /// If true, deleting the repository force deletes the contents of the repository. If false, the repository must be empty before attempting to delete it. If true, deleting the repository force deletes the contents of the repository. Without a force delete, you can only delete empty repositories.
  final pulumi.Input<bool>? emptyOnDelete;
  /// The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest. The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest. By default, when no encryption configuration is set or the ``AES256`` encryption type is used, Amazon ECR uses server-side encryption with Amazon S3-managed encryption keys which encrypts your data at rest using an AES-256 encryption algorithm. This does not require any action on your part. For more control over the encryption of the contents of your repository, you can use server-side encryption with KMSlong key stored in KMSlong (KMS) to encrypt your images. For more information, see [Amazon ECR encryption at rest](https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html) in the *Amazon Elastic Container Registry User Guide*.
  final pulumi.Input<EncryptionConfigurationResponse>? encryptionConfiguration;
  /// The image scanning configuration for the repository. This determines whether images are scanned for known vulnerabilities after being pushed to the repository. The image scanning configuration for a repository.
  final pulumi.Input<ImageScanningConfigurationResponse>? imageScanningConfiguration;
  /// The tag mutability setting for the repository. If this parameter is omitted, the default setting of ``MUTABLE`` will be used which will allow image tags to be overwritten. If ``IMMUTABLE`` is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.
  final pulumi.Input<String>? imageTagMutability;
  /// Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle policy template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html). The ``LifecyclePolicy`` property type specifies a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle policy template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html) in the *Amazon ECR User Guide*.
  final pulumi.Input<LifecyclePolicyResponse>? lifecyclePolicy;
  /// The name to use for the repository. The repository name may be specified on its own (such as ``nginx-web-app``) or it can be prepended with a namespace to group the repository into a category (such as ``project-a/nginx-web-app``). If you don't specify a name, CFNlong generates a unique physical ID and uses that ID for the repository name. For more information, see [Name type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html). The repository name must start with a letter and can only contain lowercase letters, numbers, hyphens, underscores, and forward slashes.  If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  final pulumi.Input<String>? repositoryName;
  /// The JSON repository policy text to apply to the repository. For more information, see [Amazon ECR repository policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html) in the *Amazon Elastic Container Registry User Guide*.
  final pulumi.Input<dynamic>? repositoryPolicyText;
  /// Property repositoryUri
  final pulumi.Input<String>? repositoryUri;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<TagResponse>>? tags;

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
  const AwsEcrRepositoryPropertiesResponse({
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
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<EncryptionConfigurationResponse, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageScanningConfigurationResponse, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTagMutability': ?imageTagMutability,
      'lifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyResponse, Map<String, dynamic>>(lifecyclePolicy, (value) => value.toMap()),
      'repositoryName': ?repositoryName,
      'repositoryPolicyText': ?repositoryPolicyText,
      'repositoryUri': ?repositoryUri,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsEcrRepositoryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEcrRepositoryPropertiesResponse(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emptyOnDelete: (() { final guardedValue = map['emptyOnDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageScanningConfiguration: (() { final guardedValue = map['imageScanningConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageScanningConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageTagMutability: (() { final guardedValue = map['imageTagMutability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecyclePolicy: (() { final guardedValue = map['lifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryPolicyText: (() { final guardedValue = map['repositoryPolicyText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      repositoryUri: (() { final guardedValue = map['repositoryUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
