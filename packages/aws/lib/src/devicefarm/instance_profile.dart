import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_profile_args.dart';

/// Provides a resource to manage AWS Device Farm Instance Profiles.
/// ∂
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devicefarm.InstanceProfile("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devicefarm.InstanceProfile("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DeviceFarm.InstanceProfile("example", new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devicefarm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devicefarm.NewInstanceProfile(ctx, "example", &devicefarm.InstanceProfileArgs{
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.aws.devicefarm.InstanceProfile;
/// import com.pulumi.aws.devicefarm.InstanceProfileArgs;
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
///         var example = new InstanceProfile("example", InstanceProfileArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devicefarm:InstanceProfile
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm instance profile.
///
///
/// Using `pulumi import`, import DeviceFarm Instance Profiles using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/instanceProfile:InstanceProfile example arn:aws:devicefarm:us-west-2:123456789012:instanceprofile:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class InstanceProfile extends pulumi.CustomResource {
  /// The Amazon Resource Name of this instance profile.
  late final pulumi.Output<String> arn;

  /// The description of the instance profile.
  late final pulumi.Output<String?> description;

  /// An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run.
  late final pulumi.Output<List<String>?> excludeAppPackagesFromCleanups;

  /// The name for the instance profile.
  late final pulumi.Output<String> name;

  /// When set to `true`, Device Farm removes app packages after a test run. The default value is `false` for private devices.
  late final pulumi.Output<bool?> packageCleanup;

  /// When set to `true`, Device Farm reboots the instance after a test run. The default value is `true`.
  late final pulumi.Output<bool?> rebootAfterUse;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [InstanceProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceProfile]. {@macro pulumi_devicefarm_instance_profile_instance_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceProfile(
    String name, {
    InstanceProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:devicefarm/instanceProfile:InstanceProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.excludeAppPackagesFromCleanups = registerOutput<List<String>?>(
      'excludeAppPackagesFromCleanups',
    );
    this.name = registerOutput<String>('name');
    this.packageCleanup = registerOutput<bool?>('packageCleanup');
    this.rebootAfterUse = registerOutput<bool?>('rebootAfterUse');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
