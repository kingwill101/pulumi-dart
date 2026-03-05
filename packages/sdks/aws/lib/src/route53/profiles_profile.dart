import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_profile_args.dart';
import 'profiles_profile_state.dart';
import 'profiles_profile_timeouts.dart';

/// Resource for managing an AWS Route 53 Profile.
///
/// ## Example Usage
///
/// ### Empty Profile
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ProfilesProfile("example", {
///     name: "example",
///     tags: {
///         Environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ProfilesProfile("example",
///     name="example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewProfilesProfile(ctx, "example", &route53.ProfilesProfileArgs{
/// 			Name: pulumi.String("example"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ProfilesProfile("example", ProfilesProfileArgs.builder()
///             .name("example")
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
///       tags:
///         Environment: dev
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Profile using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesProfile:ProfilesProfile example rp-12345678
/// ```
class ProfilesProfile extends pulumi.CustomResource {
  /// ARN of the Profile.
  late final pulumi.Output<String> arn;
  /// Name of the Profile.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Share status of the Profile.
  late final pulumi.Output<String> shareStatus;
  /// Status of the Profile.
  late final pulumi.Output<String> status;
  /// Status message of the Profile.
  late final pulumi.Output<String> statusMessage;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProfilesProfileTimeouts?> timeouts;

  /// Creates a new [ProfilesProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfilesProfile]. {@macro pulumi_route53_profiles_profile_profiles_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfilesProfile(
    String name, {
    ProfilesProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesProfile:ProfilesProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    shareStatus = registerOutput<String>('shareStatus');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ProfilesProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilesProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ProfilesProfile] resource's state with the given [name] and [id].
  static ProfilesProfile get(
    String name,
    pulumi.Input<String> id, {
    ProfilesProfileState? state,
  }) {
    return ProfilesProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfilesProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesProfile:ProfilesProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    shareStatus = registerOutput<String>('shareStatus');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ProfilesProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilesProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
