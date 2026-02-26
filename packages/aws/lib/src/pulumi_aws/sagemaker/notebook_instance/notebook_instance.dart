import 'package:pulumi/pulumi.dart';
import '../notebook_instance_instance_metadata_service_configuration/notebook_instance_instance_metadata_service_configuration.dart';
import 'notebook_instance_args.dart';

/// Provides a SageMaker AI Notebook Instance resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ni = new aws.sagemaker.NotebookInstance("ni", {
/// name: "my-notebook-instance",
/// roleArn: role.arn,
/// instanceType: "ml.t2.medium",
/// tags: {
/// Name: "foo",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ni = aws.sagemaker.NotebookInstance("ni",
/// name="my-notebook-instance",
/// role_arn=role["arn"],
/// instance_type="ml.t2.medium",
/// tags={
/// "Name": "foo",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ni = new Aws.Sagemaker.NotebookInstance("ni", new()
/// {
/// Name = "my-notebook-instance",
/// RoleArn = role.Arn,
/// InstanceType = "ml.t2.medium",
/// Tags =
/// {
/// { "Name", "foo" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewNotebookInstance(ctx, "ni", &sagemaker.NotebookInstanceArgs{
/// Name:         pulumi.String("my-notebook-instance"),
/// RoleArn:      pulumi.Any(role.Arn),
/// InstanceType: pulumi.String("ml.t2.medium"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("foo"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var ni = new NotebookInstance("ni", NotebookInstanceArgs.builder()
/// .name("my-notebook-instance")
/// .roleArn(role.arn())
/// .instanceType("ml.t2.medium")
/// .tags(Map.of("Name", "foo"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ni:
/// type: aws:sagemaker:NotebookInstance
/// properties:
/// name: my-notebook-instance
/// roleArn: ${role.arn}
/// instanceType: ml.t2.medium
/// tags:
/// Name: foo
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Code repository usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.CodeRepository("example", {
/// codeRepositoryName: "my-notebook-instance-code-repo",
/// gitConfig: {
/// repositoryUrl: "https://github.com/github/docs.git",
/// },
/// });
/// const ni = new aws.sagemaker.NotebookInstance("ni", {
/// name: "my-notebook-instance",
/// roleArn: role.arn,
/// instanceType: "ml.t2.medium",
/// defaultCodeRepository: example.codeRepositoryName,
/// tags: {
/// Name: "foo",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.CodeRepository("example",
/// code_repository_name="my-notebook-instance-code-repo",
/// git_config={
/// "repository_url": "https://github.com/github/docs.git",
/// })
/// ni = aws.sagemaker.NotebookInstance("ni",
/// name="my-notebook-instance",
/// role_arn=role["arn"],
/// instance_type="ml.t2.medium",
/// default_code_repository=example.code_repository_name,
/// tags={
/// "Name": "foo",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.CodeRepository("example", new()
/// {
/// CodeRepositoryName = "my-notebook-instance-code-repo",
/// GitConfig = new Aws.Sagemaker.Inputs.CodeRepositoryGitConfigArgs
/// {
/// RepositoryUrl = "https://github.com/github/docs.git",
/// },
/// });
///
/// var ni = new Aws.Sagemaker.NotebookInstance("ni", new()
/// {
/// Name = "my-notebook-instance",
/// RoleArn = role.Arn,
/// InstanceType = "ml.t2.medium",
/// DefaultCodeRepository = example.CodeRepositoryName,
/// Tags =
/// {
/// { "Name", "foo" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := sagemaker.NewCodeRepository(ctx, "example", &sagemaker.CodeRepositoryArgs{
/// CodeRepositoryName: pulumi.String("my-notebook-instance-code-repo"),
/// GitConfig: &sagemaker.CodeRepositoryGitConfigArgs{
/// RepositoryUrl: pulumi.String("https://github.com/github/docs.git"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sagemaker.NewNotebookInstance(ctx, "ni", &sagemaker.NotebookInstanceArgs{
/// Name:                  pulumi.String("my-notebook-instance"),
/// RoleArn:               pulumi.Any(role.Arn),
/// InstanceType:          pulumi.String("ml.t2.medium"),
/// DefaultCodeRepository: example.CodeRepositoryName,
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("foo"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new CodeRepository("example", CodeRepositoryArgs.builder()
/// .codeRepositoryName("my-notebook-instance-code-repo")
/// .gitConfig(CodeRepositoryGitConfigArgs.builder()
/// .repositoryUrl("https://github.com/github/docs.git")
/// .build())
/// .build());
///
/// var ni = new NotebookInstance("ni", NotebookInstanceArgs.builder()
/// .name("my-notebook-instance")
/// .roleArn(role.arn())
/// .instanceType("ml.t2.medium")
/// .defaultCodeRepository(example.codeRepositoryName())
/// .tags(Map.of("Name", "foo"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:CodeRepository
/// properties:
/// codeRepositoryName: my-notebook-instance-code-repo
/// gitConfig:
/// repositoryUrl: https://github.com/github/docs.git
/// ni:
/// type: aws:sagemaker:NotebookInstance
/// properties:
/// name: my-notebook-instance
/// roleArn: ${role.arn}
/// instanceType: ml.t2.medium
/// defaultCodeRepository: ${example.codeRepositoryName}
/// tags:
/// Name: foo
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Notebook Instances using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
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

  /// Set to `Disabled` to disable internet access to notebook. Requires <span pulumi-lang-nodejs="`securityGroups`" pulumi-lang-dotnet="`SecurityGroups`" pulumi-lang-go="`securityGroups`" pulumi-lang-python="`security_groups`" pulumi-lang-yaml="`securityGroups`" pulumi-lang-java="`securityGroups`">`security_groups`</span> and <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span> to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  late final Output<String?> directInternetAccess;

  /// Information on the IMDS configuration of the notebook instance. Conflicts with <span pulumi-lang-nodejs="`instanceMetadataServiceConfiguration`" pulumi-lang-dotnet="`InstanceMetadataServiceConfiguration`" pulumi-lang-go="`instanceMetadataServiceConfiguration`" pulumi-lang-python="`instance_metadata_service_configuration`" pulumi-lang-yaml="`instanceMetadataServiceConfiguration`" pulumi-lang-java="`instanceMetadataServiceConfiguration`">`instance_metadata_service_configuration`</span>. see details below.
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

  /// The network interface ID that Amazon SageMaker AI created at the time of creating the instance. Only available when setting <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>.
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

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
    this.additionalCodeRepositories = Output.createUnknown<List<String>?>();
    this.arn = Output.createUnknown<String>();
    this.defaultCodeRepository = Output.createUnknown<String?>();
    this.directInternetAccess = Output.createUnknown<String?>();
    this.instanceMetadataServiceConfiguration = Output.createUnknown<
        NotebookInstanceInstanceMetadataServiceConfiguration?>();
    this.instanceType = Output.createUnknown<String>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.lifecycleConfigName = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.networkInterfaceId = Output.createUnknown<String>();
    this.platformIdentifier = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.rootAccess = Output.createUnknown<String?>();
    this.securityGroups = Output.createUnknown<List<String>>();
    this.subnetId = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.url = Output.createUnknown<String>();
    this.volumeSize = Output.createUnknown<int?>();
  }
}
