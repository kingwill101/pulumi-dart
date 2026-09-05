import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_logging_configuration_args.dart';
import 'scraper_logging_configuration_logging_destination.dart';
import 'scraper_logging_configuration_state.dart';
import 'scraper_logging_configuration_timeouts.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Scraper Logging Configuration.
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
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: exampleAwsPrometheusWorkspace.arn,
///         },
///     },
///     scrapeConfiguration: `global:
///   scrape_interval: 15s
/// scrape_configs:
///   - job_name: 'prometheus'
///     static_configs:
///       - targets: ['localhost:9090']
/// `,
/// });
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "/aws/prometheus/scraper-logs/example"});
/// const exampleScraperLoggingConfiguration = new aws.amp.ScraperLoggingConfiguration("example", {
///     loggingDestination: {
///         cloudwatchLogs: {
///             logGroupArn: pulumi.interpolate`${exampleLogGroup.arn}:*`,
///         },
///     },
///     scraperId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": example_aws_prometheus_workspace["arn"],
///         },
///     },
///     scrape_configuration="""global:
///   scrape_interval: 15s
/// scrape_configs:
///   - job_name: 'prometheus'
///     static_configs:
///       - targets: ['localhost:9090']
/// """)
/// example_log_group = aws.cloudwatch.LogGroup("example", name="/aws/prometheus/scraper-logs/example")
/// example_scraper_logging_configuration = aws.amp.ScraperLoggingConfiguration("example",
///     logging_destination={
///         "cloudwatch_logs": {
///             "log_group_arn": example_log_group.arn.apply(lambda arn: f"{arn}:*"),
///         },
///     },
///     scraper_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = exampleAwsPrometheusWorkspace.Arn,
///             },
///         },
///         ScrapeConfiguration = @"global:
///   scrape_interval: 15s
/// scrape_configs:
///   - job_name: 'prometheus'
///     static_configs:
///       - targets: ['localhost:9090']
/// ",
///     });
///
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "/aws/prometheus/scraper-logs/example",
///     });
///
///     var exampleScraperLoggingConfiguration = new Aws.Amp.ScraperLoggingConfiguration("example", new()
///     {
///         LoggingDestination = new Aws.Amp.Inputs.ScraperLoggingConfigurationLoggingDestinationArgs
///         {
///             CloudwatchLogs = new Aws.Amp.Inputs.ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs
///             {
///                 LogGroupArn = exampleLogGroup.Arn.Apply(arn => $"{arn}:*"),
///             },
///         },
///         ScraperId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// Source: &amp.ScraperSourceArgs{
/// Eks: &amp.ScraperSourceEksArgs{
/// ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:4,20-42)),
/// },
/// },
/// Destination: &amp.ScraperDestinationArgs{
/// Amp: &amp.ScraperDestinationAmpArgs{
/// WorkspaceArn: pulumi.Any(exampleAwsPrometheusWorkspace.Arn),
/// },
/// },
/// ScrapeConfiguration: pulumi.String(`global:
///   scrape_interval: 15s
/// scrape_configs:
///   - job_name: 'prometheus'
///     static_configs:
///       - targets: ['localhost:9090']
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("/aws/prometheus/scraper-logs/example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = amp.NewScraperLoggingConfiguration(ctx, "example", &amp.ScraperLoggingConfigurationArgs{
/// LoggingDestination: &amp.ScraperLoggingConfigurationLoggingDestinationArgs{
/// CloudwatchLogs: &amp.ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs{
/// LogGroupArn: exampleLogGroup.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v:*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// ScraperId: example.ID().ToIDOutput().ToStringOutput(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// resource "aws_amp_scraper" "example" {
///   source = {
///     eks = {
///       cluster_arn = exampleAwsEksCluster.arn
///       subnet_ids  = exampleAwsSubnet[*].id
///     }
///   }
///   destination = {
///     amp = {
///       workspace_arn = exampleAwsPrometheusWorkspace.arn
///     }
///   }
///   scrape_configuration = "global:\n  scrape_interval: 15s\nscrape_configs:\n  - job_name: 'prometheus'\n    static_configs:\n      - targets: ['localhost:9090']\n"
/// }
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "/aws/prometheus/scraper-logs/example"
/// }
/// resource "aws_amp_scraperloggingconfiguration" "example" {
///   logging_destination = {
///     cloudwatch_logs = {
///       log_group_arn ="${aws_cloudwatch_loggroup.example.arn}:*"
///     }
///   }
///   scraper_id = aws_amp_scraper.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.amp.ScraperLoggingConfiguration;
/// import com.pulumi.aws.amp.ScraperLoggingConfigurationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperLoggingConfigurationLoggingDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(exampleAwsPrometheusWorkspace.arn())
///                     .build())
///                 .build())
///             .scrapeConfiguration("""
/// global:
///   scrape_interval: 15s
/// scrape_configs:
///   - job_name: 'prometheus'
///     static_configs:
///       - targets: ['localhost:9090']
///             """)
///             .build());
///
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("/aws/prometheus/scraper-logs/example")
///             .build());
///
///         var exampleScraperLoggingConfiguration = new ScraperLoggingConfiguration("exampleScraperLoggingConfiguration", ScraperLoggingConfigurationArgs.builder()
///             .loggingDestination(ScraperLoggingConfigurationLoggingDestinationArgs.builder()
///                 .cloudwatchLogs(ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs.builder()
///                     .logGroupArn(exampleLogGroup.arn().applyValue(_arn -> String.format("%s:*", _arn)))
///                     .build())
///                 .build())
///             .scraperId(example.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### With Scraper Components
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.ScraperLoggingConfiguration("example", {
///     loggingDestination: {
///         cloudwatchLogs: {
///             logGroupArn: `${exampleAwsCloudwatchLogGroup.arn}:*`,
///         },
///     },
///     scraperId: exampleAwsPrometheusScraper.id,
///     scraperComponents: [
///         "COLLECTOR",
///         "EXPORTER",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.ScraperLoggingConfiguration("example",
///     logging_destination={
///         "cloudwatch_logs": {
///             "log_group_arn": f"{example_aws_cloudwatch_log_group['arn']}:*",
///         },
///     },
///     scraper_id=example_aws_prometheus_scraper["id"],
///     scraper_components=[
///         "COLLECTOR",
///         "EXPORTER",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.ScraperLoggingConfiguration("example", new()
///     {
///         LoggingDestination = new Aws.Amp.Inputs.ScraperLoggingConfigurationLoggingDestinationArgs
///         {
///             CloudwatchLogs = new Aws.Amp.Inputs.ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs
///             {
///                 LogGroupArn = $"{exampleAwsCloudwatchLogGroup.Arn}:*",
///             },
///         },
///         ScraperId = exampleAwsPrometheusScraper.Id,
///         ScraperComponents = new[]
///         {
///             "COLLECTOR",
///             "EXPORTER",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraperLoggingConfiguration(ctx, "example", &amp.ScraperLoggingConfigurationArgs{
/// 			LoggingDestination: &amp.ScraperLoggingConfigurationLoggingDestinationArgs{
/// 				CloudwatchLogs: &amp.ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs{
/// 					LogGroupArn: pulumi.Sprintf("%v:*", exampleAwsCloudwatchLogGroup.Arn),
/// 				},
/// 			},
/// 			ScraperId: pulumi.Any(exampleAwsPrometheusScraper.Id),
/// 			ScraperComponents: pulumi.StringArray{
/// 				pulumi.String("COLLECTOR"),
/// 				pulumi.String("EXPORTER"),
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
/// resource "aws_amp_scraperloggingconfiguration" "example" {
///   logging_destination = {
///     cloudwatch_logs = {
///       log_group_arn ="${exampleAwsCloudwatchLogGroup.arn}:*"
///     }
///   }
///   scraper_id         = exampleAwsPrometheusScraper.id
///   scraper_components = ["COLLECTOR", "EXPORTER"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.ScraperLoggingConfiguration;
/// import com.pulumi.aws.amp.ScraperLoggingConfigurationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperLoggingConfigurationLoggingDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs;
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
///         var example = new ScraperLoggingConfiguration("example", ScraperLoggingConfigurationArgs.builder()
///             .loggingDestination(ScraperLoggingConfigurationLoggingDestinationArgs.builder()
///                 .cloudwatchLogs(ScraperLoggingConfigurationLoggingDestinationCloudwatchLogsArgs.builder()
///                     .logGroupArn(String.format("%s:*", exampleAwsCloudwatchLogGroup.arn()))
///                     .build())
///                 .build())
///             .scraperId(exampleAwsPrometheusScraper.id())
///             .scraperComponents(
///                 "COLLECTOR",
///                 "EXPORTER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:ScraperLoggingConfiguration
///     properties:
///       loggingDestination:
///         cloudwatchLogs:
///           logGroupArn: ${exampleAwsCloudwatchLogGroup.arn}:*
///       scraperId: ${exampleAwsPrometheusScraper.id}
///       scraperComponents:
///         - COLLECTOR
///         - EXPORTER
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `scraperId` (String) ID of the scraper.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import scraper logging configurations using `scraperId`. For example:
///
/// ```sh
/// $ pulumi import aws:amp/scraperLoggingConfiguration:ScraperLoggingConfiguration example s-b6f487db-4761-4930-9215-e9d588a7efe2
/// ```
class ScraperLoggingConfiguration extends pulumi.CustomResource {
  /// Configuration block for the logging destination. See `loggingDestination` Block below.
  late final pulumi.Output<ScraperLoggingConfigurationLoggingDestination> loggingDestination;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Scraper components to log. Valid values: `COLLECTOR`, `EXPORTER`, `SERVICE_DISCOVERY`.
  late final pulumi.Output<List<String>> scraperComponents;
  /// ID of the scraper to configure logging for.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> scraperId;
  late final pulumi.Output<ScraperLoggingConfigurationTimeouts?> timeouts;

  /// Creates a new [ScraperLoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScraperLoggingConfiguration]. {@macro pulumi_amp_scraper_logging_configuration_scraper_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScraperLoggingConfiguration(
    String name, {
    ScraperLoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/scraperLoggingConfiguration:ScraperLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    loggingDestination = registerOutput<ScraperLoggingConfigurationLoggingDestination>('loggingDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperLoggingConfigurationLoggingDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scraperComponents = registerOutput<List<String>>('scraperComponents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scraperId = registerOutput<String>('scraperId');
    timeouts = registerOutput<ScraperLoggingConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ScraperLoggingConfiguration] resource's state with the given [name] and [id].
  static ScraperLoggingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ScraperLoggingConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ScraperLoggingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ScraperLoggingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/scraperLoggingConfiguration:ScraperLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    loggingDestination = registerOutput<ScraperLoggingConfigurationLoggingDestination>('loggingDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperLoggingConfigurationLoggingDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scraperComponents = registerOutput<List<String>>('scraperComponents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scraperId = registerOutput<String>('scraperId');
    timeouts = registerOutput<ScraperLoggingConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ScraperLoggingConfiguration] resource.
  ScraperLoggingConfiguration.reference(String urn)
    : super(
        'aws:amp/scraperLoggingConfiguration:ScraperLoggingConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    loggingDestination = registerOutput<ScraperLoggingConfigurationLoggingDestination>('loggingDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperLoggingConfigurationLoggingDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scraperComponents = registerOutput<List<String>>('scraperComponents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scraperId = registerOutput<String>('scraperId');
    timeouts = registerOutput<ScraperLoggingConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScraperLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
