import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_s3_table_integration_source_args.dart';
import 'log_s3_table_integration_source_data_source.dart';
import 'log_s3_table_integration_source_state.dart';
import 'log_s3_table_integration_source_timeouts.dart';

/// Manages a CloudWatch Logs S3 Table Integration data source association.
/// This resource associates a data source (such as a CloudWatch log type) with an S3 Table Integration, enabling CloudWatch logs to be automatically written to S3 Tables for analytics.
///
/// For more information, see the [CloudWatch Logs S3 Tables integration documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/s3-tables-integration.html).
///
/// ## Example Usage
///
/// ### Associate All Sources (Wildcard)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogS3TableIntegrationSource("example", {
///     dataSource: {
///         name: "*",
///         type: "*",
///     },
///     integrationArn: exampleAwsObservabilityadminS3TableIntegration.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogS3TableIntegrationSource("example",
///     data_source={
///         "name": "*",
///         "type": "*",
///     },
///     integration_arn=example_aws_observabilityadmin_s3_table_integration["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogS3TableIntegrationSource("example", new()
///     {
///         DataSource = new Aws.CloudWatch.Inputs.LogS3TableIntegrationSourceDataSourceArgs
///         {
///             Name = "*",
///             Type = "*",
///         },
///         IntegrationArn = exampleAwsObservabilityadminS3TableIntegration.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogS3TableIntegrationSource(ctx, "example", &cloudwatch.LogS3TableIntegrationSourceArgs{
/// 			DataSource: &cloudwatch.LogS3TableIntegrationSourceDataSourceArgs{
/// 				Name: pulumi.String("*"),
/// 				Type: pulumi.String("*"),
/// 			},
/// 			IntegrationArn: pulumi.Any(exampleAwsObservabilityadminS3TableIntegration.Arn),
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
/// resource "aws_cloudwatch_logs3tableintegrationsource" "example" {
///   data_source = {
///     name = "*"
///     type = "*"
///   }
///   integration_arn = exampleAwsObservabilityadminS3TableIntegration.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogS3TableIntegrationSource;
/// import com.pulumi.aws.cloudwatch.LogS3TableIntegrationSourceArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogS3TableIntegrationSourceDataSourceArgs;
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
///         var example = new LogS3TableIntegrationSource("example", LogS3TableIntegrationSourceArgs.builder()
///             .dataSource(LogS3TableIntegrationSourceDataSourceArgs.builder()
///                 .name("*")
///                 .type("*")
///                 .build())
///             .integrationArn(exampleAwsObservabilityadminS3TableIntegration.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogS3TableIntegrationSource
///     properties:
///       dataSource:
///         name: '*'
///         type: '*'
///       integrationArn: ${exampleAwsObservabilityadminS3TableIntegration.arn}
/// ```
///
///
/// ### Associate a Custom Data Source
///
/// To route log stream messages from a specific custom data source into a dedicated S3 Table, tag the CloudWatch log group with `cw:datasource:name` and `cw:datasource:type`. The integration then writes matching log streams into a table named `{name}__{type}` inside the `aws-cloudwatch` table bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Tag the log group to declare it as a custom data source.
/// // Log stream messages are written to the "myapp__events" table
/// // in the aws-cloudwatch table bucket.
/// const example = new aws.cloudwatch.LogGroup("example", {
///     name: "/example/myapp",
///     tags: {
///         "cw:datasource:name": "myapp",
///         "cw:datasource:type": "events",
///     },
/// });
/// const exampleLogS3TableIntegrationSource = new aws.cloudwatch.LogS3TableIntegrationSource("example", {
///     dataSource: {
///         name: "myapp",
///         type: "events",
///     },
///     integrationArn: exampleAwsObservabilityadminS3TableIntegration.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Tag the log group to declare it as a custom data source.
/// # Log stream messages are written to the "myapp__events" table
/// # in the aws-cloudwatch table bucket.
/// example = aws.cloudwatch.LogGroup("example",
///     name="/example/myapp",
///     tags={
///         "cw:datasource:name": "myapp",
///         "cw:datasource:type": "events",
///     })
/// example_log_s3_table_integration_source = aws.cloudwatch.LogS3TableIntegrationSource("example",
///     data_source={
///         "name": "myapp",
///         "type": "events",
///     },
///     integration_arn=example_aws_observabilityadmin_s3_table_integration["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Tag the log group to declare it as a custom data source.
///     // Log stream messages are written to the "myapp__events" table
///     // in the aws-cloudwatch table bucket.
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "/example/myapp",
///         Tags =
///         {
///             { "cw:datasource:name", "myapp" },
///             { "cw:datasource:type", "events" },
///         },
///     });
///
///     var exampleLogS3TableIntegrationSource = new Aws.CloudWatch.LogS3TableIntegrationSource("example", new()
///     {
///         DataSource = new Aws.CloudWatch.Inputs.LogS3TableIntegrationSourceDataSourceArgs
///         {
///             Name = "myapp",
///             Type = "events",
///         },
///         IntegrationArn = exampleAwsObservabilityadminS3TableIntegration.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Tag the log group to declare it as a custom data source.
/// 		// Log stream messages are written to the "myapp__events" table
/// 		// in the aws-cloudwatch table bucket.
/// 		_, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("/example/myapp"),
/// 			Tags: pulumi.StringMap{
/// 				"cw:datasource:name": pulumi.String("myapp"),
/// 				"cw:datasource:type": pulumi.String("events"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogS3TableIntegrationSource(ctx, "example", &cloudwatch.LogS3TableIntegrationSourceArgs{
/// 			DataSource: &cloudwatch.LogS3TableIntegrationSourceDataSourceArgs{
/// 				Name: pulumi.String("myapp"),
/// 				Type: pulumi.String("events"),
/// 			},
/// 			IntegrationArn: pulumi.Any(exampleAwsObservabilityadminS3TableIntegration.Arn),
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
/// # Tag the log group to declare it as a custom data source.
/// # Log stream messages are written to the "myapp__events" table
/// # in the aws-cloudwatch table bucket.
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "/example/myapp"
///   tags = {
///     "cw:datasource:name" = "myapp"
///     "cw:datasource:type" = "events"
///   }
/// }
/// resource "aws_cloudwatch_logs3tableintegrationsource" "example" {
///   data_source = {
///     name = "myapp"
///     type = "events"
///   }
///   integration_arn = exampleAwsObservabilityadminS3TableIntegration.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogS3TableIntegrationSource;
/// import com.pulumi.aws.cloudwatch.LogS3TableIntegrationSourceArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogS3TableIntegrationSourceDataSourceArgs;
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
///         // Tag the log group to declare it as a custom data source.
///         // Log stream messages are written to the "myapp__events" table
///         // in the aws-cloudwatch table bucket.
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("/example/myapp")
///             .tags(Map.ofEntries(
///                 Map.entry("cw:datasource:name", "myapp"),
///                 Map.entry("cw:datasource:type", "events")
///             ))
///             .build());
///
///         var exampleLogS3TableIntegrationSource = new LogS3TableIntegrationSource("exampleLogS3TableIntegrationSource", LogS3TableIntegrationSourceArgs.builder()
///             .dataSource(LogS3TableIntegrationSourceDataSourceArgs.builder()
///                 .name("myapp")
///                 .type("events")
///                 .build())
///             .integrationArn(exampleAwsObservabilityadminS3TableIntegration.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Tag the log group to declare it as a custom data source.
///   # Log stream messages are written to the "myapp__events" table
///   # in the aws-cloudwatch table bucket.
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: /example/myapp
///       tags:
///         cw:datasource:name: myapp
///         cw:datasource:type: events
///   exampleLogS3TableIntegrationSource:
///     type: aws:cloudwatch:LogS3TableIntegrationSource
///     name: example
///     properties:
///       dataSource:
///         name: myapp
///         type: events
///       integrationArn: ${exampleAwsObservabilityadminS3TableIntegration.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `integrationArn` (String) ARN of the integration.
/// * `id` (String) ID of the association.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 Table Integration data source associations using `integrationArn` and `id` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logS3TableIntegrationSource:LogS3TableIntegrationSource example arn:aws:observabilityadmin:us-west-2:123456789012:s3tableintegration/3g5043wqe54nmw5apiugwkn1a,a8928b36-ab82-4ae2-ae5c-fcb910ec4237
/// ```
class LogS3TableIntegrationSource extends pulumi.CustomResource {
  /// Data source to associate with the S3 Table Integration. See `dataSource` Block below.
  late final pulumi.Output<LogS3TableIntegrationSourceDataSource> dataSource;
  /// ARN of the `aws.observabilityadmin.S3TableIntegration` to associate the data source with.
  late final pulumi.Output<String> integrationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<LogS3TableIntegrationSourceTimeouts?> timeouts;

  /// Creates a new [LogS3TableIntegrationSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogS3TableIntegrationSource]. {@macro pulumi_cloudwatch_log_s3_table_integration_source_log_s3_table_integration_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogS3TableIntegrationSource(
    String name, {
    LogS3TableIntegrationSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logS3TableIntegrationSource:LogS3TableIntegrationSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    dataSource = registerOutput<LogS3TableIntegrationSourceDataSource>('dataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogS3TableIntegrationSourceDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integrationArn = registerOutput<String>('integrationArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<LogS3TableIntegrationSourceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogS3TableIntegrationSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [LogS3TableIntegrationSource] resource's state with the given [name] and [id].
  static LogS3TableIntegrationSource get(
    String name,
    pulumi.Input<String> id, {
    LogS3TableIntegrationSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogS3TableIntegrationSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogS3TableIntegrationSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logS3TableIntegrationSource:LogS3TableIntegrationSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSource = registerOutput<LogS3TableIntegrationSourceDataSource>('dataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogS3TableIntegrationSourceDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integrationArn = registerOutput<String>('integrationArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<LogS3TableIntegrationSourceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogS3TableIntegrationSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [LogS3TableIntegrationSource] resource.
  LogS3TableIntegrationSource.reference(String urn)
    : super(
        'aws:cloudwatch/logS3TableIntegrationSource:LogS3TableIntegrationSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataSource = registerOutput<LogS3TableIntegrationSourceDataSource>('dataSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogS3TableIntegrationSourceDataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integrationArn = registerOutput<String>('integrationArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<LogS3TableIntegrationSourceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogS3TableIntegrationSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
