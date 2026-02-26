import 'package:pulumi/pulumi.dart';
import 'trust_store_revocation_args.dart';

/// Provides a ELBv2 Trust Store Revocation for use with Application Load Balancer Listener resources.
///
/// ## Example Usage
///
/// ### Trust Store With Revocations
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
/// const testTrustStoreRevocation = new aws.lb.TrustStoreRevocation("test", {
/// trustStoreArn: test.arn,
/// revocationsS3Bucket: "...",
/// revocationsS3Key: "...",
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
/// test_trust_store_revocation = aws.lb.TrustStoreRevocation("test",
/// trust_store_arn=test.arn,
/// revocations_s3_bucket="...",
/// revocations_s3_key="...")
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
/// var testTrustStoreRevocation = new Aws.LB.TrustStoreRevocation("test", new()
/// {
/// TrustStoreArn = test.Arn,
/// RevocationsS3Bucket = "...",
/// RevocationsS3Key = "...",
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
/// _, err = lb.NewTrustStoreRevocation(ctx, "test", &lb.TrustStoreRevocationArgs{
/// TrustStoreArn:       test.Arn,
/// RevocationsS3Bucket: pulumi.String("..."),
/// RevocationsS3Key:    pulumi.String("..."),
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
/// import com.pulumi.aws.lb.TrustStoreRevocation;
/// import com.pulumi.aws.lb.TrustStoreRevocationArgs;
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
/// var testTrustStoreRevocation = new TrustStoreRevocation("testTrustStoreRevocation", TrustStoreRevocationArgs.builder()
/// .trustStoreArn(test.arn())
/// .revocationsS3Bucket("...")
/// .revocationsS3Key("...")
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
/// testTrustStoreRevocation:
/// type: aws:lb:TrustStoreRevocation
/// name: test
/// properties:
/// trustStoreArn: ${test.arn}
/// revocationsS3Bucket: '...'
/// revocationsS3Key: '...'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Trust Store Revocations using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/trustStoreRevocation:TrustStoreRevocation example arn:aws:elasticloadbalancing:us-west-2:187416307283:truststore/my-trust-store/20cfe21448b66314,6
/// ```
class TrustStoreRevocation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS assigned RevocationId, (number).
  late final Output<int> revocationId;

  /// S3 Bucket name holding the client certificate CA bundle.
  late final Output<String> revocationsS3Bucket;

  /// S3 object key holding the client certificate CA bundle.
  late final Output<String> revocationsS3Key;

  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  late final Output<String?> revocationsS3ObjectVersion;

  /// Trust Store ARN.
  late final Output<String> trustStoreArn;

  TrustStoreRevocation(
    String name, {
    TrustStoreRevocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lb/trustStoreRevocation:TrustStoreRevocation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.revocationId = registerOutput<int>('revocationId');
    this.revocationsS3Bucket = registerOutput<String>('revocationsS3Bucket');
    this.revocationsS3Key = registerOutput<String>('revocationsS3Key');
    this.revocationsS3ObjectVersion =
        registerOutput<String?>('revocationsS3ObjectVersion');
    this.trustStoreArn = registerOutput<String>('trustStoreArn');
  }
}
