import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_association_args.dart';
import 'profiles_association_state.dart';
import 'profiles_association_timeouts.dart';

/// Resource for managing an AWS Route 53 Profiles Association.
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
/// const exampleProfilesAssociation = new aws.route53.ProfilesAssociation("example", {
///     name: "example",
///     profileId: example.id,
///     resourceId: exampleVpc.id,
///     tags: {
///         Environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ProfilesProfile("example", name="example")
/// example_vpc = aws.ec2.Vpc("example", cidr="10.0.0.0/16")
/// example_profiles_association = aws.route53.ProfilesAssociation("example",
///     name="example",
///     profile_id=example.id,
///     resource_id=example_vpc.id,
///     tags={
///         "Environment": "dev",
///     })
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
///     var exampleProfilesAssociation = new Aws.Route53.ProfilesAssociation("example", new()
///     {
///         Name = "example",
///         ProfileId = example.Id,
///         ResourceId = exampleVpc.Id,
///         Tags =
///         {
///             { "Environment", "dev" },
///         },
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
/// 		_, err = route53.NewProfilesAssociation(ctx, "example", &route53.ProfilesAssociationArgs{
/// 			Name:       pulumi.String("example"),
/// 			ProfileId:  example.ID().ToIDOutput().ToStringOutput(),
/// 			ResourceId: exampleVpc.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("dev"),
/// 			},
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
/// resource "aws_route53_profilesassociation" "example" {
///   name        = "example"
///   profile_id  = aws_route53_profilesprofile.example.id
///   resource_id = aws_ec2_vpc.example.id
///   tags = {
///     "Environment" = "dev"
///   }
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
/// import com.pulumi.aws.route53.ProfilesAssociation;
/// import com.pulumi.aws.route53.ProfilesAssociationArgs;
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
///         var exampleProfilesAssociation = new ProfilesAssociation("exampleProfilesAssociation", ProfilesAssociationArgs.builder()
///             .name("example")
///             .profileId(example.id())
///             .resourceId(exampleVpc.id())
///             .tags(Map.of("Environment", "dev"))
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
///   exampleProfilesAssociation:
///     type: aws:route53:ProfilesAssociation
///     name: example
///     properties:
///       name: example
///       profileId: ${example.id}
///       resourceId: ${exampleVpc.id}
///       tags:
///         Environment: dev
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesAssociation:ProfilesAssociation example rpa-id-12345678
/// ```
class ProfilesAssociation extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  /// Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerId;
  /// ID of the profile associated with the VPC.
  late final pulumi.Output<String> profileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource ID of the VPC the profile to be associated with.
  late final pulumi.Output<String> resourceId;
  /// Status of the Profile Association.
  late final pulumi.Output<String> status;
  /// Status message of the Profile Association.
  late final pulumi.Output<String> statusMessage;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProfilesAssociationTimeouts?> timeouts;

  /// Creates a new [ProfilesAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfilesAssociation]. {@macro pulumi_route53_profiles_association_profiles_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfilesAssociation(
    String name, {
    ProfilesAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesAssociation:ProfilesAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    profileId = registerOutput<String>('profileId');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ProfilesAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilesAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ProfilesAssociation] resource's state with the given [name] and [id].
  static ProfilesAssociation get(
    String name,
    pulumi.Input<String> id, {
    ProfilesAssociationState? state,
  }) {
    return ProfilesAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfilesAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesAssociation:ProfilesAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    profileId = registerOutput<String>('profileId');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ProfilesAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilesAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
