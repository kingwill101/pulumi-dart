import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_args.dart';
import 'workgroup_config_parameter.dart';
import 'workgroup_endpoint.dart';
import 'workgroup_price_performance_target.dart';

/// Creates a new Amazon Redshift Serverless Workgroup.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.Workgroup("example", {
///     namespaceName: "concurrency-scaling",
///     workgroupName: "concurrency-scaling",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.Workgroup("example",
///     namespace_name="concurrency-scaling",
///     workgroup_name="concurrency-scaling")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftServerless.Workgroup("example", new()
///     {
///         NamespaceName = "concurrency-scaling",
///         WorkgroupName = "concurrency-scaling",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftserverless.NewWorkgroup(ctx, "example", &redshiftserverless.WorkgroupArgs{
/// 			NamespaceName: pulumi.String("concurrency-scaling"),
/// 			WorkgroupName: pulumi.String("concurrency-scaling"),
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
/// import com.pulumi.aws.redshiftserverless.Workgroup;
/// import com.pulumi.aws.redshiftserverless.WorkgroupArgs;
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
///         var example = new Workgroup("example", WorkgroupArgs.builder()
///             .namespaceName("concurrency-scaling")
///             .workgroupName("concurrency-scaling")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftserverless:Workgroup
///     properties:
///       namespaceName: concurrency-scaling
///       workgroupName: concurrency-scaling
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Workgroups using the `workgroup_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/workgroup:Workgroup example example
/// ```
class Workgroup extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift Serverless Workgroup.
  late final pulumi.Output<String> arn;
  /// The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).
  late final pulumi.Output<int> baseCapacity;
  /// An array of parameters to set for more control over a serverless database. See `Config Parameter` below.
  late final pulumi.Output<List<WorkgroupConfigParameter>> configParameters;
  /// The endpoint that is created from the workgroup. See `Endpoint` below.
  late final pulumi.Output<List<WorkgroupEndpoint>> endpoints;
  /// The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  late final pulumi.Output<bool?> enhancedVpcRouting;
  /// The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries, specified in Redshift Processing Units (RPUs).
  late final pulumi.Output<int?> maxCapacity;
  /// The name of the namespace.
  late final pulumi.Output<String> namespaceName;
  /// The port number on which the cluster accepts incoming connections.
  late final pulumi.Output<int> port;
  /// Price-performance scaling for the workgroup. See `Price Performance Target` below.
  late final pulumi.Output<WorkgroupPricePerformanceTarget> pricePerformanceTarget;
  /// A value that specifies whether the workgroup can be accessed from a public network.
  late final pulumi.Output<bool?> publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An array of security group IDs to associate with the workgroup.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The name of the track for the workgroup. If it is `current`, you get the most up-to-date certified release version with the latest features, security updates, and performance enhancements. If it is `trailing`, you will be on the previous certified release. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/tracks.html).
  late final pulumi.Output<String> trackName;
  /// The Redshift Workgroup ID.
  late final pulumi.Output<String> workgroupId;
  /// The name of the workgroup.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workgroupName;

  /// Creates a new [Workgroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workgroup]. {@macro pulumi_redshiftserverless_workgroup_workgroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workgroup(
    String name, {
    WorkgroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/workgroup:Workgroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.baseCapacity = registerOutput<int>('baseCapacity');
    this.configParameters = registerOutput<List<WorkgroupConfigParameter>>('configParameters');
    this.endpoints = registerOutput<List<WorkgroupEndpoint>>('endpoints');
    this.enhancedVpcRouting = registerOutput<bool?>('enhancedVpcRouting');
    this.maxCapacity = registerOutput<int?>('maxCapacity');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.port = registerOutput<int>('port');
    this.pricePerformanceTarget = registerOutput<WorkgroupPricePerformanceTarget>('pricePerformanceTarget');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trackName = registerOutput<String>('trackName');
    this.workgroupId = registerOutput<String>('workgroupId');
    this.workgroupName = registerOutput<String>('workgroupName');
  }
}
