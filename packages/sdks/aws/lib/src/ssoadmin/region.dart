import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_args.dart';
import 'region_state.dart';
import 'region_timeouts.dart';

/// Resource for managing an AWS SSO Admin Region.
///
/// Adds another AWS Region to an IAM Identity Center instance. This operation runs asynchronously, and Terraform waits until the Region status becomes `ACTIVE`.
///
/// &gt; For a given instance, only one Region add or remove operation can run at a time. If you manage multiple regions, apply them one at a time or use `dependsOn`.
///
/// &gt; The primary Region of an IAM Identity Center instance cannot be removed.
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
/// const example = aws.ssoadmin.getInstances({});
/// const exampleRegion = new aws.ssoadmin.Region("example", {
///     instanceArn: example.then(example => example.arns?.[0]),
///     regionName: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_region = aws.ssoadmin.Region("example",
///     instance_arn=example.arns[0],
///     region_name="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleRegion = new Aws.SsoAdmin.Region("example", new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         RegionName = "us-east-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewRegion(ctx, "example", &ssoadmin.RegionArgs{
/// 			InstanceArn: pulumi.String(example.Arns[0]),
/// 			RegionName:  pulumi.String("us-east-1"),
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
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_ssoadmin_region" "example" {
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
///   region_name  = "us-east-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.Region;
/// import com.pulumi.aws.ssoadmin.RegionArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var exampleRegion = new Region("exampleRegion", RegionArgs.builder()
///             .instanceArn(example.arns()[0])
///             .regionName("us-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRegion:
///     type: aws:ssoadmin:Region
///     name: example
///     properties:
///       instanceArn: ${example.arns[0]}
///       regionName: us-east-1
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `instanceArn` (String) ARN of the IAM Identity Center instance.
/// * `regionName` (String) Name of the AWS Region.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import this resource with `instanceArn` and `regionName` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/region:Region example arn:aws:sso:::instance/ssoins-1234567890abcdef,us-east-1
/// ```
class Region extends pulumi.CustomResource {
  /// ARN of the IAM Identity Center instance.
  late final pulumi.Output<String> instanceArn;
  /// Region where Terraform calls the SSO Admin API for this resource. Defaults to the Region in the provider configuration.
  late final pulumi.Output<String> region;
  /// AWS Region to add (for example, `us-east-1`). Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> regionName;
  /// Current Region status. Valid values are `ACTIVE`, `ADDING`, and `REMOVING`.
  late final pulumi.Output<String> status;
  late final pulumi.Output<RegionTimeouts?> timeouts;

  /// Creates a new [Region].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Region]. {@macro pulumi_ssoadmin_region_region_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Region(
    String name, {
    RegionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/region:Region',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    region = registerOutput<String>('region');
    regionName = registerOutput<String>('regionName');
    status = registerOutput<String>('status');
    timeouts = registerOutput<RegionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Region] resource's state with the given [name] and [id].
  static Region get(
    String name,
    pulumi.Input<String> id, {
    RegionState? state,
  }) {
    return Region._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Region._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/region:Region',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    region = registerOutput<String>('region');
    regionName = registerOutput<String>('regionName');
    status = registerOutput<String>('status');
    timeouts = registerOutput<RegionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
