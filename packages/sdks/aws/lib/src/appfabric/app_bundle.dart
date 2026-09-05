import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_bundle_args.dart';
import 'app_bundle_state.dart';

/// Resource for managing an AWS AppFabric AppBundle.
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
/// const example = new aws.appfabric.AppBundle("example", {
///     customerManagedKeyArn: exampleAwmsKmsKey.arn,
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.AppBundle("example",
///     customer_managed_key_arn=example_awms_kms_key["arn"],
///     tags={
///         "Environment": "test",
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
///     var example = new Aws.AppFabric.AppBundle("example", new()
///     {
///         CustomerManagedKeyArn = exampleAwmsKmsKey.Arn,
///         Tags =
///         {
///             { "Environment", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appfabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appfabric.NewAppBundle(ctx, "example", &appfabric.AppBundleArgs{
/// 			CustomerManagedKeyArn: pulumi.Any(exampleAwmsKmsKey.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
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
/// resource "aws_appfabric_appbundle" "example" {
///   customer_managed_key_arn = exampleAwmsKmsKey.arn
///   tags = {
///     "Environment" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appfabric.AppBundle;
/// import com.pulumi.aws.appfabric.AppBundleArgs;
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
///         var example = new AppBundle("example", AppBundleArgs.builder()
///             .customerManagedKeyArn(exampleAwmsKmsKey.arn())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appfabric:AppBundle
///     properties:
///       customerManagedKeyArn: ${exampleAwmsKmsKey.arn}
///       tags:
///         Environment: test
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the AppFabric app bundle.
///
///
/// Using `pulumi import`, import AppFabric AppBundle using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:appfabric/appBundle:AppBundle example arn:aws:appfabric:[region]:[account]:appbundle/ee5587b4-5765-4288-a202-xxxxxxxxxx
/// ```
class AppBundle extends pulumi.CustomResource {
  /// ARN of the AppBundle.
  late final pulumi.Output<String> arn;
  /// ARN of the KMS key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  late final pulumi.Output<String?> customerManagedKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AppBundle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppBundle]. {@macro pulumi_appfabric_app_bundle_app_bundle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppBundle(
    String name, {
    AppBundleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appBundle:AppBundle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    customerManagedKeyArn = registerOutput<String?>('customerManagedKeyArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AppBundle] resource's state with the given [name] and [id].
  static AppBundle get(
    String name,
    pulumi.Input<String> id, {
    AppBundleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppBundle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppBundle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appBundle:AppBundle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customerManagedKeyArn = registerOutput<String?>('customerManagedKeyArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AppBundle] resource.
  AppBundle.reference(String urn)
    : super(
        'aws:appfabric/appBundle:AppBundle',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    customerManagedKeyArn = registerOutput<String?>('customerManagedKeyArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
