import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_group_args.dart';
import 'billing_group_properties.dart';
import 'billing_group_state.dart';

/// Manages an AWS IoT Billing Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.BillingGroup("example", {
///     name: "example",
///     properties: {
///         description: "This is my billing group",
///     },
///     tags: {
///         terraform: "true",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.BillingGroup("example",
///     name="example",
///     properties={
///         "description": "This is my billing group",
///     },
///     tags={
///         "terraform": "true",
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
///     var example = new Aws.Iot.BillingGroup("example", new()
///     {
///         Name = "example",
///         Properties = new Aws.Iot.Inputs.BillingGroupPropertiesArgs
///         {
///             Description = "This is my billing group",
///         },
///         Tags =
///         {
///             { "terraform", "true" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.NewBillingGroup(ctx, "example", &iot.BillingGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Properties: &iot.BillingGroupPropertiesArgs{
/// 				Description: pulumi.String("This is my billing group"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"terraform": pulumi.String("true"),
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
/// resource "aws_iot_billinggroup" "example" {
///   name = "example"
///   properties = {
///     description = "This is my billing group"
///   }
///   tags = {
///     "terraform" = "true"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iot.BillingGroup;
/// import com.pulumi.aws.iot.BillingGroupArgs;
/// import com.pulumi.aws.iot.inputs.BillingGroupPropertiesArgs;
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
///         var example = new BillingGroup("example", BillingGroupArgs.builder()
///             .name("example")
///             .properties(BillingGroupPropertiesArgs.builder()
///                 .description("This is my billing group")
///                 .build())
///             .tags(Map.of("terraform", "true"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:BillingGroup
///     properties:
///       name: example
///       properties:
///         description: This is my billing group
///       tags:
///         terraform: 'true'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Billing Groups using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/billingGroup:BillingGroup example example
/// ```
class BillingGroup extends pulumi.CustomResource {
  /// The ARN of the Billing Group.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<List<Map<String, dynamic>>> metadatas;
  /// The name of the Billing Group.
  late final pulumi.Output<String> name;
  /// The Billing Group properties. Defined below.
  late final pulumi.Output<BillingGroupProperties?> properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The current version of the Billing Group record in the registry.
  late final pulumi.Output<int> version;

  /// Creates a new [BillingGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BillingGroup]. {@macro pulumi_iot_billing_group_billing_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BillingGroup(
    String name, {
    BillingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/billingGroup:BillingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    metadatas = registerOutput<List<Map<String, dynamic>>>('metadatas');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BillingGroupProperties?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [BillingGroup] resource's state with the given [name] and [id].
  static BillingGroup get(
    String name,
    pulumi.Input<String> id, {
    BillingGroupState? state,
  }) {
    return BillingGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BillingGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/billingGroup:BillingGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    metadatas = registerOutput<List<Map<String, dynamic>>>('metadatas');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BillingGroupProperties?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<int>('version');
  }
}
