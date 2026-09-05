import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_stack_association_args.dart';
import 'fleet_stack_association_state.dart';

/// Manages an AppStream Fleet Stack association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.Fleet("example", {
///     computeCapacity: {
///         desiredInstances: 1,
///     },
///     name: "NAME",
///     imageName: "Amazon-AppStream2-Sample-Image-03-11-2023",
///     instanceType: "stream.standard.small",
/// });
/// const exampleStack = new aws.appstream.Stack("example", {name: "STACK NAME"});
/// const exampleFleetStackAssociation = new aws.appstream.FleetStackAssociation("example", {
///     fleetName: example.name,
///     stackName: exampleStack.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.Fleet("example",
///     compute_capacity={
///         "desired_instances": 1,
///     },
///     name="NAME",
///     image_name="Amazon-AppStream2-Sample-Image-03-11-2023",
///     instance_type="stream.standard.small")
/// example_stack = aws.appstream.Stack("example", name="STACK NAME")
/// example_fleet_stack_association = aws.appstream.FleetStackAssociation("example",
///     fleet_name=example.name,
///     stack_name=example_stack.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppStream.Fleet("example", new()
///     {
///         ComputeCapacity = new Aws.AppStream.Inputs.FleetComputeCapacityArgs
///         {
///             DesiredInstances = 1,
///         },
///         Name = "NAME",
///         ImageName = "Amazon-AppStream2-Sample-Image-03-11-2023",
///         InstanceType = "stream.standard.small",
///     });
///
///     var exampleStack = new Aws.AppStream.Stack("example", new()
///     {
///         Name = "STACK NAME",
///     });
///
///     var exampleFleetStackAssociation = new Aws.AppStream.FleetStackAssociation("example", new()
///     {
///         FleetName = example.Name,
///         StackName = exampleStack.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appstream.NewFleet(ctx, "example", &appstream.FleetArgs{
/// 			ComputeCapacity: &appstream.FleetComputeCapacityArgs{
/// 				DesiredInstances: pulumi.Int(1),
/// 			},
/// 			Name:         pulumi.String("NAME"),
/// 			ImageName:    pulumi.String("Amazon-AppStream2-Sample-Image-03-11-2023"),
/// 			InstanceType: pulumi.String("stream.standard.small"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStack, err := appstream.NewStack(ctx, "example", &appstream.StackArgs{
/// 			Name: pulumi.String("STACK NAME"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appstream.NewFleetStackAssociation(ctx, "example", &appstream.FleetStackAssociationArgs{
/// 			FleetName: example.Name,
/// 			StackName: exampleStack.Name,
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
/// resource "aws_appstream_fleet" "example" {
///   compute_capacity = {
///     desired_instances = 1
///   }
///   name          = "NAME"
///   image_name    = "Amazon-AppStream2-Sample-Image-03-11-2023"
///   instance_type = "stream.standard.small"
/// }
/// resource "aws_appstream_stack" "example" {
///   name = "STACK NAME"
/// }
/// resource "aws_appstream_fleetstackassociation" "example" {
///   fleet_name = aws_appstream_fleet.example.name
///   stack_name = aws_appstream_stack.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appstream.Fleet;
/// import com.pulumi.aws.appstream.FleetArgs;
/// import com.pulumi.aws.appstream.inputs.FleetComputeCapacityArgs;
/// import com.pulumi.aws.appstream.Stack;
/// import com.pulumi.aws.appstream.StackArgs;
/// import com.pulumi.aws.appstream.FleetStackAssociation;
/// import com.pulumi.aws.appstream.FleetStackAssociationArgs;
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
///         var example = new Fleet("example", FleetArgs.builder()
///             .computeCapacity(FleetComputeCapacityArgs.builder()
///                 .desiredInstances(1)
///                 .build())
///             .name("NAME")
///             .imageName("Amazon-AppStream2-Sample-Image-03-11-2023")
///             .instanceType("stream.standard.small")
///             .build());
///
///         var exampleStack = new Stack("exampleStack", StackArgs.builder()
///             .name("STACK NAME")
///             .build());
///
///         var exampleFleetStackAssociation = new FleetStackAssociation("exampleFleetStackAssociation", FleetStackAssociationArgs.builder()
///             .fleetName(example.name())
///             .stackName(exampleStack.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appstream:Fleet
///     properties:
///       computeCapacity:
///         desiredInstances: 1
///       name: NAME
///       imageName: Amazon-AppStream2-Sample-Image-03-11-2023
///       instanceType: stream.standard.small
///   exampleStack:
///     type: aws:appstream:Stack
///     name: example
///     properties:
///       name: STACK NAME
///   exampleFleetStackAssociation:
///     type: aws:appstream:FleetStackAssociation
///     name: example
///     properties:
///       fleetName: ${example.name}
///       stackName: ${exampleStack.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppStream Stack Fleet Association using the `fleetName` and `stackName` separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/fleetStackAssociation:FleetStackAssociation example fleetName/stackName
/// ```
class FleetStackAssociation extends pulumi.CustomResource {
  /// Name of the fleet.
  late final pulumi.Output<String> fleetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the stack.
  late final pulumi.Output<String> stackName;

  /// Creates a new [FleetStackAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FleetStackAssociation]. {@macro pulumi_appstream_fleet_stack_association_fleet_stack_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FleetStackAssociation(
    String name, {
    FleetStackAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleetStackAssociation:FleetStackAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    fleetName = registerOutput<String>('fleetName');
    region = registerOutput<String>('region');
    stackName = registerOutput<String>('stackName');
  }

  /// Gets an existing [FleetStackAssociation] resource's state with the given [name] and [id].
  static FleetStackAssociation get(
    String name,
    pulumi.Input<String> id, {
    FleetStackAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FleetStackAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FleetStackAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleetStackAssociation:FleetStackAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fleetName = registerOutput<String>('fleetName');
    region = registerOutput<String>('region');
    stackName = registerOutput<String>('stackName');
  }

  /// Creates a typed reference to an existing [FleetStackAssociation] resource.
  FleetStackAssociation.reference(String urn)
    : super(
        'aws:appstream/fleetStackAssociation:FleetStackAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    fleetName = registerOutput<String>('fleetName');
    region = registerOutput<String>('region');
    stackName = registerOutput<String>('stackName');
  }
}
