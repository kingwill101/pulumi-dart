import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_data_delivery.dart';
import 'project_state.dart';

/// Provides a CloudWatch Evidently Project resource.
///
/// &gt; **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Project("example", {
///     name: "Example",
///     description: "Example Description",
///     tags: {
///         Key1: "example Project",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Project("example",
///     name="Example",
///     description="Example Description",
///     tags={
///         "Key1": "example Project",
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
///     var example = new Aws.Evidently.Project("example", new()
///     {
///         Name = "Example",
///         Description = "Example Description",
///         Tags =
///         {
///             { "Key1", "example Project" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewProject(ctx, "example", &evidently.ProjectArgs{
/// 			Name:        pulumi.String("Example"),
/// 			Description: pulumi.String("Example Description"),
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("example Project"),
/// 			},
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
/// resource "aws_evidently_project" "example" {
///   name        = "Example"
///   description = "Example Description"
///   tags = {
///     "Key1" = "example Project"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Project;
/// import com.pulumi.aws.evidently.ProjectArgs;
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
///         var example = new Project("example", ProjectArgs.builder()
///             .name("Example")
///             .description("Example Description")
///             .tags(Map.of("Key1", "example Project"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Project
///     properties:
///       name: Example
///       description: Example Description
///       tags:
///         Key1: example Project
/// ```
///
///
/// ### Store evaluation events in a CloudWatch Log Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Project("example", {
///     name: "Example",
///     description: "Example Description",
///     dataDelivery: {
///         cloudwatchLogs: {
///             logGroup: "example-log-group-name",
///         },
///     },
///     tags: {
///         Key1: "example Project",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Project("example",
///     name="Example",
///     description="Example Description",
///     data_delivery={
///         "cloudwatch_logs": {
///             "log_group": "example-log-group-name",
///         },
///     },
///     tags={
///         "Key1": "example Project",
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
///     var example = new Aws.Evidently.Project("example", new()
///     {
///         Name = "Example",
///         Description = "Example Description",
///         DataDelivery = new Aws.Evidently.Inputs.ProjectDataDeliveryArgs
///         {
///             CloudwatchLogs = new Aws.Evidently.Inputs.ProjectDataDeliveryCloudwatchLogsArgs
///             {
///                 LogGroup = "example-log-group-name",
///             },
///         },
///         Tags =
///         {
///             { "Key1", "example Project" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewProject(ctx, "example", &evidently.ProjectArgs{
/// 			Name:        pulumi.String("Example"),
/// 			Description: pulumi.String("Example Description"),
/// 			DataDelivery: &evidently.ProjectDataDeliveryArgs{
/// 				CloudwatchLogs: &evidently.ProjectDataDeliveryCloudwatchLogsArgs{
/// 					LogGroup: pulumi.String("example-log-group-name"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("example Project"),
/// 			},
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
/// resource "aws_evidently_project" "example" {
///   name        = "Example"
///   description = "Example Description"
///   data_delivery = {
///     cloudwatch_logs = {
///       log_group = "example-log-group-name"
///     }
///   }
///   tags = {
///     "Key1" = "example Project"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Project;
/// import com.pulumi.aws.evidently.ProjectArgs;
/// import com.pulumi.aws.evidently.inputs.ProjectDataDeliveryArgs;
/// import com.pulumi.aws.evidently.inputs.ProjectDataDeliveryCloudwatchLogsArgs;
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
///         var example = new Project("example", ProjectArgs.builder()
///             .name("Example")
///             .description("Example Description")
///             .dataDelivery(ProjectDataDeliveryArgs.builder()
///                 .cloudwatchLogs(ProjectDataDeliveryCloudwatchLogsArgs.builder()
///                     .logGroup("example-log-group-name")
///                     .build())
///                 .build())
///             .tags(Map.of("Key1", "example Project"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Project
///     properties:
///       name: Example
///       description: Example Description
///       dataDelivery:
///         cloudwatchLogs:
///           logGroup: example-log-group-name
///       tags:
///         Key1: example Project
/// ```
///
///
/// ### Store evaluation events in an S3 bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Project("example", {
///     name: "Example",
///     description: "Example Description",
///     dataDelivery: {
///         s3Destination: {
///             bucket: "example-bucket-name",
///             prefix: "example",
///         },
///     },
///     tags: {
///         Key1: "example Project",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Project("example",
///     name="Example",
///     description="Example Description",
///     data_delivery={
///         "s3_destination": {
///             "bucket": "example-bucket-name",
///             "prefix": "example",
///         },
///     },
///     tags={
///         "Key1": "example Project",
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
///     var example = new Aws.Evidently.Project("example", new()
///     {
///         Name = "Example",
///         Description = "Example Description",
///         DataDelivery = new Aws.Evidently.Inputs.ProjectDataDeliveryArgs
///         {
///             S3Destination = new Aws.Evidently.Inputs.ProjectDataDeliveryS3DestinationArgs
///             {
///                 Bucket = "example-bucket-name",
///                 Prefix = "example",
///             },
///         },
///         Tags =
///         {
///             { "Key1", "example Project" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewProject(ctx, "example", &evidently.ProjectArgs{
/// 			Name:        pulumi.String("Example"),
/// 			Description: pulumi.String("Example Description"),
/// 			DataDelivery: &evidently.ProjectDataDeliveryArgs{
/// 				S3Destination: &evidently.ProjectDataDeliveryS3DestinationArgs{
/// 					Bucket: pulumi.String("example-bucket-name"),
/// 					Prefix: pulumi.String("example"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("example Project"),
/// 			},
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
/// resource "aws_evidently_project" "example" {
///   name        = "Example"
///   description = "Example Description"
///   data_delivery = {
///     s3_destination = {
///       bucket = "example-bucket-name"
///       prefix = "example"
///     }
///   }
///   tags = {
///     "Key1" = "example Project"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Project;
/// import com.pulumi.aws.evidently.ProjectArgs;
/// import com.pulumi.aws.evidently.inputs.ProjectDataDeliveryArgs;
/// import com.pulumi.aws.evidently.inputs.ProjectDataDeliveryS3DestinationArgs;
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
///         var example = new Project("example", ProjectArgs.builder()
///             .name("Example")
///             .description("Example Description")
///             .dataDelivery(ProjectDataDeliveryArgs.builder()
///                 .s3Destination(ProjectDataDeliveryS3DestinationArgs.builder()
///                     .bucket("example-bucket-name")
///                     .prefix("example")
///                     .build())
///                 .build())
///             .tags(Map.of("Key1", "example Project"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Project
///     properties:
///       name: Example
///       description: Example Description
///       dataDelivery:
///         s3Destination:
///           bucket: example-bucket-name
///           prefix: example
///       tags:
///         Key1: example Project
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Evidently Project using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:evidently/project:Project example arn:aws:evidently:us-east-1:123456789012:segment/example
/// ```
class Project extends pulumi.CustomResource {
  /// The number of ongoing experiments currently in the project.
  late final pulumi.Output<int> activeExperimentCount;
  /// The number of ongoing launches currently in the project.
  late final pulumi.Output<int> activeLaunchCount;
  /// The ARN of the project.
  late final pulumi.Output<String> arn;
  /// The date and time that the project is created.
  late final pulumi.Output<String> createdTime;
  /// A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below.
  late final pulumi.Output<ProjectDataDelivery?> dataDelivery;
  /// Specifies the description of the project.
  late final pulumi.Output<String?> description;
  /// The number of experiments currently in the project. This includes all experiments that have been created and not deleted, whether they are ongoing or not.
  late final pulumi.Output<int> experimentCount;
  /// The number of features currently in the project.
  late final pulumi.Output<int> featureCount;
  /// The date and time that the project was most recently updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// The number of launches currently in the project. This includes all launches that have been created and not deleted, whether they are ongoing or not.
  late final pulumi.Output<int> launchCount;
  /// A name for the project.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The current state of the project. Valid values are `AVAILABLE` and `UPDATING`.
  late final pulumi.Output<String> status;
  /// Tags to apply to the project. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_evidently_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:evidently/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeExperimentCount = registerOutput<int>('activeExperimentCount');
    activeLaunchCount = registerOutput<int>('activeLaunchCount');
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    dataDelivery = registerOutput<ProjectDataDelivery?>('dataDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectDataDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    experimentCount = registerOutput<int>('experimentCount');
    featureCount = registerOutput<int>('featureCount');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    launchCount = registerOutput<int>('launchCount');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:evidently/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeExperimentCount = registerOutput<int>('activeExperimentCount');
    activeLaunchCount = registerOutput<int>('activeLaunchCount');
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    dataDelivery = registerOutput<ProjectDataDelivery?>('dataDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectDataDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    experimentCount = registerOutput<int>('experimentCount');
    featureCount = registerOutput<int>('featureCount');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    launchCount = registerOutput<int>('launchCount');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
