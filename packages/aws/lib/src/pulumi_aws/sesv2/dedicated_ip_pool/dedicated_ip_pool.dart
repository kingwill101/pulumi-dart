import 'package:pulumi/pulumi.dart';
import 'dedicated_ip_pool_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Dedicated IP Pool.
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
/// const example = new aws.sesv2.DedicatedIpPool("example", {poolName: "my-pool"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.DedicatedIpPool("example", pool_name="my-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.DedicatedIpPool("example", new()
/// {
/// PoolName = "my-pool",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.NewDedicatedIpPool(ctx, "example", &sesv2.DedicatedIpPoolArgs{
/// PoolName: pulumi.String("my-pool"),
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
/// import com.pulumi.aws.sesv2.DedicatedIpPool;
/// import com.pulumi.aws.sesv2.DedicatedIpPoolArgs;
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
/// var example = new DedicatedIpPool("example", DedicatedIpPoolArgs.builder()
/// .poolName("my-pool")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:DedicatedIpPool
/// properties:
/// poolName: my-pool
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Managed Pool
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.DedicatedIpPool("example", {
/// poolName: "my-managed-pool",
/// scalingMode: "MANAGED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.DedicatedIpPool("example",
/// pool_name="my-managed-pool",
/// scaling_mode="MANAGED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.DedicatedIpPool("example", new()
/// {
/// PoolName = "my-managed-pool",
/// ScalingMode = "MANAGED",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.NewDedicatedIpPool(ctx, "example", &sesv2.DedicatedIpPoolArgs{
/// PoolName:    pulumi.String("my-managed-pool"),
/// ScalingMode: pulumi.String("MANAGED"),
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
/// import com.pulumi.aws.sesv2.DedicatedIpPool;
/// import com.pulumi.aws.sesv2.DedicatedIpPoolArgs;
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
/// var example = new DedicatedIpPool("example", DedicatedIpPoolArgs.builder()
/// .poolName("my-managed-pool")
/// .scalingMode("MANAGED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:DedicatedIpPool
/// properties:
/// poolName: my-managed-pool
/// scalingMode: MANAGED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Dedicated IP Pool using the <span pulumi-lang-nodejs="`poolName`" pulumi-lang-dotnet="`PoolName`" pulumi-lang-go="`poolName`" pulumi-lang-python="`pool_name`" pulumi-lang-yaml="`poolName`" pulumi-lang-java="`poolName`">`pool_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/dedicatedIpPool:DedicatedIpPool example my-pool
/// ```
class DedicatedIpPool extends CustomResource {
  /// ARN of the Dedicated IP Pool.
  late final Output<String> arn;

  /// Name of the dedicated IP pool.
  ///
  /// The following arguments are optional:
  late final Output<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  late final Output<String> scalingMode;

  /// A map of tags to assign to the pool. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  DedicatedIpPool(
    String name, {
    DedicatedIpPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/dedicatedIpPool:DedicatedIpPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.poolName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.scalingMode = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
