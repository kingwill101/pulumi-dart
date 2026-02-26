import 'package:pulumi/pulumi.dart';
import 'listener_certificate_args.dart';

/// Provides a Load Balancer Listener Certificate resource.
///
/// This resource is for additional certificates and does not replace the default certificate on the listener.
///
/// > **Note:** <span pulumi-lang-nodejs="`aws.alb.ListenerCertificate`" pulumi-lang-dotnet="`aws.alb.ListenerCertificate`" pulumi-lang-go="`alb.ListenerCertificate`" pulumi-lang-python="`alb.ListenerCertificate`" pulumi-lang-yaml="`aws.alb.ListenerCertificate`" pulumi-lang-java="`aws.alb.ListenerCertificate`">`aws.alb.ListenerCertificate`</span> is known as <span pulumi-lang-nodejs="`aws.lb.ListenerCertificate`" pulumi-lang-dotnet="`aws.lb.ListenerCertificate`" pulumi-lang-go="`lb.ListenerCertificate`" pulumi-lang-python="`lb.ListenerCertificate`" pulumi-lang-yaml="`aws.lb.ListenerCertificate`" pulumi-lang-java="`aws.lb.ListenerCertificate`">`aws.lb.ListenerCertificate`</span>. The functionality is identical.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.acm.Certificate("example", {});
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {});
/// const exampleListenerCertificate = new aws.lb.ListenerCertificate("example", {
/// listenerArn: frontEndListener.arn,
/// certificateArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.acm.Certificate("example")
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_listener = aws.lb.Listener("front_end")
/// example_listener_certificate = aws.lb.ListenerCertificate("example",
/// listener_arn=front_end_listener.arn,
/// certificate_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Acm.Certificate("example");
///
/// var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
/// var frontEndListener = new Aws.LB.Listener("front_end");
///
/// var exampleListenerCertificate = new Aws.LB.ListenerCertificate("example", new()
/// {
/// ListenerArn = frontEndListener.Arn,
/// CertificateArn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := acm.NewCertificate(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewLoadBalancer(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// frontEndListener, err := lb.NewListener(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListenerCertificate(ctx, "example", &lb.ListenerCertificateArgs{
/// ListenerArn:    frontEndListener.Arn,
/// CertificateArn: example.Arn,
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
/// import com.pulumi.aws.acm.Certificate;
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerCertificate;
/// import com.pulumi.aws.lb.ListenerCertificateArgs;
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
/// var example = new Certificate("example");
///
/// var frontEnd = new LoadBalancer("frontEnd");
///
/// var frontEndListener = new Listener("frontEndListener");
///
/// var exampleListenerCertificate = new ListenerCertificate("exampleListenerCertificate", ListenerCertificateArgs.builder()
/// .listenerArn(frontEndListener.arn())
/// .certificateArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:acm:Certificate
/// frontEnd:
/// type: aws:lb:LoadBalancer
/// name: front_end
/// frontEndListener:
/// type: aws:lb:Listener
/// name: front_end
/// exampleListenerCertificate:
/// type: aws:lb:ListenerCertificate
/// name: example
/// properties:
/// listenerArn: ${frontEndListener.arn}
/// certificateArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Listener Certificates using the listener arn and certificate arn, separated by an underscore (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:alb/listenerCertificate:ListenerCertificate example arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/test/8e4497da625e2d8a/9ab28ade35828f96/67b3d2d36dd7c26b_arn:aws:iam::123456789012:server-certificate/tf-acc-test-6453083910015726063
/// ```
class ListenerCertificate extends CustomResource {
  /// The ARN of the certificate to attach to the listener.
  late final Output<String> certificateArn;

  /// The ARN of the listener to which to attach the certificate.
  late final Output<String> listenerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ListenerCertificate(
    String name, {
    ListenerCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:alb/listenerCertificate:ListenerCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateArn = registerOutput<String>('certificateArn');
    this.listenerArn = registerOutput<String>('listenerArn');
    this.region = registerOutput<String>('region');
  }
}
