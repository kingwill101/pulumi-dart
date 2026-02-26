import 'package:pulumi/pulumi.dart';
import 'dedicated_ip_assignment_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Dedicated IP Assignment.
///
/// This resource is used with "Standard" dedicated IP addresses. This includes addresses [requested and relinquished manually](https://docs.aws.amazon.com/ses/latest/dg/dedicated-ip-case.html) via an AWS support case, or [Bring Your Own IP](https://docs.aws.amazon.com/ses/latest/dg/dedicated-ip-byo.html) addresses. Once no longer assigned, this resource returns the IP to the [`ses-default-dedicated-pool`](https://docs.aws.amazon.com/ses/latest/dg/managing-ip-pools.html), managed by AWS.
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
/// const example = new aws.sesv2.DedicatedIpAssignment("example", {
/// ip: "0.0.0.0",
/// destinationPoolName: "my-pool",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.DedicatedIpAssignment("example",
/// ip="0.0.0.0",
/// destination_pool_name="my-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.DedicatedIpAssignment("example", new()
/// {
/// Ip = "0.0.0.0",
/// DestinationPoolName = "my-pool",
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
/// _, err := sesv2.NewDedicatedIpAssignment(ctx, "example", &sesv2.DedicatedIpAssignmentArgs{
/// Ip:                  pulumi.String("0.0.0.0"),
/// DestinationPoolName: pulumi.String("my-pool"),
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
/// import com.pulumi.aws.sesv2.DedicatedIpAssignment;
/// import com.pulumi.aws.sesv2.DedicatedIpAssignmentArgs;
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
/// var example = new DedicatedIpAssignment("example", DedicatedIpAssignmentArgs.builder()
/// .ip("0.0.0.0")
/// .destinationPoolName("my-pool")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:DedicatedIpAssignment
/// properties:
/// ip: 0.0.0.0
/// destinationPoolName: my-pool
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Dedicated IP Assignment using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>, which is a comma-separated string made up of <span pulumi-lang-nodejs="`ip`" pulumi-lang-dotnet="`Ip`" pulumi-lang-go="`ip`" pulumi-lang-python="`ip`" pulumi-lang-yaml="`ip`" pulumi-lang-java="`ip`">`ip`</span> and <span pulumi-lang-nodejs="`destinationPoolName`" pulumi-lang-dotnet="`DestinationPoolName`" pulumi-lang-go="`destinationPoolName`" pulumi-lang-python="`destination_pool_name`" pulumi-lang-yaml="`destinationPoolName`" pulumi-lang-java="`destinationPoolName`">`destination_pool_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/dedicatedIpAssignment:DedicatedIpAssignment example "0.0.0.0,my-pool"
/// ```
class DedicatedIpAssignment extends CustomResource {
  /// Dedicated IP address.
  late final Output<String> destinationPoolName;

  /// Dedicated IP address.
  late final Output<String> ip;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DedicatedIpAssignment(
    String name, {
    DedicatedIpAssignmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/dedicatedIpAssignment:DedicatedIpAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.destinationPoolName = Output.createUnknown<String>();
    this.ip = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
