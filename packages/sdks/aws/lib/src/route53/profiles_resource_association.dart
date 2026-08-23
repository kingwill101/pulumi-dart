import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_resource_association_args.dart';
import 'profiles_resource_association_state.dart';
import 'profiles_resource_association_timeouts.dart';

/// Resource for managing an AWS Route 53 Profiles Resource Association.
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
/// const example = new aws.route53.ProfilesProfile("example", {name: "example"});
/// const exampleVpc = new aws.ec2.Vpc("example", {cidr: "10.0.0.0/16"});
/// const exampleZone = new aws.route53.Zone("example", {
///     name: "example.com",
///     vpcs: [{
///         vpcId: exampleVpc.id,
///     }],
/// });
/// const exampleProfilesResourceAssociation = new aws.route53.ProfilesResourceAssociation("example", {
///     name: "example",
///     profileId: example.id,
///     resourceArn: exampleZone.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ProfilesProfile("example", name="example")
/// example_vpc = aws.ec2.Vpc("example", cidr="10.0.0.0/16")
/// example_zone = aws.route53.Zone("example",
///     name="example.com",
///     vpcs=[{
///         "vpc_id": example_vpc.id,
///     }])
/// example_profiles_resource_association = aws.route53.ProfilesResourceAssociation("example",
///     name="example",
///     profile_id=example.id,
///     resource_arn=example_zone.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.ProfilesProfile("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         Cidr = "10.0.0.0/16",
///     });
///
///     var exampleZone = new Aws.Route53.Zone("example", new()
///     {
///         Name = "example.com",
///         Vpcs = new[]
///         {
///             new Aws.Route53.Inputs.ZoneVpcArgs
///             {
///                 VpcId = exampleVpc.Id,
///             },
///         },
///     });
///
///     var exampleProfilesResourceAssociation = new Aws.Route53.ProfilesResourceAssociation("example", new()
///     {
///         Name = "example",
///         ProfileId = example.Id,
///         ResourceArn = exampleZone.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := route53.NewProfilesProfile(ctx, "example", &route53.ProfilesProfileArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			Cidr: "10.0.0.0/16",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := route53.NewZone(ctx, "example", &route53.ZoneArgs{
/// 			Name: pulumi.String("example.com"),
/// 			Vpcs: route53.ZoneVpcArray{
/// 				&route53.ZoneVpcArgs{
/// 					VpcId: exampleVpc.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewProfilesResourceAssociation(ctx, "example", &route53.ProfilesResourceAssociationArgs{
/// 			Name:        pulumi.String("example"),
/// 			ProfileId:   example.ID().ToIDOutput().ToStringOutput(),
/// 			ResourceArn: exampleZone.Arn,
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
/// resource "aws_route53_profilesprofile" "example" {
///   name = "example"
/// }
/// resource "aws_ec2_vpc" "example" {
///   cidr = "10.0.0.0/16"
/// }
/// resource "aws_route53_zone" "example" {
///   name = "example.com"
///   vpcs {
///     vpc_id = aws_ec2_vpc.example.id
///   }
/// }
/// resource "aws_route53_profilesresourceassociation" "example" {
///   name         = "example"
///   profile_id   = aws_route53_profilesprofile.example.id
///   resource_arn = aws_route53_zone.example.arn
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
///         var example = new ProfilesProfile("example", ProfilesProfileArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidr("10.0.0.0/16")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.com")
///             .vpcs(ZoneVpcArgs.builder()
///                 .vpcId(exampleVpc.id())
///                 .build())
///             .build());
///
///         var exampleProfilesResourceAssociation = new ProfilesResourceAssociation("exampleProfilesResourceAssociation", ProfilesResourceAssociationArgs.builder()
///             .name("example")
///             .profileId(example.id())
///             .resourceArn(exampleZone.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:ProfilesProfile
///     properties:
///       name: example
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidr: 10.0.0.0/16
///   exampleZone:
///     type: aws:route53:Zone
///     name: example
///     properties:
///       name: example.com
///       vpcs:
///         - vpcId: ${exampleVpc.id}
///   exampleProfilesResourceAssociation:
///     type: aws:route53:ProfilesResourceAssociation
///     name: example
///     properties:
///       name: example
///       profileId: ${example.id}
///       resourceArn: ${exampleZone.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Resource Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesResourceAssociation:ProfilesResourceAssociation example rpa-id-12345678
/// ```
class ProfilesResourceAssociation extends pulumi.CustomResource {
  /// Name of the Profile Resource Association.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerId;
  /// ID of the profile associated with the VPC.
  late final pulumi.Output<String> profileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource ID of the resource to be associated with the profile.
  late final pulumi.Output<String> resourceArn;
  /// Resource properties for the resource to be associated with the profile.
  late final pulumi.Output<String> resourceProperties;
  /// Type of resource associated with the profile.
  late final pulumi.Output<String> resourceType;
  /// Status of the Profile Association. Valid values [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_Profile.html)
  late final pulumi.Output<String> status;
  /// Status message of the Profile Resource Association.
  late final pulumi.Output<String> statusMessage;
  late final pulumi.Output<ProfilesResourceAssociationTimeouts?> timeouts;

  /// Creates a new [ProfilesResourceAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfilesResourceAssociation]. {@macro pulumi_route53_profiles_resource_association_profiles_resource_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfilesResourceAssociation(
    String name, {
    ProfilesResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesResourceAssociation:ProfilesResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    profileId = registerOutput<String>('profileId');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceProperties = registerOutput<String>('resourceProperties');
    resourceType = registerOutput<String>('resourceType');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    timeouts = registerOutput<ProfilesResourceAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilesResourceAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ProfilesResourceAssociation] resource's state with the given [name] and [id].
  static ProfilesResourceAssociation get(
    String name,
    pulumi.Input<String> id, {
    ProfilesResourceAssociationState? state,
  }) {
    return ProfilesResourceAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfilesResourceAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesResourceAssociation:ProfilesResourceAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    profileId = registerOutput<String>('profileId');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceProperties = registerOutput<String>('resourceProperties');
    resourceType = registerOutput<String>('resourceType');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    timeouts = registerOutput<ProfilesResourceAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilesResourceAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
