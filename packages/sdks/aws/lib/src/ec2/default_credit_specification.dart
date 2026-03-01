import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_credit_specification_args.dart';
import 'default_credit_specification_state.dart';
import 'default_credit_specification_timeouts.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Default Credit Specification.
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
/// const example = new aws.ec2.DefaultCreditSpecification("example", {
///     instanceFamily: "t2",
///     cpuCredits: "standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.DefaultCreditSpecification("example",
///     instance_family="t2",
///     cpu_credits="standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.DefaultCreditSpecification("example", new()
///     {
///         InstanceFamily = "t2",
///         CpuCredits = "standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewDefaultCreditSpecification(ctx, "example", &ec2.DefaultCreditSpecificationArgs{
/// 			InstanceFamily: pulumi.String("t2"),
/// 			CpuCredits:     pulumi.String("standard"),
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
/// import com.pulumi.aws.ec2.DefaultCreditSpecification;
/// import com.pulumi.aws.ec2.DefaultCreditSpecificationArgs;
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
///         var example = new DefaultCreditSpecification("example", DefaultCreditSpecificationArgs.builder()
///             .instanceFamily("t2")
///             .cpuCredits("standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:DefaultCreditSpecification
///     properties:
///       instanceFamily: t2
///       cpuCredits: standard
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) Default Credit Specification using the `instance_family`. For example:
///
/// ```console
/// % pulumi import aws_ec2_default_credit_specification.example t2
///
/// ```
class DefaultCreditSpecification extends pulumi.CustomResource {
  /// Credit option for CPU usage of the instance family. Valid values: `standard`, `unlimited`.
  late final pulumi.Output<String> cpuCredits;
  /// Instance family. Valid values are `t2`, `t3`, `t3a`, `t4g`.
  late final pulumi.Output<String> instanceFamily;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<DefaultCreditSpecificationTimeouts?> timeouts;

  /// Creates a new [DefaultCreditSpecification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultCreditSpecification]. {@macro pulumi_ec2_default_credit_specification_default_credit_specification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultCreditSpecification(
    String name, {
    DefaultCreditSpecificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultCreditSpecification:DefaultCreditSpecification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cpuCredits = registerOutput<String>('cpuCredits');
    this.instanceFamily = registerOutput<String>('instanceFamily');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<DefaultCreditSpecificationTimeouts?>('timeouts');
  }

  /// Gets an existing [DefaultCreditSpecification] resource's state with the given [name] and [id].
  static DefaultCreditSpecification get(
    String name,
    pulumi.Input<String> id, {
    DefaultCreditSpecificationState? state,
  }) {
    return DefaultCreditSpecification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefaultCreditSpecification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultCreditSpecification:DefaultCreditSpecification',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cpuCredits = registerOutput<String>('cpuCredits');
    this.instanceFamily = registerOutput<String>('instanceFamily');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<DefaultCreditSpecificationTimeouts?>('timeouts');
  }
}
