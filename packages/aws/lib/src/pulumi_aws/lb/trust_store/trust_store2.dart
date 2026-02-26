import 'package:pulumi/pulumi.dart';
import 'trust_store_args2.dart';

/// Provides a ELBv2 Trust Store for use with Application Load Balancer Listener resources.
///
/// ## Example Usage
///
/// ### Trust Store Load Balancer Listener
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.TrustStore("test", {
/// name: "tf-example-lb-ts",
/// caCertificatesBundleS3Bucket: "...",
/// caCertificatesBundleS3Key: "...",
/// });
/// const example = new aws.lb.Listener("example", {
/// loadBalancerArn: exampleAwsLb.id,
/// defaultActions: [{
/// targetGroupArn: exampleAwsLbTargetGroup.id,
/// type: "forward",
/// }],
/// mutualAuthentication: {
/// mode: "verify",
/// trustStoreArn: test.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.TrustStore("test",
/// name="tf-example-lb-ts",
/// ca_certificates_bundle_s3_bucket="...",
/// ca_certificates_bundle_s3_key="...")
/// example = aws.lb.Listener("example",
/// load_balancer_arn=example_aws_lb["id"],
/// default_actions=[{
/// "target_group_arn": example_aws_lb_target_group["id"],
/// "type": "forward",
/// }],
/// mutual_authentication={
/// "mode": "verify",
/// "trust_store_arn": test.arn,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.LB.TrustStore("test", new()
/// {
/// Name = "tf-example-lb-ts",
/// CaCertificatesBundleS3Bucket = "...",
/// CaCertificatesBundleS3Key = "...",
/// });
///
/// var example = new Aws.LB.Listener("example", new()
/// {
/// LoadBalancerArn = exampleAwsLb.Id,
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// TargetGroupArn = exampleAwsLbTargetGroup.Id,
/// Type = "forward",
/// },
/// },
/// MutualAuthentication = new Aws.LB.Inputs.ListenerMutualAuthenticationArgs
/// {
/// Mode = "verify",
/// TrustStoreArn = test.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := lb.NewTrustStore(ctx, "test", &lb.TrustStoreArgs{
/// Name:                         pulumi.String("tf-example-lb-ts"),
/// CaCertificatesBundleS3Bucket: pulumi.String("..."),
/// CaCertificatesBundleS3Key:    pulumi.String("..."),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// LoadBalancerArn: pulumi.Any(exampleAwsLb.Id),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// TargetGroupArn: pulumi.Any(exampleAwsLbTargetGroup.Id),
/// Type:           pulumi.String("forward"),
/// },
/// },
/// MutualAuthentication: &lb.ListenerMutualAuthenticationArgs{
/// Mode:          pulumi.String("verify"),
/// TrustStoreArn: test.Arn,
/// },
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
/// import com.pulumi.aws.lb.TrustStore;
/// import com.pulumi.aws.lb.TrustStoreArgs;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerMutualAuthenticationArgs;
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
/// var test = new TrustStore("test", TrustStoreArgs.builder()
/// .name("tf-example-lb-ts")
/// .caCertificatesBundleS3Bucket("...")
/// .caCertificatesBundleS3Key("...")
/// .build());
///
/// var example = new Listener("example", ListenerArgs.builder()
/// .loadBalancerArn(exampleAwsLb.id())
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .targetGroupArn(exampleAwsLbTargetGroup.id())
/// .type("forward")
/// .build())
/// .mutualAuthentication(ListenerMutualAuthenticationArgs.builder()
/// .mode("verify")
/// .trustStoreArn(test.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:lb:TrustStore
/// properties:
/// name: tf-example-lb-ts
/// caCertificatesBundleS3Bucket: '...'
/// caCertificatesBundleS3Key: '...'
/// example:
/// type: aws:lb:Listener
/// properties:
/// loadBalancerArn: ${exampleAwsLb.id}
/// defaultActions:
/// - targetGroupArn: ${exampleAwsLbTargetGroup.id}
/// type: forward
/// mutualAuthentication:
/// mode: verify
/// trustStoreArn: ${test.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the trust store.
///
///
/// Using `pulumi import`, import Target Groups using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/trustStore:TrustStore example arn:aws:elasticloadbalancing:us-west-2:187416307283:truststore/my-trust-store/20cfe21448b66314
/// ```
class TrustStore2 extends CustomResource {
  /// ARN of the Trust Store (matches <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>).
  late final Output<String> arn;

  /// ARN suffix for use with CloudWatch Metrics.
  late final Output<String> arnSuffix;

  /// S3 Bucket name holding the client certificate CA bundle.
  late final Output<String> caCertificatesBundleS3Bucket;

  /// S3 object key holding the client certificate CA bundle.
  late final Output<String> caCertificatesBundleS3Key;

  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  late final Output<String?> caCertificatesBundleS3ObjectVersion;

  /// Name of the Trust Store. If omitted, the provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. Cannot be longer than 6 characters.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  TrustStore2(
    String name, {
    TrustStoreArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lb/trustStore:TrustStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.arnSuffix = registerOutput<String>('arnSuffix');
    this.caCertificatesBundleS3Bucket =
        registerOutput<String>('caCertificatesBundleS3Bucket');
    this.caCertificatesBundleS3Key =
        registerOutput<String>('caCertificatesBundleS3Key');
    this.caCertificatesBundleS3ObjectVersion =
        registerOutput<String?>('caCertificatesBundleS3ObjectVersion');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
