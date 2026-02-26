import 'package:pulumi/pulumi.dart';
import '../profiles_association_timeouts/profiles_association_timeouts.dart';
import 'profiles_association_args.dart';

/// Resource for managing an AWS Route 53 Profiles Association.
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
/// const exampleProfilesAssociation = new aws.route53.ProfilesAssociation("example", {
/// name: "example",
/// profileId: example.id,
/// resourceId: exampleVpc.id,
/// tags: {
/// Environment: "dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ProfilesProfile("example", name="example")
/// example_vpc = aws.ec2.Vpc("example", cidr="10.0.0.0/16")
/// example_profiles_association = aws.route53.ProfilesAssociation("example",
/// name="example",
/// profile_id=example.id,
/// resource_id=example_vpc.id,
/// tags={
/// "Environment": "dev",
/// })
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
/// var exampleProfilesAssociation = new Aws.Route53.ProfilesAssociation("example", new()
/// {
/// Name = "example",
/// ProfileId = example.Id,
/// ResourceId = exampleVpc.Id,
/// Tags =
/// {
/// { "Environment", "dev" },
/// },
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
/// _, err = route53.NewProfilesAssociation(ctx, "example", &route53.ProfilesAssociationArgs{
/// Name:       pulumi.String("example"),
/// ProfileId:  example.ID(),
/// ResourceId: exampleVpc.ID(),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("dev"),
/// },
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
/// import com.pulumi.aws.route53.ProfilesAssociation;
/// import com.pulumi.aws.route53.ProfilesAssociationArgs;
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
/// var exampleProfilesAssociation = new ProfilesAssociation("exampleProfilesAssociation", ProfilesAssociationArgs.builder()
/// .name("example")
/// .profileId(example.id())
/// .resourceId(exampleVpc.id())
/// .tags(Map.of("Environment", "dev"))
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
/// exampleProfilesAssociation:
/// type: aws:route53:ProfilesAssociation
/// name: example
/// properties:
/// name: example
/// profileId: ${example.id}
/// resourceId: ${exampleVpc.id}
/// tags:
/// Environment: dev
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Association using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesAssociation:ProfilesAssociation example rpa-id-12345678
/// ```
class ProfilesAssociation extends CustomResource {
  late final Output<String> arn;

  /// Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  late final Output<String> name;
  late final Output<String> ownerId;

  /// ID of the profile associated with the VPC.
  late final Output<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource ID of the VPC the profile to be associated with.
  late final Output<String> resourceId;

  /// Status of the Profile Association.
  late final Output<String> status;

  /// Status message of the Profile Association.
  late final Output<String> statusMessage;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ProfilesAssociationTimeouts?> timeouts;

  ProfilesAssociation(
    String name, {
    ProfilesAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesAssociation:ProfilesAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.profileId = registerOutput<String>('profileId');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ProfilesAssociationTimeouts?>('timeouts');
  }
}
