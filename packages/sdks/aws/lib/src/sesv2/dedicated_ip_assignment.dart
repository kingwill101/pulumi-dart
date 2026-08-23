import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_ip_assignment_args.dart';
import 'dedicated_ip_assignment_state.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Dedicated IP Assignment.
///
/// This resource is used with "Standard" dedicated IP addresses. This includes addresses [requested and relinquished manually](https://docs.aws.amazon.com/ses/latest/dg/dedicated-ip-case.html) via an AWS support case, or [Bring Your Own IP](https://docs.aws.amazon.com/ses/latest/dg/dedicated-ip-byo.html) addresses. Once no longer assigned, this resource returns the IP to the [`ses-default-dedicated-pool`](https://docs.aws.amazon.com/ses/latest/dg/managing-ip-pools.html), managed by AWS.
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
/// const example = new aws.sesv2.DedicatedIpAssignment("example", {
///     ip: "0.0.0.0",
///     destinationPoolName: "my-pool",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.DedicatedIpAssignment("example",
///     ip="0.0.0.0",
///     destination_pool_name="my-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.DedicatedIpAssignment("example", new()
///     {
///         Ip = "0.0.0.0",
///         DestinationPoolName = "my-pool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewDedicatedIpAssignment(ctx, "example", &sesv2.DedicatedIpAssignmentArgs{
/// 			Ip:                  pulumi.String("0.0.0.0"),
/// 			DestinationPoolName: pulumi.String("my-pool"),
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
/// resource "aws_sesv2_dedicatedipassignment" "example" {
///   ip                    = "0.0.0.0"
///   destination_pool_name = "my-pool"
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
///         var example = new DedicatedIpAssignment("example", DedicatedIpAssignmentArgs.builder()
///             .ip("0.0.0.0")
///             .destinationPoolName("my-pool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:DedicatedIpAssignment
///     properties:
///       ip: 0.0.0.0
///       destinationPoolName: my-pool
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Dedicated IP Assignment using the `id`, which is a comma-separated string made up of `ip` and `destinationPoolName`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/dedicatedIpAssignment:DedicatedIpAssignment example "0.0.0.0,my-pool"
/// ```
class DedicatedIpAssignment extends pulumi.CustomResource {
  /// Dedicated IP address.
  late final pulumi.Output<String> destinationPoolName;
  /// Dedicated IP address.
  late final pulumi.Output<String> ip;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DedicatedIpAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedIpAssignment]. {@macro pulumi_sesv2_dedicated_ip_assignment_dedicated_ip_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedIpAssignment(
    String name, {
    DedicatedIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/dedicatedIpAssignment:DedicatedIpAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationPoolName = registerOutput<String>('destinationPoolName');
    ip = registerOutput<String>('ip');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [DedicatedIpAssignment] resource's state with the given [name] and [id].
  static DedicatedIpAssignment get(
    String name,
    pulumi.Input<String> id, {
    DedicatedIpAssignmentState? state,
  }) {
    return DedicatedIpAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedIpAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/dedicatedIpAssignment:DedicatedIpAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationPoolName = registerOutput<String>('destinationPoolName');
    ip = registerOutput<String>('ip');
    region = registerOutput<String>('region');
  }
}
