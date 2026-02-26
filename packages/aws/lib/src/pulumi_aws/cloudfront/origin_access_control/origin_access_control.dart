import 'package:pulumi/pulumi.dart';
import 'origin_access_control_args.dart';

/// Manages an AWS CloudFront Origin Access Control, which is used by CloudFront Distributions with an Amazon S3 bucket as the origin.
///
/// Read more about Origin Access Control in the [CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html).
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
/// const example = new aws.cloudfront.OriginAccessControl("example", {
/// name: "example",
/// description: "Example Policy",
/// originAccessControlOriginType: "s3",
/// signingBehavior: "always",
/// signingProtocol: "sigv4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.OriginAccessControl("example",
/// name="example",
/// description="Example Policy",
/// origin_access_control_origin_type="s3",
/// signing_behavior="always",
/// signing_protocol="sigv4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.OriginAccessControl("example", new()
/// {
/// Name = "example",
/// Description = "Example Policy",
/// OriginAccessControlOriginType = "s3",
/// SigningBehavior = "always",
/// SigningProtocol = "sigv4",
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
/// _, err := cloudfront.NewOriginAccessControl(ctx, "example", &cloudfront.OriginAccessControlArgs{
/// Name:                          pulumi.String("example"),
/// Description:                   pulumi.String("Example Policy"),
/// OriginAccessControlOriginType: pulumi.String("s3"),
/// SigningBehavior:               pulumi.String("always"),
/// SigningProtocol:               pulumi.String("sigv4"),
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
/// import com.pulumi.aws.cloudfront.OriginAccessControl;
/// import com.pulumi.aws.cloudfront.OriginAccessControlArgs;
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
/// var example = new OriginAccessControl("example", OriginAccessControlArgs.builder()
/// .name("example")
/// .description("Example Policy")
/// .originAccessControlOriginType("s3")
/// .signingBehavior("always")
/// .signingProtocol("sigv4")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:OriginAccessControl
/// properties:
/// name: example
/// description: Example Policy
/// originAccessControlOriginType: s3
/// signingBehavior: always
/// signingProtocol: sigv4
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Origin Access Control using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originAccessControl:OriginAccessControl example E327GJI25M56DG
/// ```
class OriginAccessControl extends CustomResource {
  /// The Origin Access Control ARN.
  late final Output<String> arn;

  /// The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  late final Output<String?> description;

  /// The current version of this Origin Access Control.
  late final Output<String> etag;

  /// A name that identifies the Origin Access Control.
  late final Output<String> name;

  /// The type of origin that this Origin Access Control is for. Valid values are <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>, <span pulumi-lang-nodejs="`mediapackagev2`" pulumi-lang-dotnet="`Mediapackagev2`" pulumi-lang-go="`mediapackagev2`" pulumi-lang-python="`mediapackagev2`" pulumi-lang-yaml="`mediapackagev2`" pulumi-lang-java="`mediapackagev2`">`mediapackagev2`</span>, <span pulumi-lang-nodejs="`mediastore`" pulumi-lang-dotnet="`Mediastore`" pulumi-lang-go="`mediastore`" pulumi-lang-python="`mediastore`" pulumi-lang-yaml="`mediastore`" pulumi-lang-java="`mediastore`">`mediastore`</span>, and <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>.
  late final Output<String> originAccessControlOriginType;

  /// Specifies which requests CloudFront signs. Specify <span pulumi-lang-nodejs="`always`" pulumi-lang-dotnet="`Always`" pulumi-lang-go="`always`" pulumi-lang-python="`always`" pulumi-lang-yaml="`always`" pulumi-lang-java="`always`">`always`</span> for the most common use case. Allowed values: <span pulumi-lang-nodejs="`always`" pulumi-lang-dotnet="`Always`" pulumi-lang-go="`always`" pulumi-lang-python="`always`" pulumi-lang-yaml="`always`" pulumi-lang-java="`always`">`always`</span>, <span pulumi-lang-nodejs="`never`" pulumi-lang-dotnet="`Never`" pulumi-lang-go="`never`" pulumi-lang-python="`never`" pulumi-lang-yaml="`never`" pulumi-lang-java="`never`">`never`</span>, and `no-override`.
  late final Output<String> signingBehavior;

  /// Determines how CloudFront signs (authenticates) requests. The only valid value is <span pulumi-lang-nodejs="`sigv4`" pulumi-lang-dotnet="`Sigv4`" pulumi-lang-go="`sigv4`" pulumi-lang-python="`sigv4`" pulumi-lang-yaml="`sigv4`" pulumi-lang-java="`sigv4`">`sigv4`</span>.
  late final Output<String> signingProtocol;

  OriginAccessControl(
    String name, {
    OriginAccessControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessControl:OriginAccessControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.originAccessControlOriginType = Output.createUnknown<String>();
    this.signingBehavior = Output.createUnknown<String>();
    this.signingProtocol = Output.createUnknown<String>();
  }
}
