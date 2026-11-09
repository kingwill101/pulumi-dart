import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_profile_args.dart';
import 'access_profile_state.dart';
import 'access_profile_timeouts.dart';

/// Manages an Amazon CloudWatch Omni access profile.
///
/// An access profile belongs to a space and is referenced by access grants to authorize principals in that space.
///
/// &gt; **NOTE:** An access profile cannot be deleted while access grants reference it.
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
/// const example = new aws.cloudwatchomni.AccessProfile("example", {
///     name: "example",
///     spaceId: exampleAwsCloudwatchomniSpace.spaceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.AccessProfile("example",
///     name="example",
///     space_id=example_aws_cloudwatchomni_space["spaceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatchOmni.AccessProfile("example", new()
///     {
///         Name = "example",
///         SpaceId = exampleAwsCloudwatchomniSpace.SpaceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewAccessProfile(ctx, "example", &cloudwatchomni.AccessProfileArgs{
/// 			Name:    pulumi.String("example"),
/// 			SpaceId: pulumi.Any(exampleAwsCloudwatchomniSpace.SpaceId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatchomni_access_profile" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "example"
///   space_id = exampleAwsCloudwatchomniSpace.spaceId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.AccessProfile;
/// import com.pulumi.aws.cloudwatchomni.AccessProfileArgs;
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
///         var example = new AccessProfile("example", AccessProfileArgs.builder()
///             .name("example")
///             .spaceId(exampleAwsCloudwatchomniSpace.get("spaceId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:AccessProfile
///     properties:
///       name: example
///       spaceId: ${exampleAwsCloudwatchomniSpace.spaceId}
/// ```
///
///
/// ### With Description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatchomni.AccessProfile("example", {
///     name: "example",
///     description: "Example access profile",
///     spaceId: exampleAwsCloudwatchomniSpace.spaceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.AccessProfile("example",
///     name="example",
///     description="Example access profile",
///     space_id=example_aws_cloudwatchomni_space["spaceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatchOmni.AccessProfile("example", new()
///     {
///         Name = "example",
///         Description = "Example access profile",
///         SpaceId = exampleAwsCloudwatchomniSpace.SpaceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewAccessProfile(ctx, "example", &cloudwatchomni.AccessProfileArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example access profile"),
/// 			SpaceId:     pulumi.Any(exampleAwsCloudwatchomniSpace.SpaceId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatchomni_access_profile" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "example"
///   description = "Example access profile"
///   space_id    = exampleAwsCloudwatchomniSpace.spaceId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.AccessProfile;
/// import com.pulumi.aws.cloudwatchomni.AccessProfileArgs;
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
///         var example = new AccessProfile("example", AccessProfileArgs.builder()
///             .name("example")
///             .description("Example access profile")
///             .spaceId(exampleAwsCloudwatchomniSpace.get("spaceId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:AccessProfile
///     properties:
///       name: example
///       description: Example access profile
///       spaceId: ${exampleAwsCloudwatchomniSpace.spaceId}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `profileId` (String) Access profile ID.
/// * `spaceId` (String) Space ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch Omni access profiles using `spaceId` and `profileId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatchomni/accessProfile:AccessProfile example a1b2c3d4-5678-90ab-cdef-EXAMPLE11111,a1b2c3d4-5678-90ab-cdef-EXAMPLE22222
/// ```
class AccessProfile extends pulumi.CustomResource {
  /// ARN of the access profile.
  late final pulumi.Output<String> arn;
  /// Whether the calling principal can assume the access profile. Valid values: `ALLOWED`, `DENIED`.
  late final pulumi.Output<String> assumeStatus;
  /// Description of the access profile.
  late final pulumi.Output<String?> description;
  /// Name of the access profile.
  late final pulumi.Output<String> name;
  /// Unique identifier of the access profile.
  late final pulumi.Output<String> profileId;
  /// Who manages the access profile. Valid values: `CUSTOMER_MANAGED`, `SERVICE_MANAGED`.
  late final pulumi.Output<String> profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the space that contains the access profile.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> spaceId;
  late final pulumi.Output<AccessProfileTimeouts?> timeouts;

  /// Creates a new [AccessProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessProfile]. {@macro pulumi_cloudwatchomni_access_profile_access_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessProfile(
    String name, {
    AccessProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/accessProfile:AccessProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    assumeStatus = registerOutput<String>('assumeStatus');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    profileId = registerOutput<String>('profileId');
    profileType = registerOutput<String>('profileType');
    region = registerOutput<String>('region');
    spaceId = registerOutput<String>('spaceId');
    timeouts = registerOutput<AccessProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AccessProfile] resource's state with the given [name] and [id].
  static AccessProfile get(
    String name,
    pulumi.Input<String> id, {
    AccessProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/accessProfile:AccessProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    assumeStatus = registerOutput<String>('assumeStatus');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    profileId = registerOutput<String>('profileId');
    profileType = registerOutput<String>('profileType');
    region = registerOutput<String>('region');
    spaceId = registerOutput<String>('spaceId');
    timeouts = registerOutput<AccessProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AccessProfile] resource.
  AccessProfile.reference(String urn)
    : super(
        'aws:cloudwatchomni/accessProfile:AccessProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    assumeStatus = registerOutput<String>('assumeStatus');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    profileId = registerOutput<String>('profileId');
    profileType = registerOutput<String>('profileType');
    region = registerOutput<String>('region');
    spaceId = registerOutput<String>('spaceId');
    timeouts = registerOutput<AccessProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
