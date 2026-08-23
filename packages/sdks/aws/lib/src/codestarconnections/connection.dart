import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Provides a CodeStar Connection.
///
/// &gt; **NOTE:** The `aws.codestarconnections.Connection` resource is created in the state `PENDING`. Authentication with the connection provider must be completed in the AWS Console. See the [AWS documentation](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-update.html) for details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codestarconnections.Connection("example", {
///     name: "example-connection",
///     providerType: "Bitbucket",
/// });
/// const examplePipeline = new aws.codepipeline.Pipeline("example", {
///     artifactStores: [{}],
///     stages: [
///         {
///             name: "Source",
///             actions: [{
///                 name: "Source",
///                 category: "Source",
///                 owner: "AWS",
///                 provider: "CodeStarSourceConnection",
///                 version: "1",
///                 outputArtifacts: ["source_output"],
///                 configuration: {
///                     ConnectionArn: example.arn,
///                     FullRepositoryId: "my-organization/test",
///                     BranchName: "main",
///                 },
///             }],
///         },
///         {
///             actions: [{}],
///             name: "Build",
///         },
///         {
///             actions: [{}],
///             name: "Deploy",
///         },
///     ],
///     name: "tf-test-pipeline",
///     roleArn: codepipelineRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codestarconnections.Connection("example",
///     name="example-connection",
///     provider_type="Bitbucket")
/// example_pipeline = aws.codepipeline.Pipeline("example",
///     artifact_stores=[{}],
///     stages=[
///         {
///             "name": "Source",
///             "actions": [{
///                 "name": "Source",
///                 "category": "Source",
///                 "owner": "AWS",
///                 "provider": "CodeStarSourceConnection",
///                 "version": "1",
///                 "output_artifacts": ["source_output"],
///                 "configuration": {
///                     "ConnectionArn": example.arn,
///                     "FullRepositoryId": "my-organization/test",
///                     "BranchName": "main",
///                 },
///             }],
///         },
///         {
///             "actions": [{}],
///             "name": "Build",
///         },
///         {
///             "actions": [{}],
///             "name": "Deploy",
///         },
///     ],
///     name="tf-test-pipeline",
///     role_arn=codepipeline_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeStarConnections.Connection("example", new()
///     {
///         Name = "example-connection",
///         ProviderType = "Bitbucket",
///     });
///
///     var examplePipeline = new Aws.CodePipeline.Pipeline("example", new()
///     {
///         ArtifactStores = new[]
///         {
///             null,
///         },
///         Stages = new[]
///         {
///             new Aws.CodePipeline.Inputs.PipelineStageArgs
///             {
///                 Name = "Source",
///                 Actions = new[]
///                 {
///                     new Aws.CodePipeline.Inputs.PipelineStageActionArgs
///                     {
///                         Name = "Source",
///                         Category = "Source",
///                         Owner = "AWS",
///                         Provider = "CodeStarSourceConnection",
///                         Version = "1",
///                         OutputArtifacts = new[]
///                         {
///                             "source_output",
///                         },
///                         Configuration =
///                         {
///                             { "ConnectionArn", example.Arn },
///                             { "FullRepositoryId", "my-organization/test" },
///                             { "BranchName", "main" },
///                         },
///                     },
///                 },
///             },
///             new Aws.CodePipeline.Inputs.PipelineStageArgs
///             {
///                 Actions = new[]
///                 {
///                     null,
///                 },
///                 Name = "Build",
///             },
///             new Aws.CodePipeline.Inputs.PipelineStageArgs
///             {
///                 Actions = new[]
///                 {
///                     null,
///                 },
///                 Name = "Deploy",
///             },
///         },
///         Name = "tf-test-pipeline",
///         RoleArn = codepipelineRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codepipeline"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarconnections"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := codestarconnections.NewConnection(ctx, "example", &codestarconnections.ConnectionArgs{
/// 			Name:         pulumi.String("example-connection"),
/// 			ProviderType: pulumi.String("Bitbucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codepipeline.NewPipeline(ctx, "example", &codepipeline.PipelineArgs{
/// 			ArtifactStores: codepipeline.PipelineArtifactStoreArray{
/// 				&codepipeline.PipelineArtifactStoreArgs{},
/// 			},
/// 			Stages: codepipeline.PipelineStageArray{
/// 				&codepipeline.PipelineStageArgs{
/// 					Name: pulumi.String("Source"),
/// 					Actions: codepipeline.PipelineStageActionArray{
/// 						&codepipeline.PipelineStageActionArgs{
/// 							Name:     pulumi.String("Source"),
/// 							Category: pulumi.String("Source"),
/// 							Owner:    pulumi.String("AWS"),
/// 							Provider: pulumi.String("CodeStarSourceConnection"),
/// 							Version:  pulumi.String("1"),
/// 							OutputArtifacts: pulumi.StringArray{
/// 								pulumi.String("source_output"),
/// 							},
/// 							Configuration: pulumi.StringMap{
/// 								"ConnectionArn":    example.Arn,
/// 								"FullRepositoryId": pulumi.String("my-organization/test"),
/// 								"BranchName":       pulumi.String("main"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&codepipeline.PipelineStageArgs{
/// 					Actions: codepipeline.PipelineStageActionArray{
/// 						&codepipeline.PipelineStageActionArgs{},
/// 					},
/// 					Name: pulumi.String("Build"),
/// 				},
/// 				&codepipeline.PipelineStageArgs{
/// 					Actions: codepipeline.PipelineStageActionArray{
/// 						&codepipeline.PipelineStageActionArgs{},
/// 					},
/// 					Name: pulumi.String("Deploy"),
/// 				},
/// 			},
/// 			Name:    pulumi.String("tf-test-pipeline"),
/// 			RoleArn: pulumi.Any(codepipelineRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_codestarconnections_connection" "example" {
///   name          = "example-connection"
///   provider_type = "Bitbucket"
/// }
/// resource "aws_codepipeline_pipeline" "example" {
///   artifact_stores {
///   }
///   stages {
///     name = "Source"
///     actions {
///       name             = "Source"
///       category         = "Source"
///       owner            = "AWS"
///       provider         = "CodeStarSourceConnection"
///       version          = "1"
///       output_artifacts = ["source_output"]
///       configuration = {
///         "ConnectionArn"    = aws_codestarconnections_connection.example.arn
///         "FullRepositoryId" = "my-organization/test"
///         "BranchName"       = "main"
///       }
///     }
///   }
///   stages {
///     actions {
///     }
///     name = "Build"
///   }
///   stages {
///     actions {
///     }
///     name = "Deploy"
///   }
///   name     = "tf-test-pipeline"
///   role_arn = codepipelineRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codestarconnections.Connection;
/// import com.pulumi.aws.codestarconnections.ConnectionArgs;
/// import com.pulumi.aws.codepipeline.Pipeline;
/// import com.pulumi.aws.codepipeline.PipelineArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineArtifactStoreArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineStageArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineStageActionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("example-connection")
///             .providerType("Bitbucket")
///             .build());
///
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
///             .artifactStores(PipelineArtifactStoreArgs.builder()
///                 .build())
///             .stages(
///                 PipelineStageArgs.builder()
///                     .name("Source")
///                     .actions(PipelineStageActionArgs.builder()
///                         .name("Source")
///                         .category("Source")
///                         .owner("AWS")
///                         .provider("CodeStarSourceConnection")
///                         .version("1")
///                         .outputArtifacts("source_output")
///                         .configuration(Map.ofEntries(
///                             Map.entry("ConnectionArn", example.arn()),
///                             Map.entry("FullRepositoryId", "my-organization/test"),
///                             Map.entry("BranchName", "main")
///                         ))
///                         .build())
///                     .build(),
///                 PipelineStageArgs.builder()
///                     .actions(PipelineStageActionArgs.builder()
///                         .build())
///                     .name("Build")
///                     .build(),
///                 PipelineStageArgs.builder()
///                     .actions(PipelineStageActionArgs.builder()
///                         .build())
///                     .name("Deploy")
///                     .build())
///             .name("tf-test-pipeline")
///             .roleArn(codepipelineRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codestarconnections:Connection
///     properties:
///       name: example-connection
///       providerType: Bitbucket
///   examplePipeline:
///     type: aws:codepipeline:Pipeline
///     name: example
///     properties:
///       artifactStores:
///         - {}
///       stages:
///         - name: Source
///           actions:
///             - name: Source
///               category: Source
///               owner: AWS
///               provider: CodeStarSourceConnection
///               version: '1'
///               outputArtifacts:
///                 - source_output
///               configuration:
///                 ConnectionArn: ${example.arn}
///                 FullRepositoryId: my-organization/test
///                 BranchName: main
///         - actions:
///             - {}
///           name: Build
///         - actions:
///             - {}
///           name: Deploy
///       name: tf-test-pipeline
///       roleArn: ${codepipelineRole.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeStar connection.
///
///
/// Using `pulumi import`, import CodeStar connections using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codestarconnections/connection:Connection test-connection arn:aws:codestar-connections:us-west-1:0123456789:connection/79d4d357-a2ee-41e4-b350-2fe39ae59448
/// ```
class Connection extends pulumi.CustomResource {
  /// The codestar connection ARN.
  late final pulumi.Output<String> arn;
  /// The codestar connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  late final pulumi.Output<String> connectionStatus;
  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `providerType`
  late final pulumi.Output<String?> hostArn;
  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  late final pulumi.Output<String> name;
  /// The name of the external provider where your third-party code repository is configured. Valid values are `Bitbucket`, `GitHub`, `GitHubEnterpriseServer`, `GitLab` or `GitLabSelfManaged`. Changing `providerType` will create a new resource. Conflicts with `hostArn`
  late final pulumi.Output<String> providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of key-value resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_codestarconnections_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codestarconnections/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectionStatus = registerOutput<String>('connectionStatus');
    hostArn = registerOutput<String?>('hostArn');
    this.name = registerOutput<String>('name');
    providerType = registerOutput<String>('providerType');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codestarconnections/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectionStatus = registerOutput<String>('connectionStatus');
    hostArn = registerOutput<String?>('hostArn');
    this.name = registerOutput<String>('name');
    providerType = registerOutput<String>('providerType');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
