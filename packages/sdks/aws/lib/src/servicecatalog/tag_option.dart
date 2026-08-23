import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_option_args.dart';
import 'tag_option_state.dart';

/// Manages a Service Catalog Tag Option.
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
/// const example = new aws.servicecatalog.TagOption("example", {
///     key: "nyckel",
///     value: "värde",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.TagOption("example",
///     key="nyckel",
///     value="värde")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.TagOption("example", new()
///     {
///         Key = "nyckel",
///         Value = "värde",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewTagOption(ctx, "example", &servicecatalog.TagOptionArgs{
/// 			Key:   pulumi.String("nyckel"),
/// 			Value: pulumi.String("värde"),
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
/// resource "aws_servicecatalog_tagoption" "example" {
///   key   = "nyckel"
///   value = "värde"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicecatalog.TagOption;
/// import com.pulumi.aws.servicecatalog.TagOptionArgs;
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
///         var example = new TagOption("example", TagOptionArgs.builder()
///             .key("nyckel")
///             .value("värde")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:TagOption
///     properties:
///       key: nyckel
///       value: värde
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.TagOption` using the tag option ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/tagOption:TagOption example tag-pjtvagohlyo3m
/// ```
class TagOption extends pulumi.CustomResource {
  /// Whether tag option is active. Default is `true`.
  late final pulumi.Output<bool?> active;
  /// Tag option key.
  late final pulumi.Output<String> key;
  late final pulumi.Output<String> owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tag option value.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> value;

  /// Creates a new [TagOption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagOption]. {@macro pulumi_servicecatalog_tag_option_tag_option_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagOption(
    String name, {
    TagOptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/tagOption:TagOption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    key = registerOutput<String>('key');
    owner = registerOutput<String>('owner');
    region = registerOutput<String>('region');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [TagOption] resource's state with the given [name] and [id].
  static TagOption get(
    String name,
    pulumi.Input<String> id, {
    TagOptionState? state,
  }) {
    return TagOption._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TagOption._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/tagOption:TagOption',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    key = registerOutput<String>('key');
    owner = registerOutput<String>('owner');
    region = registerOutput<String>('region');
    value = registerOutput<String>('value');
  }
}
