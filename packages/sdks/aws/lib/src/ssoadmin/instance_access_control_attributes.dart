import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_control_attributes_args.dart';
import 'instance_access_control_attributes_attribute.dart';
import 'instance_access_control_attributes_state.dart';

/// Provides a Single Sign-On (SSO) ABAC Resource: https://docs.aws.amazon.com/singlesignon/latest/userguide/abac.html
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleInstanceAccessControlAttributes = new aws.ssoadmin.InstanceAccessControlAttributes("example", {
///     attributes: [
///         {
///             values: [{
///                 sources: ["${path:name.givenName}"],
///             }],
///             key: "name",
///         },
///         {
///             values: [{
///                 sources: ["${path:name.familyName}"],
///             }],
///             key: "last",
///         },
///     ],
///     instanceArn: example.then(example => example.arns?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_instance_access_control_attributes = aws.ssoadmin.InstanceAccessControlAttributes("example",
///     attributes=[
///         {
///             "values": [{
///                 "sources": ["${path:name.givenName}"],
///             }],
///             "key": "name",
///         },
///         {
///             "values": [{
///                 "sources": ["${path:name.familyName}"],
///             }],
///             "key": "last",
///         },
///     ],
///     instance_arn=example.arns[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleInstanceAccessControlAttributes = new Aws.SsoAdmin.InstanceAccessControlAttributes("example", new()
///     {
///         Attributes = new[]
///         {
///             new Aws.SsoAdmin.Inputs.InstanceAccessControlAttributesAttributeArgs
///             {
///                 Values = new[]
///                 {
///                     new Aws.SsoAdmin.Inputs.InstanceAccessControlAttributesAttributeValueArgs
///                     {
///                         Sources = new[]
///                         {
///                             "${path:name.givenName}",
///                         },
///                     },
///                 },
///                 Key = "name",
///             },
///             new Aws.SsoAdmin.Inputs.InstanceAccessControlAttributesAttributeArgs
///             {
///                 Values = new[]
///                 {
///                     new Aws.SsoAdmin.Inputs.InstanceAccessControlAttributesAttributeValueArgs
///                     {
///                         Sources = new[]
///                         {
///                             "${path:name.familyName}",
///                         },
///                     },
///                 },
///                 Key = "last",
///             },
///         },
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewInstanceAccessControlAttributes(ctx, "example", &ssoadmin.InstanceAccessControlAttributesArgs{
/// 			Attributes: ssoadmin.InstanceAccessControlAttributesAttributeArray{
/// 				&ssoadmin.InstanceAccessControlAttributesAttributeArgs{
/// 					Values: ssoadmin.InstanceAccessControlAttributesAttributeValueArray{
/// 						&ssoadmin.InstanceAccessControlAttributesAttributeValueArgs{
/// 							Sources: pulumi.StringArray{
/// 								pulumi.String("${path:name.givenName}"),
/// 							},
/// 						},
/// 					},
/// 					Key: pulumi.String("name"),
/// 				},
/// 				&ssoadmin.InstanceAccessControlAttributesAttributeArgs{
/// 					Values: ssoadmin.InstanceAccessControlAttributesAttributeValueArray{
/// 						&ssoadmin.InstanceAccessControlAttributesAttributeValueArgs{
/// 							Sources: pulumi.StringArray{
/// 								pulumi.String("${path:name.familyName}"),
/// 							},
/// 						},
/// 					},
/// 					Key: pulumi.String("last"),
/// 				},
/// 			},
/// 			InstanceArn: pulumi.String(example.Arns[0]),
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
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_ssoadmin_instanceaccesscontrolattributes" "example" {
///   attributes {
///     values {
///       sources = ["$${path:name.givenName}"]
///     }
///     key = "name"
///   }
///   attributes {
///     values {
///       sources = ["$${path:name.familyName}"]
///     }
///     key = "last"
///   }
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.InstanceAccessControlAttributes;
/// import com.pulumi.aws.ssoadmin.InstanceAccessControlAttributesArgs;
/// import com.pulumi.aws.ssoadmin.inputs.InstanceAccessControlAttributesAttributeArgs;
/// import com.pulumi.aws.ssoadmin.inputs.InstanceAccessControlAttributesAttributeValueArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var exampleInstanceAccessControlAttributes = new InstanceAccessControlAttributes("exampleInstanceAccessControlAttributes", InstanceAccessControlAttributesArgs.builder()
///             .attributes(
///                 InstanceAccessControlAttributesAttributeArgs.builder()
///                     .values(InstanceAccessControlAttributesAttributeValueArgs.builder()
///                         .sources("${path:name.givenName}")
///                         .build())
///                     .key("name")
///                     .build(),
///                 InstanceAccessControlAttributesAttributeArgs.builder()
///                     .values(InstanceAccessControlAttributesAttributeValueArgs.builder()
///                         .sources("${path:name.familyName}")
///                         .build())
///                     .key("last")
///                     .build())
///             .instanceArn(example.arns()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleInstanceAccessControlAttributes:
///     type: aws:ssoadmin:InstanceAccessControlAttributes
///     name: example
///     properties:
///       attributes:
///         - values:
///             - sources:
///                 - $${path:name.givenName}
///           key: name
///         - values:
///             - sources:
///                 - $${path:name.familyName}
///           key: last
///       instanceArn: ${example.arns[0]}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Account Assignments using the `instanceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/instanceAccessControlAttributes:InstanceAccessControlAttributes example arn:aws:sso:::instance/ssoins-0123456789abcdef
/// ```
class InstanceAccessControlAttributes extends pulumi.CustomResource {
  /// See AccessControlAttribute for more details.
  late final pulumi.Output<List<InstanceAccessControlAttributesAttribute>> attributes;
  /// ARN of the SSO Instance.
  late final pulumi.Output<String> instanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> status;
  late final pulumi.Output<String> statusReason;

  /// Creates a new [InstanceAccessControlAttributes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAccessControlAttributes]. {@macro pulumi_ssoadmin_instance_access_control_attributes_instance_access_control_attributes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAccessControlAttributes(
    String name, {
    InstanceAccessControlAttributesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/instanceAccessControlAttributes:InstanceAccessControlAttributes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    attributes = registerOutput<List<InstanceAccessControlAttributesAttribute>>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceAccessControlAttributesAttribute>(guardedValue, (value) => InstanceAccessControlAttributesAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    instanceArn = registerOutput<String>('instanceArn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
  }

  /// Gets an existing [InstanceAccessControlAttributes] resource's state with the given [name] and [id].
  static InstanceAccessControlAttributes get(
    String name,
    pulumi.Input<String> id, {
    InstanceAccessControlAttributesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceAccessControlAttributes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceAccessControlAttributes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/instanceAccessControlAttributes:InstanceAccessControlAttributes',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<List<InstanceAccessControlAttributesAttribute>>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceAccessControlAttributesAttribute>(guardedValue, (value) => InstanceAccessControlAttributesAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    instanceArn = registerOutput<String>('instanceArn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
  }

  /// Creates a typed reference to an existing [InstanceAccessControlAttributes] resource.
  InstanceAccessControlAttributes.reference(String urn)
    : super(
        'aws:ssoadmin/instanceAccessControlAttributes:InstanceAccessControlAttributes',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attributes = registerOutput<List<InstanceAccessControlAttributesAttribute>>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceAccessControlAttributesAttribute>(guardedValue, (value) => InstanceAccessControlAttributesAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    instanceArn = registerOutput<String>('instanceArn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
  }
}
