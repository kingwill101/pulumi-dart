import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_principal_attachment_args.dart';
import 'thing_principal_attachment_state.dart';

/// Attaches Principal to AWS IoT Thing.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.iot.Thing("example", {name: "example"});
/// const cert = new aws.iot.Certificate("cert", {
///     csr: std.file({
///         input: "csr.pem",
///     }).then(invoke => invoke.result),
///     active: true,
/// });
/// const att = new aws.iot.ThingPrincipalAttachment("att", {
///     principal: cert.arn,
///     thing: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.iot.Thing("example", name="example")
/// cert = aws.iot.Certificate("cert",
///     csr=std.file(input="csr.pem").result,
///     active=True)
/// att = aws.iot.ThingPrincipalAttachment("att",
///     principal=cert.arn,
///     thing=example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iot.Thing("example", new()
///     {
///         Name = "example",
///     });
///
///     var cert = new Aws.Iot.Certificate("cert", new()
///     {
///         Csr = Std.File.Invoke(new()
///         {
///             Input = "csr.pem",
///         }).Apply(invoke => invoke.Result),
///         Active = true,
///     });
///
///     var att = new Aws.Iot.ThingPrincipalAttachment("att", new()
///     {
///         Principal = cert.Arn,
///         Thing = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iot.NewThing(ctx, "example", &iot.ThingArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "csr.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cert, err := iot.NewCertificate(ctx, "cert", &iot.CertificateArgs{
/// 			Csr:    pulumi.String(invokeFile.Result),
/// 			Active: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewThingPrincipalAttachment(ctx, "att", &iot.ThingPrincipalAttachmentArgs{
/// 			Principal: cert.Arn,
/// 			Thing:     example.Name,
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
/// import com.pulumi.aws.iot.Thing;
/// import com.pulumi.aws.iot.ThingArgs;
/// import com.pulumi.aws.iot.Certificate;
/// import com.pulumi.aws.iot.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.aws.iot.ThingPrincipalAttachment;
/// import com.pulumi.aws.iot.ThingPrincipalAttachmentArgs;
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
///         var example = new Thing("example", ThingArgs.builder()
///             .name("example")
///             .build());
///
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .csr(StdFunctions.file(FileArgs.builder()
///                 .input("csr.pem")
///                 .build()).result())
///             .active(true)
///             .build());
///
///         var att = new ThingPrincipalAttachment("att", ThingPrincipalAttachmentArgs.builder()
///             .principal(cert.arn())
///             .thing(example.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:Thing
///     properties:
///       name: example
///   cert:
///     type: aws:iot:Certificate
///     properties:
///       csr:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: csr.pem
///           return: result
///       active: true
///   att:
///     type: aws:iot:ThingPrincipalAttachment
///     properties:
///       principal: ${cert.arn}
///       thing: ${example.name}
/// ```
class ThingPrincipalAttachment extends pulumi.CustomResource {
  /// The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
  late final pulumi.Output<String> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the thing.
  late final pulumi.Output<String> thing;
  /// The type of relationship to specify when attaching a principal to a thing. Valid values are `EXCLUSIVE_THING` (the thing will be the only one attached to the principal) or `NON_EXCLUSIVE_THING` (multiple things can be attached to the principal). Defaults to `NON_EXCLUSIVE_THING`.
  late final pulumi.Output<String> thingPrincipalType;

  /// Creates a new [ThingPrincipalAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThingPrincipalAttachment]. {@macro pulumi_iot_thing_principal_attachment_thing_principal_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThingPrincipalAttachment(
    String name, {
    ThingPrincipalAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingPrincipalAttachment:ThingPrincipalAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.thing = registerOutput<String>('thing');
    this.thingPrincipalType = registerOutput<String>('thingPrincipalType');
  }

  /// Gets an existing [ThingPrincipalAttachment] resource's state with the given [name] and [id].
  static ThingPrincipalAttachment get(
    String name,
    pulumi.Input<String> id, {
    ThingPrincipalAttachmentState? state,
  }) {
    return ThingPrincipalAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ThingPrincipalAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingPrincipalAttachment:ThingPrincipalAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.thing = registerOutput<String>('thing');
    this.thingPrincipalType = registerOutput<String>('thingPrincipalType');
  }
}
