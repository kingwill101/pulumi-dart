import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_args.dart';
import 'trigger_trigger.dart';

/// Provides a CodeCommit Trigger Resource.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.codecommit.Repository("test", {repositoryName: "test"});
/// const testTrigger = new aws.codecommit.Trigger("test", {
///     repositoryName: test.repositoryName,
///     triggers: [{
///         name: "all",
///         events: ["all"],
///         destinationArn: testAwsSnsTopic.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codecommit.Repository("test", repository_name="test")
/// test_trigger = aws.codecommit.Trigger("test",
///     repository_name=test.repository_name,
///     triggers=[{
///         "name": "all",
///         "events": ["all"],
///         "destination_arn": test_aws_sns_topic["arn"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CodeCommit.Repository("test", new()
///     {
///         RepositoryName = "test",
///     });
///
///     var testTrigger = new Aws.CodeCommit.Trigger("test", new()
///     {
///         RepositoryName = test.RepositoryName,
///         Triggers = new[]
///         {
///             new Aws.CodeCommit.Inputs.TriggerTriggerArgs
///             {
///                 Name = "all",
///                 Events = new[]
///                 {
///                     "all",
///                 },
///                 DestinationArn = testAwsSnsTopic.Arn,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := codecommit.NewRepository(ctx, "test", &codecommit.RepositoryArgs{
/// 			RepositoryName: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codecommit.NewTrigger(ctx, "test", &codecommit.TriggerArgs{
/// 			RepositoryName: test.RepositoryName,
/// 			Triggers: codecommit.TriggerTriggerArray{
/// 				&codecommit.TriggerTriggerArgs{
/// 					Name: pulumi.String("all"),
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("all"),
/// 					},
/// 					DestinationArn: pulumi.Any(testAwsSnsTopic.Arn),
/// 				},
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
/// import com.pulumi.aws.codecommit.Repository;
/// import com.pulumi.aws.codecommit.RepositoryArgs;
/// import com.pulumi.aws.codecommit.Trigger;
/// import com.pulumi.aws.codecommit.TriggerArgs;
/// import com.pulumi.aws.codecommit.inputs.TriggerTriggerArgs;
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
///         var test = new Repository("test", RepositoryArgs.builder()
///             .repositoryName("test")
///             .build());
///
///         var testTrigger = new Trigger("testTrigger", TriggerArgs.builder()
///             .repositoryName(test.repositoryName())
///             .triggers(TriggerTriggerArgs.builder()
///                 .name("all")
///                 .events("all")
///                 .destinationArn(testAwsSnsTopic.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:codecommit:Repository
///     properties:
///       repositoryName: test
///   testTrigger:
///     type: aws:codecommit:Trigger
///     name: test
///     properties:
///       repositoryName: ${test.repositoryName}
///       triggers:
///         - name: all
///           events:
///             - all
///           destinationArn: ${testAwsSnsTopic.arn}
/// ```
class Trigger extends pulumi.CustomResource {
  /// System-generated unique identifier.
  late final pulumi.Output<String> configurationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name for the repository. This needs to be less than 100 characters.
  late final pulumi.Output<String> repositoryName;

  /// The name of the trigger.
  late final pulumi.Output<List<TriggerTrigger>> triggers;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_codecommit_trigger_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codecommit/trigger:Trigger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.configurationId = registerOutput<String>('configurationId');
    this.region = registerOutput<String>('region');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.triggers = registerOutput<List<TriggerTrigger>>('triggers');
  }
}
