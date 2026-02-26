import 'package:pulumi/pulumi.dart';
import 'logging_args.dart';

/// Resource for managing an AWS Redshift Logging configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Logging("example", {
/// clusterIdentifier: exampleAwsRedshiftCluster.id,
/// logDestinationType: "cloudwatch",
/// logExports: [
/// "connectionlog",
/// "userlog",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Logging("example",
/// cluster_identifier=example_aws_redshift_cluster["id"],
/// log_destination_type="cloudwatch",
/// log_exports=[
/// "connectionlog",
/// "userlog",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.Logging("example", new()
/// {
/// ClusterIdentifier = exampleAwsRedshiftCluster.Id,
/// LogDestinationType = "cloudwatch",
/// LogExports = new[]
/// {
/// "connectionlog",
/// "userlog",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewLogging(ctx, "example", &redshift.LoggingArgs{
/// ClusterIdentifier:  pulumi.Any(exampleAwsRedshiftCluster.Id),
/// LogDestinationType: pulumi.String("cloudwatch"),
/// LogExports: pulumi.StringArray{
/// pulumi.String("connectionlog"),
/// pulumi.String("userlog"),
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
/// import com.pulumi.aws.redshift.Logging;
/// import com.pulumi.aws.redshift.LoggingArgs;
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
/// var example = new Logging("example", LoggingArgs.builder()
/// .clusterIdentifier(exampleAwsRedshiftCluster.id())
/// .logDestinationType("cloudwatch")
/// .logExports(
/// "connectionlog",
/// "userlog")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:Logging
/// properties:
/// clusterIdentifier: ${exampleAwsRedshiftCluster.id}
/// logDestinationType: cloudwatch
/// logExports:
/// - connectionlog
/// - userlog
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Destination Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Logging("example", {
/// clusterIdentifier: exampleAwsRedshiftCluster.id,
/// logDestinationType: "s3",
/// bucketName: exampleAwsS3Bucket.id,
/// s3KeyPrefix: "example-prefix/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Logging("example",
/// cluster_identifier=example_aws_redshift_cluster["id"],
/// log_destination_type="s3",
/// bucket_name=example_aws_s3_bucket["id"],
/// s3_key_prefix="example-prefix/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.Logging("example", new()
/// {
/// ClusterIdentifier = exampleAwsRedshiftCluster.Id,
/// LogDestinationType = "s3",
/// BucketName = exampleAwsS3Bucket.Id,
/// S3KeyPrefix = "example-prefix/",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewLogging(ctx, "example", &redshift.LoggingArgs{
/// ClusterIdentifier:  pulumi.Any(exampleAwsRedshiftCluster.Id),
/// LogDestinationType: pulumi.String("s3"),
/// BucketName:         pulumi.Any(exampleAwsS3Bucket.Id),
/// S3KeyPrefix:        pulumi.String("example-prefix/"),
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
/// import com.pulumi.aws.redshift.Logging;
/// import com.pulumi.aws.redshift.LoggingArgs;
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
/// var example = new Logging("example", LoggingArgs.builder()
/// .clusterIdentifier(exampleAwsRedshiftCluster.id())
/// .logDestinationType("s3")
/// .bucketName(exampleAwsS3Bucket.id())
/// .s3KeyPrefix("example-prefix/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:Logging
/// properties:
/// clusterIdentifier: ${exampleAwsRedshiftCluster.id}
/// logDestinationType: s3
/// bucketName: ${exampleAwsS3Bucket.id}
/// s3KeyPrefix: example-prefix/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Logging using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/logging:Logging example cluster-id-12345678
/// ```
class Logging extends CustomResource {
  /// Name of an existing S3 bucket where the log files are to be stored. Required when <span pulumi-lang-nodejs="`logDestinationType`" pulumi-lang-dotnet="`LogDestinationType`" pulumi-lang-go="`logDestinationType`" pulumi-lang-python="`log_destination_type`" pulumi-lang-yaml="`logDestinationType`" pulumi-lang-java="`logDestinationType`">`log_destination_type`</span> is <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  late final Output<String?> bucketName;

  /// Identifier of the source cluster.
  ///
  /// The following arguments are optional:
  late final Output<String> clusterIdentifier;

  /// Log destination type. Valid values are <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> and <span pulumi-lang-nodejs="`cloudwatch`" pulumi-lang-dotnet="`Cloudwatch`" pulumi-lang-go="`cloudwatch`" pulumi-lang-python="`cloudwatch`" pulumi-lang-yaml="`cloudwatch`" pulumi-lang-java="`cloudwatch`">`cloudwatch`</span>.
  late final Output<String?> logDestinationType;

  /// Collection of exported log types. Required when <span pulumi-lang-nodejs="`logDestinationType`" pulumi-lang-dotnet="`LogDestinationType`" pulumi-lang-go="`logDestinationType`" pulumi-lang-python="`log_destination_type`" pulumi-lang-yaml="`logDestinationType`" pulumi-lang-java="`logDestinationType`">`log_destination_type`</span> is <span pulumi-lang-nodejs="`cloudwatch`" pulumi-lang-dotnet="`Cloudwatch`" pulumi-lang-go="`cloudwatch`" pulumi-lang-python="`cloudwatch`" pulumi-lang-yaml="`cloudwatch`" pulumi-lang-java="`cloudwatch`">`cloudwatch`</span>. Valid values are <span pulumi-lang-nodejs="`connectionlog`" pulumi-lang-dotnet="`Connectionlog`" pulumi-lang-go="`connectionlog`" pulumi-lang-python="`connectionlog`" pulumi-lang-yaml="`connectionlog`" pulumi-lang-java="`connectionlog`">`connectionlog`</span>, <span pulumi-lang-nodejs="`useractivitylog`" pulumi-lang-dotnet="`Useractivitylog`" pulumi-lang-go="`useractivitylog`" pulumi-lang-python="`useractivitylog`" pulumi-lang-yaml="`useractivitylog`" pulumi-lang-java="`useractivitylog`">`useractivitylog`</span>, and <span pulumi-lang-nodejs="`userlog`" pulumi-lang-dotnet="`Userlog`" pulumi-lang-go="`userlog`" pulumi-lang-python="`userlog`" pulumi-lang-yaml="`userlog`" pulumi-lang-java="`userlog`">`userlog`</span>.
  late final Output<List<String>?> logExports;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Prefix applied to the log file names.
  late final Output<String?> s3KeyPrefix;

  Logging(
    String name, {
    LoggingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/logging:Logging',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String?>('bucketName');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.logDestinationType = registerOutput<String?>('logDestinationType');
    this.logExports = registerOutput<List<String>?>('logExports');
    this.region = registerOutput<String>('region');
    this.s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
  }
}
