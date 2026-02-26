import 'package:pulumi/pulumi.dart';
import 'attachment_args2.dart';

/// Attaches an EC2 instance to an Elastic Load Balancer (ELB). For attaching resources with Application Load Balancer (ALB) or Network Load Balancer (NLB), see the <span pulumi-lang-nodejs="`aws.lb.TargetGroupAttachment`" pulumi-lang-dotnet="`aws.lb.TargetGroupAttachment`" pulumi-lang-go="`lb.TargetGroupAttachment`" pulumi-lang-python="`lb.TargetGroupAttachment`" pulumi-lang-yaml="`aws.lb.TargetGroupAttachment`" pulumi-lang-java="`aws.lb.TargetGroupAttachment`">`aws.lb.TargetGroupAttachment`</span> resource.
///
/// > **NOTE on ELB Instances and ELB Attachments:** This provider currently provides
/// both a standalone ELB Attachment resource (describing an instance attached to
/// an ELB), and an Elastic Load Balancer resource with
/// <span pulumi-lang-nodejs="`instances`" pulumi-lang-dotnet="`Instances`" pulumi-lang-go="`instances`" pulumi-lang-python="`instances`" pulumi-lang-yaml="`instances`" pulumi-lang-java="`instances`">`instances`</span> defined in-line. At this time you cannot use an ELB with in-line
/// instances in conjunction with an ELB Attachment resource. Doing so will cause a
/// conflict and will overwrite attachments.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new load balancer attachment
/// const baz = new aws.elb.Attachment("baz", {
/// elb: bar.id,
/// instance: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new load balancer attachment
/// baz = aws.elb.Attachment("baz",
/// elb=bar["id"],
/// instance=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Create a new load balancer attachment
/// var baz = new Aws.Elb.Attachment("baz", new()
/// {
/// Elb = bar.Id,
/// Instance = foo.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create a new load balancer attachment
/// _, err := elb.NewAttachment(ctx, "baz", &elb.AttachmentArgs{
/// Elb:      pulumi.Any(bar.Id),
/// Instance: pulumi.Any(foo.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// // Create a new load balancer attachment
/// var baz = new Attachment("baz", AttachmentArgs.builder()
/// .elb(bar.id())
/// .instance(foo.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a new load balancer attachment
/// baz:
/// type: aws:elb:Attachment
/// properties:
/// elb: ${bar.id}
/// instance: ${foo.id}
/// ```
/// <!--End PulumiCodeChooser -->
class Attachment2 extends CustomResource {
  /// The name of the ELB.
  late final Output<String> elb;

  /// Instance ID to place in the ELB pool.
  late final Output<String> instance;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Attachment2(
    String name, {
    AttachmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elb/attachment:Attachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.elb = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
