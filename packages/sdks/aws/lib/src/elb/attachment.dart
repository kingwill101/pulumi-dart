import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_args.dart';
import 'attachment_state.dart';

/// Attaches an EC2 instance to an Elastic Load Balancer (ELB). For attaching resources with Application Load Balancer (ALB) or Network Load Balancer (NLB), see the `aws.lb.TargetGroupAttachment` resource.
///
/// &gt; **NOTE on ELB Instances and ELB Attachments:** This provider currently provides
/// both a standalone ELB Attachment resource (describing an instance attached to
/// an ELB), and an Elastic Load Balancer resource with
/// `instances` defined in-line. At this time you cannot use an ELB with in-line
/// instances in conjunction with an ELB Attachment resource. Doing so will cause a
/// conflict and will overwrite attachments.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new load balancer attachment
/// const baz = new aws.elb.Attachment("baz", {
///     elb: bar.id,
///     instance: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new load balancer attachment
/// baz = aws.elb.Attachment("baz",
///     elb=bar["id"],
///     instance=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new load balancer attachment
///     var baz = new Aws.Elb.Attachment("baz", new()
///     {
///         Elb = bar.Id,
///         Instance = foo.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new load balancer attachment
/// 		_, err := elb.NewAttachment(ctx, "baz", &elb.AttachmentArgs{
/// 			Elb:      pulumi.Any(bar.Id),
/// 			Instance: pulumi.Any(foo.Id),
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
/// # Create a new load balancer attachment
/// resource "aws_elb_attachment" "baz" {
///   elb      = bar.id
///   instance = foo.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elb.Attachment;
/// import com.pulumi.aws.elb.AttachmentArgs;
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
///         // Create a new load balancer attachment
///         var baz = new Attachment("baz", AttachmentArgs.builder()
///             .elb(bar.id())
///             .instance(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new load balancer attachment
///   baz:
///     type: aws:elb:Attachment
///     properties:
///       elb: ${bar.id}
///       instance: ${foo.id}
/// ```
class Attachment extends pulumi.CustomResource {
  /// The name of the ELB.
  late final pulumi.Output<String> elb;
  /// Instance ID to place in the ELB pool.
  late final pulumi.Output<String> instance;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Attachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Attachment]. {@macro pulumi_elb_attachment_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Attachment(
    String name, {
    AttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/attachment:Attachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    elb = registerOutput<String>('elb');
    instance = registerOutput<String>('instance');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Attachment] resource's state with the given [name] and [id].
  static Attachment get(
    String name,
    pulumi.Input<String> id, {
    AttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Attachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Attachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/attachment:Attachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    elb = registerOutput<String>('elb');
    instance = registerOutput<String>('instance');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Attachment] resource.
  Attachment.reference(String urn)
    : super(
        'aws:elb/attachment:Attachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    elb = registerOutput<String>('elb');
    instance = registerOutput<String>('instance');
    region = registerOutput<String>('region');
  }
}
