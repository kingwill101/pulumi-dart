import 'package:pulumi/pulumi.dart';
import '../trust_store_ca_certificates_bundle_source/trust_store_ca_certificates_bundle_source.dart';
import '../trust_store_timeouts/trust_store_timeouts.dart';
import 'trust_store_args.dart';

/// Manages an AWS CloudFront Trust Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.TrustStore("example", {
/// name: "example-trust-store",
/// caCertificatesBundleSource: {
/// caCertificatesBundleS3Location: {
/// bucket: "example-bucket",
/// key: "ca-certificates.pem",
/// region: "us-east-1",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.TrustStore("example",
/// name="example-trust-store",
/// ca_certificates_bundle_source={
/// "ca_certificates_bundle_s3_location": {
/// "bucket": "example-bucket",
/// "key": "ca-certificates.pem",
/// "region": "us-east-1",
/// },
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
/// var example = new Aws.CloudFront.TrustStore("example", new()
/// {
/// Name = "example-trust-store",
/// CaCertificatesBundleSource = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceArgs
/// {
/// CaCertificatesBundleS3Location = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs
/// {
/// Bucket = "example-bucket",
/// Key = "ca-certificates.pem",
/// Region = "us-east-1",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewTrustStore(ctx, "example", &cloudfront.TrustStoreArgs{
/// Name: pulumi.String("example-trust-store"),
/// CaCertificatesBundleSource: &cloudfront.TrustStoreCaCertificatesBundleSourceArgs{
/// CaCertificatesBundleS3Location: &cloudfront.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs{
/// Bucket: pulumi.String("example-bucket"),
/// Key:    pulumi.String("ca-certificates.pem"),
/// Region: pulumi.String("us-east-1"),
/// },
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
/// import com.pulumi.aws.cloudfront.TrustStore;
/// import com.pulumi.aws.cloudfront.TrustStoreArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs;
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
/// var example = new TrustStore("example", TrustStoreArgs.builder()
/// .name("example-trust-store")
/// .caCertificatesBundleSource(TrustStoreCaCertificatesBundleSourceArgs.builder()
/// .caCertificatesBundleS3Location(TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs.builder()
/// .bucket("example-bucket")
/// .key("ca-certificates.pem")
/// .region("us-east-1")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:TrustStore
/// properties:
/// name: example-trust-store
/// caCertificatesBundleSource:
/// caCertificatesBundleS3Location:
/// bucket: example-bucket
/// key: ca-certificates.pem
/// region: us-east-1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With S3 Object Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.TrustStore("example", {
/// name: "example-trust-store",
/// caCertificatesBundleSource: {
/// caCertificatesBundleS3Location: {
/// bucket: "example-bucket",
/// key: "ca-certificates.pem",
/// region: "us-east-1",
/// version: "abc123",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.TrustStore("example",
/// name="example-trust-store",
/// ca_certificates_bundle_source={
/// "ca_certificates_bundle_s3_location": {
/// "bucket": "example-bucket",
/// "key": "ca-certificates.pem",
/// "region": "us-east-1",
/// "version": "abc123",
/// },
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
/// var example = new Aws.CloudFront.TrustStore("example", new()
/// {
/// Name = "example-trust-store",
/// CaCertificatesBundleSource = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceArgs
/// {
/// CaCertificatesBundleS3Location = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs
/// {
/// Bucket = "example-bucket",
/// Key = "ca-certificates.pem",
/// Region = "us-east-1",
/// Version = "abc123",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewTrustStore(ctx, "example", &cloudfront.TrustStoreArgs{
/// Name: pulumi.String("example-trust-store"),
/// CaCertificatesBundleSource: &cloudfront.TrustStoreCaCertificatesBundleSourceArgs{
/// CaCertificatesBundleS3Location: &cloudfront.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs{
/// Bucket:  pulumi.String("example-bucket"),
/// Key:     pulumi.String("ca-certificates.pem"),
/// Region:  pulumi.String("us-east-1"),
/// Version: pulumi.String("abc123"),
/// },
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
/// import com.pulumi.aws.cloudfront.TrustStore;
/// import com.pulumi.aws.cloudfront.TrustStoreArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs;
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
/// var example = new TrustStore("example", TrustStoreArgs.builder()
/// .name("example-trust-store")
/// .caCertificatesBundleSource(TrustStoreCaCertificatesBundleSourceArgs.builder()
/// .caCertificatesBundleS3Location(TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs.builder()
/// .bucket("example-bucket")
/// .key("ca-certificates.pem")
/// .region("us-east-1")
/// .version("abc123")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:TrustStore
/// properties:
/// name: example-trust-store
/// caCertificatesBundleSource:
/// caCertificatesBundleS3Location:
/// bucket: example-bucket
/// key: ca-certificates.pem
/// region: us-east-1
/// version: abc123
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Trust Store using the trust store ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/trustStore:TrustStore example ts_12abcXYZhA4Q6RS6tuvW5Xy0ZZZ
/// ```
class TrustStore extends CustomResource {
  /// ARN of the trust store.
  late final Output<String> arn;

  /// Configuration block for the CA certificates bundle source. See <span pulumi-lang-nodejs="`caCertificatesBundleSource`" pulumi-lang-dotnet="`CaCertificatesBundleSource`" pulumi-lang-go="`caCertificatesBundleSource`" pulumi-lang-python="`ca_certificates_bundle_source`" pulumi-lang-yaml="`caCertificatesBundleSource`" pulumi-lang-java="`caCertificatesBundleSource`">`ca_certificates_bundle_source`</span> below.
  ///
  /// The following arguments are optional:
  late final Output<TrustStoreCaCertificatesBundleSource>
      caCertificatesBundleSource;

  /// ETag of the trust store.
  late final Output<String> etag;

  /// Name of the trust store. Changing this forces a new resource to be created.
  late final Output<String> name;

  /// Number of CA certificates in the trust store.
  late final Output<int> numberOfCaCertificates;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<TrustStoreTimeouts?> timeouts;

  TrustStore(
    String name, {
    TrustStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/trustStore:TrustStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.caCertificatesBundleSource =
        registerOutput<TrustStoreCaCertificatesBundleSource>(
            'caCertificatesBundleSource');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.numberOfCaCertificates = registerOutput<int>('numberOfCaCertificates');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<TrustStoreTimeouts?>('timeouts');
  }
}
