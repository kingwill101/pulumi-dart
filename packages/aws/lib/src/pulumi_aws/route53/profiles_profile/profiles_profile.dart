import 'package:pulumi/pulumi.dart';
import '../profiles_profile_timeouts/profiles_profile_timeouts.dart';
import 'profiles_profile_args.dart';

/// Resource for managing an AWS Route 53 Profile.
///
/// ## Example Usage
///
/// ### Empty Profile
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ProfilesProfile("example", {
/// name: "example",
/// tags: {
/// Environment: "dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ProfilesProfile("example",
/// name="example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.NewProfilesProfile(ctx, "example", &route53.ProfilesProfileArgs{
/// Name: pulumi.String("example"),
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
/// tags:
/// Environment: dev
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Profile using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesProfile:ProfilesProfile example rp-12345678
/// ```
class ProfilesProfile extends CustomResource {
  /// ARN of the Profile.
  late final Output<String> arn;

  /// Name of the Profile.
  late final Output<String> name;
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Share status of the Profile.
  late final Output<String> shareStatus;

  /// Status of the Profile.
  late final Output<String> status;

  /// Status message of the Profile.
  late final Output<String> statusMessage;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ProfilesProfileTimeouts?> timeouts;

  ProfilesProfile(
    String name, {
    ProfilesProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesProfile:ProfilesProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.shareStatus = registerOutput<String>('shareStatus');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ProfilesProfileTimeouts?>('timeouts');
  }
}
