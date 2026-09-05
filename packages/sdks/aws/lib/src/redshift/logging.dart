import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_args.dart';
import 'logging_state.dart';

/// Resource for managing an AWS Redshift Logging configuration.
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
/// const example = new aws.redshift.Logging("example", {
///     clusterIdentifier: exampleAwsRedshiftCluster.id,
///     logDestinationType: "cloudwatch",
///     logExports: [
///         "connectionlog",
///         "userlog",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Logging("example",
///     cluster_identifier=example_aws_redshift_cluster["id"],
///     log_destination_type="cloudwatch",
///     log_exports=[
///         "connectionlog",
///         "userlog",
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
///     var example = new Aws.RedShift.Logging("example", new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.Id,
///         LogDestinationType = "cloudwatch",
///         LogExports = new[]
///         {
///             "connectionlog",
///             "userlog",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewLogging(ctx, "example", &redshift.LoggingArgs{
/// 			ClusterIdentifier:  pulumi.Any(exampleAwsRedshiftCluster.Id),
/// 			LogDestinationType: pulumi.String("cloudwatch"),
/// 			LogExports: pulumi.StringArray{
/// 				pulumi.String("connectionlog"),
/// 				pulumi.String("userlog"),
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
/// resource "aws_redshift_logging" "example" {
///   cluster_identifier   = exampleAwsRedshiftCluster.id
///   log_destination_type = "cloudwatch"
///   log_exports          = ["connectionlog", "userlog"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.Logging;
/// import com.pulumi.aws.redshift.LoggingArgs;
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
///         var example = new Logging("example", LoggingArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.id())
///             .logDestinationType("cloudwatch")
///             .logExports(
///                 "connectionlog",
///                 "userlog")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:Logging
///     properties:
///       clusterIdentifier: ${exampleAwsRedshiftCluster.id}
///       logDestinationType: cloudwatch
///       logExports:
///         - connectionlog
///         - userlog
/// ```
///
///
/// ### S3 Destination Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Logging("example", {
///     clusterIdentifier: exampleAwsRedshiftCluster.id,
///     logDestinationType: "s3",
///     bucketName: exampleAwsS3Bucket.id,
///     s3KeyPrefix: "example-prefix/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Logging("example",
///     cluster_identifier=example_aws_redshift_cluster["id"],
///     log_destination_type="s3",
///     bucket_name=example_aws_s3_bucket["id"],
///     s3_key_prefix="example-prefix/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.Logging("example", new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.Id,
///         LogDestinationType = "s3",
///         BucketName = exampleAwsS3Bucket.Id,
///         S3KeyPrefix = "example-prefix/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewLogging(ctx, "example", &redshift.LoggingArgs{
/// 			ClusterIdentifier:  pulumi.Any(exampleAwsRedshiftCluster.Id),
/// 			LogDestinationType: pulumi.String("s3"),
/// 			BucketName:         pulumi.Any(exampleAwsS3Bucket.Id),
/// 			S3KeyPrefix:        pulumi.String("example-prefix/"),
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
/// resource "aws_redshift_logging" "example" {
///   cluster_identifier   = exampleAwsRedshiftCluster.id
///   log_destination_type = "s3"
///   bucket_name          = exampleAwsS3Bucket.id
///   s3_key_prefix        = "example-prefix/"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.Logging;
/// import com.pulumi.aws.redshift.LoggingArgs;
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
///         var example = new Logging("example", LoggingArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.id())
///             .logDestinationType("s3")
///             .bucketName(exampleAwsS3Bucket.id())
///             .s3KeyPrefix("example-prefix/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:Logging
///     properties:
///       clusterIdentifier: ${exampleAwsRedshiftCluster.id}
///       logDestinationType: s3
///       bucketName: ${exampleAwsS3Bucket.id}
///       s3KeyPrefix: example-prefix/
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Logging using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/logging:Logging example cluster-id-12345678
/// ```
class Logging extends pulumi.CustomResource {
  /// Name of an existing S3 bucket where the log files are to be stored. Required when `logDestinationType` is `s3`. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  late final pulumi.Output<String?> bucketName;
  /// Identifier of the source cluster.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> clusterIdentifier;
  /// Log destination type. Valid values are `s3` and `cloudwatch`.
  late final pulumi.Output<String?> logDestinationType;
  /// Collection of exported log types. Required when `logDestinationType` is `cloudwatch`. Valid values are `connectionlog`, `useractivitylog`, and `userlog`.
  late final pulumi.Output<List<String>?> logExports;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Prefix applied to the log file names.
  late final pulumi.Output<String?> s3KeyPrefix;

  /// Creates a new [Logging].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Logging]. {@macro pulumi_redshift_logging_logging_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Logging(
    String name, {
    LoggingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/logging:Logging',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucketName = registerOutput<String?>('bucketName');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    logDestinationType = registerOutput<String?>('logDestinationType');
    logExports = registerOutput<List<String>?>('logExports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
  }

  /// Gets an existing [Logging] resource's state with the given [name] and [id].
  static Logging get(
    String name,
    pulumi.Input<String> id, {
    LoggingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Logging._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Logging._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/logging:Logging',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketName = registerOutput<String?>('bucketName');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    logDestinationType = registerOutput<String?>('logDestinationType');
    logExports = registerOutput<List<String>?>('logExports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
  }

  /// Creates a typed reference to an existing [Logging] resource.
  Logging.reference(String urn)
    : super(
        'aws:redshift/logging:Logging',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucketName = registerOutput<String?>('bucketName');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    logDestinationType = registerOutput<String?>('logDestinationType');
    logExports = registerOutput<List<String>?>('logExports', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
  }
}
