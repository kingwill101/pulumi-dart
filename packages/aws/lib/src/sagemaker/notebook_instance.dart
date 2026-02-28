import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_instance_args.dart';
import 'notebook_instance_instance_metadata_service_configuration.dart';

/// Provides a SageMaker AI Notebook Instance resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ni = new aws.sagemaker.NotebookInstance("ni", {
///     name: "my-notebook-instance",
///     roleArn: role.arn,
///     instanceType: "ml.t2.medium",
///     tags: {
///         Name: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ni = aws.sagemaker.NotebookInstance("ni",
///     name="my-notebook-instance",
///     role_arn=role["arn"],
///     instance_type="ml.t2.medium",
///     tags={
///         "Name": "foo",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ni = new Aws.Sagemaker.NotebookInstance("ni", new()
///     {
///         Name = "my-notebook-instance",
///         RoleArn = role.Arn,
///         InstanceType = "ml.t2.medium",
///         Tags =
///         {
///             { "Name", "foo" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewNotebookInstance(ctx, "ni", &sagemaker.NotebookInstanceArgs{
/// 			Name:         pulumi.String("my-notebook-instance"),
/// 			RoleArn:      pulumi.Any(role.Arn),
/// 			InstanceType: pulumi.String("ml.t2.medium"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foo"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.NotebookInstance;
/// import com.pulumi.aws.sagemaker.NotebookInstanceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ni = new NotebookInstance("ni", NotebookInstanceArgs.builder()
///             .name("my-notebook-instance")
///             .roleArn(role.arn())
///             .instanceType("ml.t2.medium")
///             .tags(Map.of("Name", "foo"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ni:
///     type: aws:sagemaker:NotebookInstance
///     properties:
///       name: my-notebook-instance
///       roleArn: ${role.arn}
///       instanceType: ml.t2.medium
///       tags:
///         Name: foo
/// ```
///
///
/// ### Code repository usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.CodeRepository("example", {
///     codeRepositoryName: "my-notebook-instance-code-repo",
///     gitConfig: {
///         repositoryUrl: "https://github.com/github/docs.git",
///     },
/// });
/// const ni = new aws.sagemaker.NotebookInstance("ni", {
///     name: "my-notebook-instance",
///     roleArn: role.arn,
///     instanceType: "ml.t2.medium",
///     defaultCodeRepository: example.codeRepositoryName,
///     tags: {
///         Name: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.CodeRepository("example",
///     code_repository_name="my-notebook-instance-code-repo",
///     git_config={
///         "repository_url": "https://github.com/github/docs.git",
///     })
/// ni = aws.sagemaker.NotebookInstance("ni",
///     name="my-notebook-instance",
///     role_arn=role["arn"],
///     instance_type="ml.t2.medium",
///     default_code_repository=example.code_repository_name,
///     tags={
///         "Name": "foo",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.CodeRepository("example", new()
///     {
///         CodeRepositoryName = "my-notebook-instance-code-repo",
///         GitConfig = new Aws.Sagemaker.Inputs.CodeRepositoryGitConfigArgs
///         {
///             RepositoryUrl = "https://github.com/github/docs.git",
///         },
///     });
///
///     var ni = new Aws.Sagemaker.NotebookInstance("ni", new()
///     {
///         Name = "my-notebook-instance",
///         RoleArn = role.Arn,
///         InstanceType = "ml.t2.medium",
///         DefaultCodeRepository = example.CodeRepositoryName,
///         Tags =
///         {
///             { "Name", "foo" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sagemaker.NewCodeRepository(ctx, "example", &sagemaker.CodeRepositoryArgs{
/// 			CodeRepositoryName: pulumi.String("my-notebook-instance-code-repo"),
/// 			GitConfig: &sagemaker.CodeRepositoryGitConfigArgs{
/// 				RepositoryUrl: pulumi.String("https://github.com/github/docs.git"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewNotebookInstance(ctx, "ni", &sagemaker.NotebookInstanceArgs{
/// 			Name:                  pulumi.String("my-notebook-instance"),
/// 			RoleArn:               pulumi.Any(role.Arn),
/// 			InstanceType:          pulumi.String("ml.t2.medium"),
/// 			DefaultCodeRepository: example.CodeRepositoryName,
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foo"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.CodeRepository;
/// import com.pulumi.aws.sagemaker.CodeRepositoryArgs;
/// import com.pulumi.aws.sagemaker.inputs.CodeRepositoryGitConfigArgs;
/// import com.pulumi.aws.sagemaker.NotebookInstance;
/// import com.pulumi.aws.sagemaker.NotebookInstanceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CodeRepository("example", CodeRepositoryArgs.builder()
///             .codeRepositoryName("my-notebook-instance-code-repo")
///             .gitConfig(CodeRepositoryGitConfigArgs.builder()
///                 .repositoryUrl("https://github.com/github/docs.git")
///                 .build())
///             .build());
///
///         var ni = new NotebookInstance("ni", NotebookInstanceArgs.builder()
///             .name("my-notebook-instance")
///             .roleArn(role.arn())
///             .instanceType("ml.t2.medium")
///             .defaultCodeRepository(example.codeRepositoryName())
///             .tags(Map.of("Name", "foo"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:CodeRepository
///     properties:
///       codeRepositoryName: my-notebook-instance-code-repo
///       gitConfig:
///         repositoryUrl: https://github.com/github/docs.git
///   ni:
///     type: aws:sagemaker:NotebookInstance
///     properties:
///       name: my-notebook-instance
///       roleArn: ${role.arn}
///       instanceType: ml.t2.medium
///       defaultCodeRepository: ${example.codeRepositoryName}
///       tags:
///         Name: foo
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Notebook Instances using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/notebookInstance:NotebookInstance test_notebook_instance my-notebook-instance
/// ```
class NotebookInstance extends pulumi.CustomResource {
  /// An array of up to three Git repositories to associate with the notebook instance.
  /// These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance.
  late final pulumi.Output<List<String>?> additionalCodeRepositories;

  /// The Amazon Resource Name (ARN) assigned by AWS to this notebook instance.
  late final pulumi.Output<String> arn;

  /// The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  late final pulumi.Output<String?> defaultCodeRepository;

  /// Set to `Disabled` to disable internet access to notebook. Requires `security_groups` and `subnet_id` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  late final pulumi.Output<String?> directInternetAccess;

  /// Information on the IMDS configuration of the notebook instance. Conflicts with `instance_metadata_service_configuration`. see details below.
  late final pulumi
      .Output<NotebookInstanceInstanceMetadataServiceConfiguration?>
      instanceMetadataServiceConfiguration;

  /// The name of ML compute instance type.
  late final pulumi.Output<String> instanceType;

  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  late final pulumi.Output<String?> kmsKeyId;

  /// The name of a lifecycle configuration to associate with the notebook instance.
  late final pulumi.Output<String?> lifecycleConfigName;

  /// The name of the notebook instance (must be unique).
  late final pulumi.Output<String> name;

  /// The network interface ID that Amazon SageMaker AI created at the time of creating the instance. Only available when setting `subnet_id`.
  late final pulumi.Output<String> networkInterfaceId;

  /// The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  late final pulumi.Output<String> platformIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  late final pulumi.Output<String> roleArn;

  /// Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  late final pulumi.Output<String?> rootAccess;

  /// The associated security groups.
  late final pulumi.Output<List<String>> securityGroups;

  /// The VPC subnet ID.
  late final pulumi.Output<String?> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
  late final pulumi.Output<String> url;

  /// The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  late final pulumi.Output<int?> volumeSize;

  /// Creates a new [NotebookInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotebookInstance]. {@macro pulumi_sagemaker_notebook_instance_notebook_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotebookInstance(
    String name, {
    NotebookInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/notebookInstance:NotebookInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
