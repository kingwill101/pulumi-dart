import 'package:pulumi/pulumi.dart';
import '../notebook_instance_instance_metadata_service_configuration/notebook_instance_instance_metadata_service_configuration.dart';
import 'notebook_instance_args.dart';

/// Provides a SageMaker AI Notebook Instance resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### Code repository usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Notebook Instances using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/notebookInstance:NotebookInstance test_notebook_instance my-notebook-instance
/// ```
class NotebookInstance extends CustomResource {
  /// An array of up to three Git repositories to associate with the notebook instance.
  /// These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance.
  late final Output<List<String>?> additionalCodeRepositories;

  /// The Amazon Resource Name (ARN) assigned by AWS to this notebook instance.
  late final Output<String> arn;

  /// The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  late final Output<String?> defaultCodeRepository;

  /// Set to `Disabled` to disable internet access to notebook. Requires `security_groups` and `subnet_id` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  late final Output<String?> directInternetAccess;

  /// Information on the IMDS configuration of the notebook instance. Conflicts with `instance_metadata_service_configuration`. see details below.
  late final Output<NotebookInstanceInstanceMetadataServiceConfiguration?>
      instanceMetadataServiceConfiguration;

  /// The name of ML compute instance type.
  late final Output<String> instanceType;

  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  late final Output<String?> kmsKeyId;

  /// The name of a lifecycle configuration to associate with the notebook instance.
  late final Output<String?> lifecycleConfigName;

  /// The name of the notebook instance (must be unique).
  late final Output<String> name;

  /// The network interface ID that Amazon SageMaker AI created at the time of creating the instance. Only available when setting `subnet_id`.
  late final Output<String> networkInterfaceId;

  /// The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  late final Output<String> platformIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  late final Output<String> roleArn;

  /// Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  late final Output<String?> rootAccess;

  /// The associated security groups.
  late final Output<List<String>> securityGroups;

  /// The VPC subnet ID.
  late final Output<String?> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
  late final Output<String> url;

  /// The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  late final Output<int?> volumeSize;

  NotebookInstance(
    String name, {
    NotebookInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/notebookInstance:NotebookInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalCodeRepositories =
        registerOutput<List<String>?>('additionalCodeRepositories');
    this.arn = registerOutput<String>('arn');
    this.defaultCodeRepository =
        registerOutput<String?>('defaultCodeRepository');
    this.directInternetAccess = registerOutput<String?>('directInternetAccess');
    this.instanceMetadataServiceConfiguration =
        registerOutput<NotebookInstanceInstanceMetadataServiceConfiguration?>(
            'instanceMetadataServiceConfiguration');
    this.instanceType = registerOutput<String>('instanceType');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.lifecycleConfigName = registerOutput<String?>('lifecycleConfigName');
    this.name = registerOutput<String>('name');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.platformIdentifier = registerOutput<String>('platformIdentifier');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.rootAccess = registerOutput<String?>('rootAccess');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.volumeSize = registerOutput<int?>('volumeSize');
  }
}
