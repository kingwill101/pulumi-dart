import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_settings_association_args.dart';
import 'network_settings_association_state.dart';

/// Resource for managing an AWS WorkSpaces Web Network Settings Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// const example = new aws.ec2.Vpc("example", {
///     cidrBlock: "10.0.0.0/16",
///     tags: {
///         Name: "example",
///     },
/// });
/// const exampleSubnet: aws.ec2.Subnet[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleSubnet.push(new aws.ec2.Subnet(`example-${range.value}`, {
///         vpcId: example.id,
///         cidrBlock: example.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///             input: cidrBlock,
///             newbits: 8,
///             netnum: range.value,
///         })).apply(invoke => invoke.result),
///         availabilityZone: available.then(available => available.names[range.value]),
///         tags: {
///             Name: "example",
///         },
///     }));
/// }
/// const exampleSecurityGroup: aws.ec2.SecurityGroup[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleSecurityGroup.push(new aws.ec2.SecurityGroup(`example-${range.value}`, {
///         vpcId: example.id,
///         name: `example-${range.value}`,
///         tags: {
///             Name: "example",
///         },
///     }));
/// }
/// const examplePortal = new aws.workspacesweb.Portal("example", {displayName: "example"});
/// const exampleNetworkSettings = new aws.workspacesweb.NetworkSettings("example", {
///     vpcId: example.id,
///     subnetIds: [
///         exampleSubnet[0].id,
///         exampleSubnet[1].id,
///     ],
///     securityGroupIds: [
///         exampleSecurityGroup[0].id,
///         exampleSecurityGroup[1].id,
///     ],
/// });
/// const exampleNetworkSettingsAssociation = new aws.workspacesweb.NetworkSettingsAssociation("example", {
///     networkSettingsArn: exampleNetworkSettings.networkSettingsArn,
///     portalArn: examplePortal.portalArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// available = aws.get_availability_zones(state="available",
///     filters=[{
///         "name": "opt-in-status",
///         "values": ["opt-in-not-required"],
///     }])
/// example = aws.ec2.Vpc("example",
///     cidr_block="10.0.0.0/16",
///     tags={
///         "Name": "example",
///     })
/// example_subnet = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_subnet.append(aws.ec2.Subnet(f"example-{range['value']}",
///         vpc_id=example.id,
///         cidr_block=example.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///             newbits=8,
///             netnum=range["value"])).apply(lambda invoke: invoke.result),
///         availability_zone=available.names[range["value"]],
///         tags={
///             "Name": "example",
///         }))
/// example_security_group = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_security_group.append(aws.ec2.SecurityGroup(f"example-{range['value']}",
///         vpc_id=example.id,
///         name=f"example-{range['value']}",
///         tags={
///             "Name": "example",
///         }))
/// example_portal = aws.workspacesweb.Portal("example", display_name="example")
/// example_network_settings = aws.workspacesweb.NetworkSettings("example",
///     vpc_id=example.id,
///     subnet_ids=[
///         example_subnet[0].id,
///         example_subnet[1].id,
///     ],
///     security_group_ids=[
///         example_security_group[0].id,
///         example_security_group[1].id,
///     ])
/// example_network_settings_association = aws.workspacesweb.NetworkSettingsAssociation("example",
///     network_settings_arn=example_network_settings.network_settings_arn,
///     portal_arn=example_portal.portal_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "opt-in-not-required",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
///     var exampleSubnet = new List<Aws.Ec2.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleSubnet.Add(new Aws.Ec2.Subnet($"example-{range.Value}", new()
///         {
///             VpcId = example.Id,
///             CidrBlock = example.CidrBlock.Apply(cidrBlock => Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = cidrBlock,
///                 Newbits = 8,
///                 Netnum = range.Value,
///             })).Apply(invoke => invoke.Result),
///             AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names)[range.Value],
///             Tags =
///             {
///                 { "Name", "example" },
///             },
///         }));
///     }
///     var exampleSecurityGroup = new List<Aws.Ec2.SecurityGroup>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleSecurityGroup.Add(new Aws.Ec2.SecurityGroup($"example-{range.Value}", new()
///         {
///             VpcId = example.Id,
///             Name = $"example-{range.Value}",
///             Tags =
///             {
///                 { "Name", "example" },
///             },
///         }));
///     }
///     var examplePortal = new Aws.WorkSpacesWeb.Portal("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleNetworkSettings = new Aws.WorkSpacesWeb.NetworkSettings("example", new()
///     {
///         VpcId = example.Id,
///         SubnetIds = new[]
///         {
///             exampleSubnet[0].Id,
///             exampleSubnet[1].Id,
///         },
///         SecurityGroupIds = new[]
///         {
///             exampleSecurityGroup[0].Id,
///             exampleSecurityGroup[1].Id,
///         },
///     });
///
///     var exampleNetworkSettingsAssociation = new Aws.WorkSpacesWeb.NetworkSettingsAssociation("example", new()
///     {
///         NetworkSettingsArn = exampleNetworkSettings.NetworkSettingsArn,
///         PortalArn = examplePortal.PortalArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: cidrBlock,
/// Newbits: 8,
/// Netnum: val0,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var exampleSubnet []*ec2.Subnet
/// for index := 0; index < 2; index++ {
///     key0 := index
///     val0 := index
/// __res, err := ec2.NewSubnet(ctx, fmt.Sprintf("example-%v", key0), &ec2.SubnetArgs{
/// VpcId: example.ID(),
/// CidrBlock: pulumi.String(example.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// AvailabilityZone: pulumi.String(available.Names[val0]),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet = append(exampleSubnet, __res)
/// }
/// var exampleSecurityGroup []*ec2.SecurityGroup
/// for index := 0; index < 2; index++ {
///     key0 := index
///     val0 := index
/// __res, err := ec2.NewSecurityGroup(ctx, fmt.Sprintf("example-%v", key0), &ec2.SecurityGroupArgs{
/// VpcId: example.ID(),
/// Name: pulumi.Sprintf("example-%v", val0),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleSecurityGroup = append(exampleSecurityGroup, __res)
/// }
/// examplePortal, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// DisplayName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleNetworkSettings, err := workspacesweb.NewNetworkSettings(ctx, "example", &workspacesweb.NetworkSettingsArgs{
/// VpcId: example.ID(),
/// SubnetIds: pulumi.StringArray{
/// exampleSubnet[0].ID(),
/// exampleSubnet[1].ID(),
/// },
/// SecurityGroupIds: pulumi.StringArray{
/// exampleSecurityGroup[0].ID(),
/// exampleSecurityGroup[1].ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewNetworkSettingsAssociation(ctx, "example", &workspacesweb.NetworkSettingsAssociationArgs{
/// NetworkSettingsArn: exampleNetworkSettings.NetworkSettingsArn,
/// PortalArn: examplePortal.PortalArn,
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.workspacesweb.NetworkSettings;
/// import com.pulumi.aws.workspacesweb.NetworkSettingsArgs;
/// import com.pulumi.aws.workspacesweb.NetworkSettingsAssociation;
/// import com.pulumi.aws.workspacesweb.NetworkSettingsAssociationArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .tags(Map.of("Name", "example"))
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Subnet("exampleSubnet-" + i, SubnetArgs.builder()
///                 .vpcId(example.id())
///                 .cidrBlock(example.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(_cidrBlock)
///                     .newbits(8)
///                     .netnum(range.value())
///                     .build())).applyValue(_invoke -> _invoke.result()))
///                 .availabilityZone(available.names()[range.value()])
///                 .tags(Map.of("Name", "example"))
///                 .build());
///
///
/// }
///         for (var i = 0; i < 2; i++) {
///             new SecurityGroup("exampleSecurityGroup-" + i, SecurityGroupArgs.builder()
///                 .vpcId(example.id())
///                 .name(String.format("example-%s", range.value()))
///                 .tags(Map.of("Name", "example"))
///                 .build());
///
///
/// }
///         var examplePortal = new Portal("examplePortal", PortalArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleNetworkSettings = new NetworkSettings("exampleNetworkSettings", NetworkSettingsArgs.builder()
///             .vpcId(example.id())
///             .subnetIds(
///                 exampleSubnet[0].id(),
///                 exampleSubnet[1].id())
///             .securityGroupIds(
///                 exampleSecurityGroup[0].id(),
///                 exampleSecurityGroup[1].id())
///             .build());
///
///         var exampleNetworkSettingsAssociation = new NetworkSettingsAssociation("exampleNetworkSettingsAssociation", NetworkSettingsAssociationArgs.builder()
///             .networkSettingsArn(exampleNetworkSettings.networkSettingsArn())
///             .portalArn(examplePortal.portalArn())
///             .build());
///
///     }
/// }
/// ```
class NetworkSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the network settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> networkSettingsArn;
  /// ARN of the portal to associate with the network settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [NetworkSettingsAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSettingsAssociation]. {@macro pulumi_workspacesweb_network_settings_association_network_settings_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSettingsAssociation(
    String name, {
    NetworkSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/networkSettingsAssociation:NetworkSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    networkSettingsArn = registerOutput<String>('networkSettingsArn');
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [NetworkSettingsAssociation] resource's state with the given [name] and [id].
  static NetworkSettingsAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkSettingsAssociationState? state,
  }) {
    return NetworkSettingsAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSettingsAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/networkSettingsAssociation:NetworkSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    networkSettingsArn = registerOutput<String>('networkSettingsArn');
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
  }
}
