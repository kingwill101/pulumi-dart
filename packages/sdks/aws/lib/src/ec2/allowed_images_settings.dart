import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_images_settings_args.dart';
import 'allowed_images_settings_image_criterion.dart';
import 'allowed_images_settings_state.dart';

/// Provides EC2 allowed images settings for an AWS account. This feature allows you to control which AMIs can be used to launch EC2 instances in your account based on specified criteria.
///
/// For more information about the image criteria that can be set, see the [AWS documentation on Allowed AMIs JSON configuration](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html#allowed-amis-json-configuration).
///
/// &gt; **NOTE:** The AWS API does not delete this resource. When you run `destroy`, the provider will attempt to disable the setting.
///
/// &gt; **NOTE:** There is only one allowed images settings configuration per AWS account and region. Creating this resource will configure the account-level settings.
///
/// ## Example Usage
///
/// ### Enable with Amazon AMIs only
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AllowedImagesSettings("example", {
///     imageCriterions: [{
///         imageProviders: ["amazon"],
///     }],
///     state: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AllowedImagesSettings("example",
///     image_criterions=[{
///         "image_providers": ["amazon"],
///     }],
///     state="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.AllowedImagesSettings("example", new()
///     {
///         ImageCriterions = new[]
///         {
///             new Aws.Ec2.Inputs.AllowedImagesSettingsImageCriterionArgs
///             {
///                 ImageProviders = new[]
///                 {
///                     "amazon",
///                 },
///             },
///         },
///         State = "enabled",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewAllowedImagesSettings(ctx, "example", &ec2.AllowedImagesSettingsArgs{
/// 			ImageCriterions: ec2.AllowedImagesSettingsImageCriterionArray{
/// 				&ec2.AllowedImagesSettingsImageCriterionArgs{
/// 					ImageProviders: pulumi.StringArray{
/// 						pulumi.String("amazon"),
/// 					},
/// 				},
/// 			},
/// 			State: pulumi.String("enabled"),
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
/// resource "aws_ec2_allowedimagessettings" "example" {
///   image_criterions {
///     image_providers = ["amazon"]
///   }
///   state = "enabled"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.AllowedImagesSettings;
/// import com.pulumi.aws.ec2.AllowedImagesSettingsArgs;
/// import com.pulumi.aws.ec2.inputs.AllowedImagesSettingsImageCriterionArgs;
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
///         var example = new AllowedImagesSettings("example", AllowedImagesSettingsArgs.builder()
///             .imageCriterions(AllowedImagesSettingsImageCriterionArgs.builder()
///                 .imageProviders("amazon")
///                 .build())
///             .state("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:AllowedImagesSettings
///     properties:
///       imageCriterions:
///         - imageProviders:
///             - amazon
///       state: enabled
/// ```
///
///
/// ### Enable audit mode with specific account IDs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AllowedImagesSettings("example", {
///     imageCriterions: [{
///         imageProviders: [
///             "amazon",
///             "123456789012",
///         ],
///     }],
///     state: "audit-mode",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AllowedImagesSettings("example",
///     image_criterions=[{
///         "image_providers": [
///             "amazon",
///             "123456789012",
///         ],
///     }],
///     state="audit-mode")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.AllowedImagesSettings("example", new()
///     {
///         ImageCriterions = new[]
///         {
///             new Aws.Ec2.Inputs.AllowedImagesSettingsImageCriterionArgs
///             {
///                 ImageProviders = new[]
///                 {
///                     "amazon",
///                     "123456789012",
///                 },
///             },
///         },
///         State = "audit-mode",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewAllowedImagesSettings(ctx, "example", &ec2.AllowedImagesSettingsArgs{
/// 			ImageCriterions: ec2.AllowedImagesSettingsImageCriterionArray{
/// 				&ec2.AllowedImagesSettingsImageCriterionArgs{
/// 					ImageProviders: pulumi.StringArray{
/// 						pulumi.String("amazon"),
/// 						pulumi.String("123456789012"),
/// 					},
/// 				},
/// 			},
/// 			State: pulumi.String("audit-mode"),
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
/// resource "aws_ec2_allowedimagessettings" "example" {
///   image_criterions {
///     image_providers = ["amazon", "123456789012"]
///   }
///   state = "audit-mode"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.AllowedImagesSettings;
/// import com.pulumi.aws.ec2.AllowedImagesSettingsArgs;
/// import com.pulumi.aws.ec2.inputs.AllowedImagesSettingsImageCriterionArgs;
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
///         var example = new AllowedImagesSettings("example", AllowedImagesSettingsArgs.builder()
///             .imageCriterions(AllowedImagesSettingsImageCriterionArgs.builder()
///                 .imageProviders(
///                     "amazon",
///                     "123456789012")
///                 .build())
///             .state("audit-mode")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:AllowedImagesSettings
///     properties:
///       imageCriterions:
///         - imageProviders:
///             - amazon
///             - '123456789012'
///       state: audit-mode
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 allowed images settings. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/allowedImagesSettings:AllowedImagesSettings example us-east-1
/// ```
class AllowedImagesSettings extends pulumi.CustomResource {
  /// List of image criteria. Maximum of 10 criterion blocks allowed. See `imageCriterion` below.
  late final pulumi.Output<List<AllowedImagesSettingsImageCriterion>?> imageCriterions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the allowed images settings. Valid values are `enabled` or `audit-mode`.
  late final pulumi.Output<String> state;

  /// Creates a new [AllowedImagesSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AllowedImagesSettings]. {@macro pulumi_ec2_allowed_images_settings_allowed_images_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AllowedImagesSettings(
    String name, {
    AllowedImagesSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/allowedImagesSettings:AllowedImagesSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    imageCriterions = registerOutput<List<AllowedImagesSettingsImageCriterion>?>('imageCriterions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AllowedImagesSettingsImageCriterion>(guardedValue, (value) => AllowedImagesSettingsImageCriterion.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [AllowedImagesSettings] resource's state with the given [name] and [id].
  static AllowedImagesSettings get(
    String name,
    pulumi.Input<String> id, {
    AllowedImagesSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AllowedImagesSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AllowedImagesSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/allowedImagesSettings:AllowedImagesSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    imageCriterions = registerOutput<List<AllowedImagesSettingsImageCriterion>?>('imageCriterions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AllowedImagesSettingsImageCriterion>(guardedValue, (value) => AllowedImagesSettingsImageCriterion.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [AllowedImagesSettings] resource.
  AllowedImagesSettings.reference(String urn)
    : super(
        'aws:ec2/allowedImagesSettings:AllowedImagesSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    imageCriterions = registerOutput<List<AllowedImagesSettingsImageCriterion>?>('imageCriterions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AllowedImagesSettingsImageCriterion>(guardedValue, (value) => AllowedImagesSettingsImageCriterion.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
  }
}
