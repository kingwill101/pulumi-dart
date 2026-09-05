import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_args.dart';
import 'link_link_configuration.dart';
import 'link_state.dart';

/// Resource for managing an AWS CloudWatch Observability Access Manager Link.
///
/// &gt; **NOTE:** Creating an `aws.oam.Link` may sometimes fail if the `aws.oam.SinkPolicy` for the attached `aws.oam.Sink` is not created before the `aws.oam.Link`. To prevent this, declare an explicit dependency using a `dependsOn` meta-argument.
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
/// const exampleSink = new aws.oam.Sink("example", {});
/// const exampleSinkPolicy = new aws.oam.SinkPolicy("example", {sinkIdentifier: exampleSink.arn});
/// const example = new aws.oam.Link("example", {
///     labelTemplate: "$AccountName",
///     resourceTypes: ["AWS::CloudWatch::Metric"],
///     sinkIdentifier: exampleSink.arn,
///     tags: {
///         Env: "prod",
///     },
/// }, {
///     dependsOn: [exampleSinkPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_sink = aws.oam.Sink("example")
/// example_sink_policy = aws.oam.SinkPolicy("example", sink_identifier=example_sink.arn)
/// example = aws.oam.Link("example",
///     label_template="$AccountName",
///     resource_types=["AWS::CloudWatch::Metric"],
///     sink_identifier=example_sink.arn,
///     tags={
///         "Env": "prod",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_sink_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSink = new Aws.Oam.Sink("example");
///
///     var exampleSinkPolicy = new Aws.Oam.SinkPolicy("example", new()
///     {
///         SinkIdentifier = exampleSink.Arn,
///     });
///
///     var example = new Aws.Oam.Link("example", new()
///     {
///         LabelTemplate = "$AccountName",
///         ResourceTypes = new[]
///         {
///             "AWS::CloudWatch::Metric",
///         },
///         SinkIdentifier = exampleSink.Arn,
///         Tags =
///         {
///             { "Env", "prod" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSinkPolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleSink, err := oam.NewSink(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSinkPolicy, err := oam.NewSinkPolicy(ctx, "example", &oam.SinkPolicyArgs{
/// 			SinkIdentifier: exampleSink.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oam.NewLink(ctx, "example", &oam.LinkArgs{
/// 			LabelTemplate: pulumi.String("$AccountName"),
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("AWS::CloudWatch::Metric"),
/// 			},
/// 			SinkIdentifier: exampleSink.Arn,
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("prod"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSinkPolicy,
/// 		}))
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
/// resource "aws_oam_link" "example" {
///   depends_on      = [aws_oam_sinkpolicy.example]
///   label_template  = "$AccountName"
///   resource_types  = ["AWS::CloudWatch::Metric"]
///   sink_identifier = aws_oam_sink.example.arn
///   tags = {
///     "Env" = "prod"
///   }
/// }
/// resource "aws_oam_sink" "example" {
/// }
/// resource "aws_oam_sinkpolicy" "example" {
///   sink_identifier = aws_oam_sink.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.oam.Sink;
/// import com.pulumi.aws.oam.SinkPolicy;
/// import com.pulumi.aws.oam.SinkPolicyArgs;
/// import com.pulumi.aws.oam.Link;
/// import com.pulumi.aws.oam.LinkArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleSink = new Sink("exampleSink");
///
///         var exampleSinkPolicy = new SinkPolicy("exampleSinkPolicy", SinkPolicyArgs.builder()
///             .sinkIdentifier(exampleSink.arn())
///             .build());
///
///         var example = new Link("example", LinkArgs.builder()
///             .labelTemplate("$AccountName")
///             .resourceTypes("AWS::CloudWatch::Metric")
///             .sinkIdentifier(exampleSink.arn())
///             .tags(Map.of("Env", "prod"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSinkPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:oam:Link
///     properties:
///       labelTemplate: $AccountName
///       resourceTypes:
///         - AWS::CloudWatch::Metric
///       sinkIdentifier: ${exampleSink.arn}
///       tags:
///         Env: prod
///     options:
///       dependsOn:
///         - ${exampleSinkPolicy}
///   exampleSink:
///     type: aws:oam:Sink
///     name: example
///   exampleSinkPolicy:
///     type: aws:oam:SinkPolicy
///     name: example
///     properties:
///       sinkIdentifier: ${exampleSink.arn}
/// ```
///
///
/// ### Log Group Filtering
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.oam.Link("example", {
///     linkConfiguration: {
///         logGroupConfiguration: {
///             filter: "LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'",
///         },
///     },
///     labelTemplate: "$AccountName",
///     resourceTypes: ["AWS::Logs::LogGroup"],
///     sinkIdentifier: exampleAwsOamSink.arn,
/// }, {
///     dependsOn: [exampleAwsOamSinkPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.Link("example",
///     link_configuration={
///         "log_group_configuration": {
///             "filter": "LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'",
///         },
///     },
///     label_template="$AccountName",
///     resource_types=["AWS::Logs::LogGroup"],
///     sink_identifier=example_aws_oam_sink["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_oam_sink_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Oam.Link("example", new()
///     {
///         LinkConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationArgs
///         {
///             LogGroupConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationLogGroupConfigurationArgs
///             {
///                 Filter = "LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'",
///             },
///         },
///         LabelTemplate = "$AccountName",
///         ResourceTypes = new[]
///         {
///             "AWS::Logs::LogGroup",
///         },
///         SinkIdentifier = exampleAwsOamSink.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsOamSinkPolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oam.NewLink(ctx, "example", &oam.LinkArgs{
/// 			LinkConfiguration: &oam.LinkLinkConfigurationArgs{
/// 				LogGroupConfiguration: &oam.LinkLinkConfigurationLogGroupConfigurationArgs{
/// 					Filter: pulumi.String("LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'"),
/// 				},
/// 			},
/// 			LabelTemplate: pulumi.String("$AccountName"),
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("AWS::Logs::LogGroup"),
/// 			},
/// 			SinkIdentifier: pulumi.Any(exampleAwsOamSink.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsOamSinkPolicy,
/// 		}))
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
/// resource "aws_oam_link" "example" {
///   depends_on = [exampleAwsOamSinkPolicy]
///   link_configuration = {
///     log_group_configuration = {
///       filter = "LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'"
///     }
///   }
///   label_template  = "$AccountName"
///   resource_types  = ["AWS::Logs::LogGroup"]
///   sink_identifier = exampleAwsOamSink.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.oam.Link;
/// import com.pulumi.aws.oam.LinkArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationLogGroupConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Link("example", LinkArgs.builder()
///             .linkConfiguration(LinkLinkConfigurationArgs.builder()
///                 .logGroupConfiguration(LinkLinkConfigurationLogGroupConfigurationArgs.builder()
///                     .filter("LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'")
///                     .build())
///                 .build())
///             .labelTemplate("$AccountName")
///             .resourceTypes("AWS::Logs::LogGroup")
///             .sinkIdentifier(exampleAwsOamSink.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsOamSinkPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:oam:Link
///     properties:
///       linkConfiguration:
///         logGroupConfiguration:
///           filter: LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'
///       labelTemplate: $AccountName
///       resourceTypes:
///         - AWS::Logs::LogGroup
///       sinkIdentifier: ${exampleAwsOamSink.arn}
///     options:
///       dependsOn:
///         - ${exampleAwsOamSinkPolicy}
/// ```
///
///
/// ### Metric Filtering
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.oam.Link("example", {
///     linkConfiguration: {
///         metricConfiguration: {
///             filter: "Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')",
///         },
///     },
///     labelTemplate: "$AccountName",
///     resourceTypes: ["AWS::CloudWatch::Metric"],
///     sinkIdentifier: exampleAwsOamSink.arn,
/// }, {
///     dependsOn: [exampleAwsOamSinkPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.Link("example",
///     link_configuration={
///         "metric_configuration": {
///             "filter": "Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')",
///         },
///     },
///     label_template="$AccountName",
///     resource_types=["AWS::CloudWatch::Metric"],
///     sink_identifier=example_aws_oam_sink["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_oam_sink_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Oam.Link("example", new()
///     {
///         LinkConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationArgs
///         {
///             MetricConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationMetricConfigurationArgs
///             {
///                 Filter = "Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')",
///             },
///         },
///         LabelTemplate = "$AccountName",
///         ResourceTypes = new[]
///         {
///             "AWS::CloudWatch::Metric",
///         },
///         SinkIdentifier = exampleAwsOamSink.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsOamSinkPolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oam.NewLink(ctx, "example", &oam.LinkArgs{
/// 			LinkConfiguration: &oam.LinkLinkConfigurationArgs{
/// 				MetricConfiguration: &oam.LinkLinkConfigurationMetricConfigurationArgs{
/// 					Filter: pulumi.String("Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')"),
/// 				},
/// 			},
/// 			LabelTemplate: pulumi.String("$AccountName"),
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("AWS::CloudWatch::Metric"),
/// 			},
/// 			SinkIdentifier: pulumi.Any(exampleAwsOamSink.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsOamSinkPolicy,
/// 		}))
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
/// resource "aws_oam_link" "example" {
///   depends_on = [exampleAwsOamSinkPolicy]
///   link_configuration = {
///     metric_configuration = {
///       filter = "Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')"
///     }
///   }
///   label_template  = "$AccountName"
///   resource_types  = ["AWS::CloudWatch::Metric"]
///   sink_identifier = exampleAwsOamSink.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.oam.Link;
/// import com.pulumi.aws.oam.LinkArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationMetricConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Link("example", LinkArgs.builder()
///             .linkConfiguration(LinkLinkConfigurationArgs.builder()
///                 .metricConfiguration(LinkLinkConfigurationMetricConfigurationArgs.builder()
///                     .filter("Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')")
///                     .build())
///                 .build())
///             .labelTemplate("$AccountName")
///             .resourceTypes("AWS::CloudWatch::Metric")
///             .sinkIdentifier(exampleAwsOamSink.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsOamSinkPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:oam:Link
///     properties:
///       linkConfiguration:
///         metricConfiguration:
///           filter: Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')
///       labelTemplate: $AccountName
///       resourceTypes:
///         - AWS::CloudWatch::Metric
///       sinkIdentifier: ${exampleAwsOamSink.arn}
///     options:
///       dependsOn:
///         - ${exampleAwsOamSinkPolicy}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Access Manager Link using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:oam/link:Link example arn:aws:oam:us-west-2:123456789012:link/link-id
/// ```
class Link extends pulumi.CustomResource {
  /// ARN of the link.
  late final pulumi.Output<String> arn;
  /// Label that is assigned to this link.
  late final pulumi.Output<String> label;
  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  late final pulumi.Output<String> labelTemplate;
  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `linkConfiguration` Block for details.
  late final pulumi.Output<LinkLinkConfiguration?> linkConfiguration;
  /// ID string that AWS generated as part of the link ARN.
  late final pulumi.Output<String> linkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Types of data that the source account shares with the monitoring account.
  late final pulumi.Output<List<String>> resourceTypes;
  /// ARN of the sink that is used for this link.
  late final pulumi.Output<String> sinkArn;
  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> sinkIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Link].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Link]. {@macro pulumi_oam_link_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Link(
    String name, {
    LinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:oam/link:Link',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    label = registerOutput<String>('label');
    labelTemplate = registerOutput<String>('labelTemplate');
    linkConfiguration = registerOutput<LinkLinkConfiguration?>('linkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkId = registerOutput<String>('linkId');
    region = registerOutput<String>('region');
    resourceTypes = registerOutput<List<String>>('resourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sinkArn = registerOutput<String>('sinkArn');
    sinkIdentifier = registerOutput<String>('sinkIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Link] resource's state with the given [name] and [id].
  static Link get(
    String name,
    pulumi.Input<String> id, {
    LinkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Link._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Link._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:oam/link:Link',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    label = registerOutput<String>('label');
    labelTemplate = registerOutput<String>('labelTemplate');
    linkConfiguration = registerOutput<LinkLinkConfiguration?>('linkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkId = registerOutput<String>('linkId');
    region = registerOutput<String>('region');
    resourceTypes = registerOutput<List<String>>('resourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sinkArn = registerOutput<String>('sinkArn');
    sinkIdentifier = registerOutput<String>('sinkIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Link] resource.
  Link.reference(String urn)
    : super(
        'aws:oam/link:Link',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    label = registerOutput<String>('label');
    labelTemplate = registerOutput<String>('labelTemplate');
    linkConfiguration = registerOutput<LinkLinkConfiguration?>('linkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkId = registerOutput<String>('linkId');
    region = registerOutput<String>('region');
    resourceTypes = registerOutput<List<String>>('resourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sinkArn = registerOutput<String>('sinkArn');
    sinkIdentifier = registerOutput<String>('sinkIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
