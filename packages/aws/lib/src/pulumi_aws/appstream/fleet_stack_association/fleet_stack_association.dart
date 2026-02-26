import 'package:pulumi/pulumi.dart';
import 'fleet_stack_association_args.dart';

/// Manages an AppStream Fleet Stack association.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.Fleet("example", {
/// name: "NAME",
/// imageName: "Amazon-AppStream2-Sample-Image-03-11-2023",
/// instanceType: "stream.standard.small",
/// computeCapacity: {
/// desiredInstances: 1,
/// },
/// });
/// const exampleStack = new aws.appstream.Stack("example", {name: "STACK NAME"});
/// const exampleFleetStackAssociation = new aws.appstream.FleetStackAssociation("example", {
/// fleetName: example.name,
/// stackName: exampleStack.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.Fleet("example",
/// name="NAME",
/// image_name="Amazon-AppStream2-Sample-Image-03-11-2023",
/// instance_type="stream.standard.small",
/// compute_capacity={
/// "desired_instances": 1,
/// })
/// example_stack = aws.appstream.Stack("example", name="STACK NAME")
/// example_fleet_stack_association = aws.appstream.FleetStackAssociation("example",
/// fleet_name=example.name,
/// stack_name=example_stack.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppStream.Fleet("example", new()
/// {
/// Name = "NAME",
/// ImageName = "Amazon-AppStream2-Sample-Image-03-11-2023",
/// InstanceType = "stream.standard.small",
/// ComputeCapacity = new Aws.AppStream.Inputs.FleetComputeCapacityArgs
/// {
/// DesiredInstances = 1,
/// },
/// });
///
/// var exampleStack = new Aws.AppStream.Stack("example", new()
/// {
/// Name = "STACK NAME",
/// });
///
/// var exampleFleetStackAssociation = new Aws.AppStream.FleetStackAssociation("example", new()
/// {
/// FleetName = example.Name,
/// StackName = exampleStack.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := appstream.NewFleet(ctx, "example", &appstream.FleetArgs{
/// Name:         pulumi.String("NAME"),
/// ImageName:    pulumi.String("Amazon-AppStream2-Sample-Image-03-11-2023"),
/// InstanceType: pulumi.String("stream.standard.small"),
/// ComputeCapacity: &appstream.FleetComputeCapacityArgs{
/// DesiredInstances: pulumi.Int(1),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleStack, err := appstream.NewStack(ctx, "example", &appstream.StackArgs{
/// Name: pulumi.String("STACK NAME"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appstream.NewFleetStackAssociation(ctx, "example", &appstream.FleetStackAssociationArgs{
/// FleetName: example.Name,
/// StackName: exampleStack.Name,
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
/// import com.pulumi.aws.appstream.Fleet;
/// import com.pulumi.aws.appstream.FleetArgs;
/// import com.pulumi.aws.appstream.inputs.FleetComputeCapacityArgs;
/// import com.pulumi.aws.appstream.Stack;
/// import com.pulumi.aws.appstream.StackArgs;
/// import com.pulumi.aws.appstream.FleetStackAssociation;
/// import com.pulumi.aws.appstream.FleetStackAssociationArgs;
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
/// var example = new Fleet("example", FleetArgs.builder()
/// .name("NAME")
/// .imageName("Amazon-AppStream2-Sample-Image-03-11-2023")
/// .instanceType("stream.standard.small")
/// .computeCapacity(FleetComputeCapacityArgs.builder()
/// .desiredInstances(1)
/// .build())
/// .build());
///
/// var exampleStack = new Stack("exampleStack", StackArgs.builder()
/// .name("STACK NAME")
/// .build());
///
/// var exampleFleetStackAssociation = new FleetStackAssociation("exampleFleetStackAssociation", FleetStackAssociationArgs.builder()
/// .fleetName(example.name())
/// .stackName(exampleStack.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appstream:Fleet
/// properties:
/// name: NAME
/// imageName: Amazon-AppStream2-Sample-Image-03-11-2023
/// instanceType: stream.standard.small
/// computeCapacity:
/// desiredInstances: 1
/// exampleStack:
/// type: aws:appstream:Stack
/// name: example
/// properties:
/// name: STACK NAME
/// exampleFleetStackAssociation:
/// type: aws:appstream:FleetStackAssociation
/// name: example
/// properties:
/// fleetName: ${example.name}
/// stackName: ${exampleStack.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppStream Stack Fleet Association using the <span pulumi-lang-nodejs="`fleetName`" pulumi-lang-dotnet="`FleetName`" pulumi-lang-go="`fleetName`" pulumi-lang-python="`fleet_name`" pulumi-lang-yaml="`fleetName`" pulumi-lang-java="`fleetName`">`fleet_name`</span> and <span pulumi-lang-nodejs="`stackName`" pulumi-lang-dotnet="`StackName`" pulumi-lang-go="`stackName`" pulumi-lang-python="`stack_name`" pulumi-lang-yaml="`stackName`" pulumi-lang-java="`stackName`">`stack_name`</span> separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/fleetStackAssociation:FleetStackAssociation example fleetName/stackName
/// ```
class FleetStackAssociation extends CustomResource {
  /// Name of the fleet.
  late final Output<String> fleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the stack.
  late final Output<String> stackName;

  FleetStackAssociation(
    String name, {
    FleetStackAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleetStackAssociation:FleetStackAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.fleetName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.stackName = Output.createUnknown<String>();
  }
}
