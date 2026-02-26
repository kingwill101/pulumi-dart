import 'package:pulumi/pulumi.dart';
import 'usage_limit_args.dart';

/// Creates a new Amazon Redshift Usage Limit.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.UsageLimit("example", {
/// clusterIdentifier: exampleAwsRedshiftCluster.id,
/// featureType: "concurrency-scaling",
/// limitType: "time",
/// amount: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.UsageLimit("example",
/// cluster_identifier=example_aws_redshift_cluster["id"],
/// feature_type="concurrency-scaling",
/// limit_type="time",
/// amount=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.UsageLimit("example", new()
/// {
/// ClusterIdentifier = exampleAwsRedshiftCluster.Id,
/// FeatureType = "concurrency-scaling",
/// LimitType = "time",
/// Amount = 60,
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
/// _, err := redshift.NewUsageLimit(ctx, "example", &redshift.UsageLimitArgs{
/// ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.Id),
/// FeatureType:       pulumi.String("concurrency-scaling"),
/// LimitType:         pulumi.String("time"),
/// Amount:            pulumi.Int(60),
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
/// import com.pulumi.aws.redshift.UsageLimit;
/// import com.pulumi.aws.redshift.UsageLimitArgs;
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
/// var example = new UsageLimit("example", UsageLimitArgs.builder()
/// .clusterIdentifier(exampleAwsRedshiftCluster.id())
/// .featureType("concurrency-scaling")
/// .limitType("time")
/// .amount(60)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:UsageLimit
/// properties:
/// clusterIdentifier: ${exampleAwsRedshiftCluster.id}
/// featureType: concurrency-scaling
/// limitType: time
/// amount: 60
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift usage limits using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/usageLimit:UsageLimit example example-id
/// ```
class UsageLimit extends CustomResource {
  /// The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  late final Output<int> amount;

  /// Amazon Resource Name (ARN) of the Redshift Usage Limit.
  late final Output<String> arn;

  /// The action that Amazon Redshift takes when the limit is reached. The default is <span pulumi-lang-nodejs="`log`" pulumi-lang-dotnet="`Log`" pulumi-lang-go="`log`" pulumi-lang-python="`log`" pulumi-lang-yaml="`log`" pulumi-lang-java="`log`">`log`</span>. Valid values are <span pulumi-lang-nodejs="`log`" pulumi-lang-dotnet="`Log`" pulumi-lang-go="`log`" pulumi-lang-python="`log`" pulumi-lang-yaml="`log`" pulumi-lang-java="`log`">`log`</span>, `emit-metric`, and <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  late final Output<String?> breachAction;

  /// The identifier of the cluster that you want to limit usage.
  late final Output<String> clusterIdentifier;

  /// The Amazon Redshift feature that you want to limit. Valid values are <span pulumi-lang-nodejs="`spectrum`" pulumi-lang-dotnet="`Spectrum`" pulumi-lang-go="`spectrum`" pulumi-lang-python="`spectrum`" pulumi-lang-yaml="`spectrum`" pulumi-lang-java="`spectrum`">`spectrum`</span>, `concurrency-scaling`, and `cross-region-datasharing`.
  late final Output<String> featureType;

  /// The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is <span pulumi-lang-nodejs="`spectrum`" pulumi-lang-dotnet="`Spectrum`" pulumi-lang-go="`spectrum`" pulumi-lang-python="`spectrum`" pulumi-lang-yaml="`spectrum`" pulumi-lang-java="`spectrum`">`spectrum`</span>, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be <span pulumi-lang-nodejs="`time`" pulumi-lang-dotnet="`Time`" pulumi-lang-go="`time`" pulumi-lang-python="`time`" pulumi-lang-yaml="`time`" pulumi-lang-java="`time`">`time`</span>. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and <span pulumi-lang-nodejs="`time`" pulumi-lang-dotnet="`Time`" pulumi-lang-go="`time`" pulumi-lang-python="`time`" pulumi-lang-yaml="`time`" pulumi-lang-java="`time`">`time`</span>.
  late final Output<String> limitType;

  /// The time period that the amount applies to. A weekly period begins on Sunday. The default is <span pulumi-lang-nodejs="`monthly`" pulumi-lang-dotnet="`Monthly`" pulumi-lang-go="`monthly`" pulumi-lang-python="`monthly`" pulumi-lang-yaml="`monthly`" pulumi-lang-java="`monthly`">`monthly`</span>. Valid values are <span pulumi-lang-nodejs="`daily`" pulumi-lang-dotnet="`Daily`" pulumi-lang-go="`daily`" pulumi-lang-python="`daily`" pulumi-lang-yaml="`daily`" pulumi-lang-java="`daily`">`daily`</span>, <span pulumi-lang-nodejs="`weekly`" pulumi-lang-dotnet="`Weekly`" pulumi-lang-go="`weekly`" pulumi-lang-python="`weekly`" pulumi-lang-yaml="`weekly`" pulumi-lang-java="`weekly`">`weekly`</span>, and <span pulumi-lang-nodejs="`monthly`" pulumi-lang-dotnet="`Monthly`" pulumi-lang-go="`monthly`" pulumi-lang-python="`monthly`" pulumi-lang-yaml="`monthly`" pulumi-lang-java="`monthly`">`monthly`</span>.
  late final Output<String?> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  UsageLimit(
    String name, {
    UsageLimitArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/usageLimit:UsageLimit',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amount = registerOutput<int>('amount');
    this.arn = registerOutput<String>('arn');
    this.breachAction = registerOutput<String?>('breachAction');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.featureType = registerOutput<String>('featureType');
    this.limitType = registerOutput<String>('limitType');
    this.period = registerOutput<String?>('period');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
