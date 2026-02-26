import 'package:pulumi/pulumi.dart';
import '../profiles_resource_association_timeouts/profiles_resource_association_timeouts.dart';
import 'profiles_resource_association_args.dart';

/// Resource for managing an AWS Route 53 Profiles Resource Association.
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
/// const example = new aws.route53.ProfilesProfile("example", {name: "example"});
/// const exampleVpc = new aws.ec2.Vpc("example", {cidr: "10.0.0.0/16"});
/// const exampleZone = new aws.route53.Zone("example", {
/// name: "example.com",
/// vpcs: [{
/// vpcId: exampleVpc.id,
/// }],
/// });
/// const exampleProfilesResourceAssociation = new aws.route53.ProfilesResourceAssociation("example", {
/// name: "example",
/// profileId: example.id,
/// resourceArn: exampleZone.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ProfilesProfile("example", name="example")
/// example_vpc = aws.ec2.Vpc("example", cidr="10.0.0.0/16")
/// example_zone = aws.route53.Zone("example",
/// name="example.com",
/// vpcs=[{
/// "vpc_id": example_vpc.id,
/// }])
/// example_profiles_resource_association = aws.route53.ProfilesResourceAssociation("example",
/// name="example",
/// profile_id=example.id,
/// resource_arn=example_zone.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53.ProfilesProfile("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleVpc = new Aws.Ec2.Vpc("example", new()
/// {
/// Cidr = "10.0.0.0/16",
/// });
///
/// var exampleZone = new Aws.Route53.Zone("example", new()
/// {
/// Name = "example.com",
/// Vpcs = new[]
/// {
/// new Aws.Route53.Inputs.ZoneVpcArgs
/// {
/// VpcId = exampleVpc.Id,
/// },
/// },
/// });
///
/// var exampleProfilesResourceAssociation = new Aws.Route53.ProfilesResourceAssociation("example", new()
/// {
/// Name = "example",
/// ProfileId = example.Id,
/// ResourceArn = exampleZone.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := route53.NewProfilesProfile(ctx, "example", &route53.ProfilesProfileArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// Cidr: "10.0.0.0/16",
/// })
/// if err != nil {
/// return err
/// }
/// exampleZone, err := route53.NewZone(ctx, "example", &route53.ZoneArgs{
/// Name: pulumi.String("example.com"),
/// Vpcs: route53.ZoneVpcArray{
/// &route53.ZoneVpcArgs{
/// VpcId: exampleVpc.ID(),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewProfilesResourceAssociation(ctx, "example", &route53.ProfilesResourceAssociationArgs{
/// Name:        pulumi.String("example"),
/// ProfileId:   example.ID(),
/// ResourceArn: exampleZone.Arn,
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
/// import com.pulumi.aws.route53.ProfilesProfile;
/// import com.pulumi.aws.route53.ProfilesProfileArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.route53.inputs.ZoneVpcArgs;
/// import com.pulumi.aws.route53.ProfilesResourceAssociation;
/// import com.pulumi.aws.route53.ProfilesResourceAssociationArgs;
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
/// var example = new ProfilesProfile("example", ProfilesProfileArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
/// .cidr("10.0.0.0/16")
/// .build());
///
/// var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
/// .name("example.com")
/// .vpcs(ZoneVpcArgs.builder()
/// .vpcId(exampleVpc.id())
/// .build())
/// .build());
///
/// var exampleProfilesResourceAssociation = new ProfilesResourceAssociation("exampleProfilesResourceAssociation", ProfilesResourceAssociationArgs.builder()
/// .name("example")
/// .profileId(example.id())
/// .resourceArn(exampleZone.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53:ProfilesProfile
/// properties:
/// name: example
/// exampleVpc:
/// type: aws:ec2:Vpc
/// name: example
/// properties:
/// cidr: 10.0.0.0/16
/// exampleZone:
/// type: aws:route53:Zone
/// name: example
/// properties:
/// name: example.com
/// vpcs:
/// - vpcId: ${exampleVpc.id}
/// exampleProfilesResourceAssociation:
/// type: aws:route53:ProfilesResourceAssociation
/// name: example
/// properties:
/// name: example
/// profileId: ${example.id}
/// resourceArn: ${exampleZone.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Resource Association using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesResourceAssociation:ProfilesResourceAssociation example rpa-id-12345678
/// ```
class ProfilesResourceAssociation extends CustomResource {
  /// Name of the Profile Resource Association.
  late final Output<String> name;
  late final Output<String> ownerId;

  /// ID of the profile associated with the VPC.
  late final Output<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource ID of the resource to be associated with the profile.
  late final Output<String> resourceArn;

  /// Resource properties for the resource to be associated with the profile.
  late final Output<String> resourceProperties;

  /// Type of resource associated with the profile.
  late final Output<String> resourceType;

  /// Status of the Profile Association. Valid values [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_Profile.html)
  late final Output<String> status;

  /// Status message of the Profile Resource Association.
  late final Output<String> statusMessage;
  late final Output<ProfilesResourceAssociationTimeouts?> timeouts;

  ProfilesResourceAssociation(
    String name, {
    ProfilesResourceAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesResourceAssociation:ProfilesResourceAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.profileId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.resourceProperties = Output.createUnknown<String>();
    this.resourceType = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.timeouts =
        Output.createUnknown<ProfilesResourceAssociationTimeouts?>();
  }
}
