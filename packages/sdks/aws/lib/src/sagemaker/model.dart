import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_args.dart';
import 'model_container.dart';
import 'model_inference_execution_config.dart';
import 'model_primary_container.dart';
import 'model_state.dart';
import 'model_vpc_config.dart';

/// Manages an Amazon SageMaker AI Model.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["sagemaker.amazonaws.com"],
///         }],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json)});
/// const test = aws.sagemaker.getPrebuiltEcrImage({
///     repositoryName: "kmeans",
/// });
/// const example = new aws.sagemaker.Model("example", {
///     name: "my-model",
///     executionRoleArn: exampleRole.arn,
///     primaryContainer: {
///         image: test.then(test => test.registryPath),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["sagemaker.amazonaws.com"],
///     }],
/// }])
/// example_role = aws.iam.Role("example", assume_role_policy=assume_role.json)
/// test = aws.sagemaker.get_prebuilt_ecr_image(repository_name="kmeans")
/// example = aws.sagemaker.Model("example",
///     name="my-model",
///     execution_role_arn=example_role.arn,
///     primary_container={
///         "image": test.registry_path,
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
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "sagemaker.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var test = Aws.Sagemaker.GetPrebuiltEcrImage.Invoke(new()
///     {
///         RepositoryName = "kmeans",
///     });
///
///     var example = new Aws.Sagemaker.Model("example", new()
///     {
///         Name = "my-model",
///         ExecutionRoleArn = exampleRole.Arn,
///         PrimaryContainer = new Aws.Sagemaker.Inputs.ModelPrimaryContainerArgs
///         {
///             Image = test.Apply(getPrebuiltEcrImageResult => getPrebuiltEcrImageResult.RegistryPath),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"sagemaker.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := sagemaker.GetPrebuiltEcrImage(ctx, &sagemaker.GetPrebuiltEcrImageArgs{
/// 			RepositoryName: "kmeans",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewModel(ctx, "example", &sagemaker.ModelArgs{
/// 			Name:             pulumi.String("my-model"),
/// 			ExecutionRoleArn: exampleRole.Arn,
/// 			PrimaryContainer: &sagemaker.ModelPrimaryContainerArgs{
/// 				Image: pulumi.String(test.RegistryPath),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.sagemaker.SagemakerFunctions;
/// import com.pulumi.aws.sagemaker.inputs.GetPrebuiltEcrImageArgs;
/// import com.pulumi.aws.sagemaker.Model;
/// import com.pulumi.aws.sagemaker.ModelArgs;
/// import com.pulumi.aws.sagemaker.inputs.ModelPrimaryContainerArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("sagemaker.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var test = SagemakerFunctions.getPrebuiltEcrImage(GetPrebuiltEcrImageArgs.builder()
///             .repositoryName("kmeans")
///             .build());
///
///         var example = new Model("example", ModelArgs.builder()
///             .name("my-model")
///             .executionRoleArn(exampleRole.arn())
///             .primaryContainer(ModelPrimaryContainerArgs.builder()
///                 .image(test.registryPath())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Model
///     properties:
///       name: my-model
///       executionRoleArn: ${exampleRole.arn}
///       primaryContainer:
///         image: ${test.registryPath}
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       assumeRolePolicy: ${assumeRole.json}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - sagemaker.amazonaws.com
///   test:
///     fn::invoke:
///       function: aws:sagemaker:getPrebuiltEcrImage
///       arguments:
///         repositoryName: kmeans
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import models using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/model:Model example model-foo
/// ```
class Model extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) assigned by AWS to this model.
  late final pulumi.Output<String> arn;
  /// Specifies containers in the inference pipeline. If not specified, the `primary_container` argument is required. Fields are documented below.
  late final pulumi.Output<List<ModelContainer>?> containers;
  /// Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
  late final pulumi.Output<bool?> enableNetworkIsolation;
  /// A role that SageMaker AI can assume to access model artifacts and docker images for deployment.
  late final pulumi.Output<String> executionRoleArn;
  /// Specifies details of how containers in a multi-container endpoint are called. See Inference Execution Config.
  late final pulumi.Output<ModelInferenceExecutionConfig> inferenceExecutionConfig;
  /// Name of the model (must be unique). If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;
  /// Primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the `container` argument is required. Fields are documented below.
  late final pulumi.Output<ModelPrimaryContainer?> primaryContainer;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Specifies the VPC that you want your model to connect to. This configuration is used in hosting services and in batch transform. See VPC Config.
  late final pulumi.Output<ModelVpcConfig?> vpcConfig;

  /// Creates a new [Model].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Model]. {@macro pulumi_sagemaker_model_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Model(
    String name, {
    ModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/model:Model',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containers = registerOutput<List<ModelContainer>?>('containers');
    this.enableNetworkIsolation = registerOutput<bool?>('enableNetworkIsolation');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.inferenceExecutionConfig = registerOutput<ModelInferenceExecutionConfig>('inferenceExecutionConfig');
    this.name = registerOutput<String>('name');
    this.primaryContainer = registerOutput<ModelPrimaryContainer?>('primaryContainer');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<ModelVpcConfig?>('vpcConfig');
  }

  /// Gets an existing [Model] resource's state with the given [name] and [id].
  static Model get(
    String name,
    pulumi.Input<String> id, {
    ModelState? state,
  }) {
    return Model._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Model._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/model:Model',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containers = registerOutput<List<ModelContainer>?>('containers');
    this.enableNetworkIsolation = registerOutput<bool?>('enableNetworkIsolation');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.inferenceExecutionConfig = registerOutput<ModelInferenceExecutionConfig>('inferenceExecutionConfig');
    this.name = registerOutput<String>('name');
    this.primaryContainer = registerOutput<ModelPrimaryContainer?>('primaryContainer');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<ModelVpcConfig?>('vpcConfig');
  }
}
