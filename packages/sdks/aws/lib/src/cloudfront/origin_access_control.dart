import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_access_control_args.dart';
import 'origin_access_control_state.dart';

/// Manages an AWS CloudFront Origin Access Control, which is used by CloudFront Distributions with an Amazon S3 bucket as the origin.
///
/// Read more about Origin Access Control in the [CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.OriginAccessControl("example", {
///     name: "example",
///     description: "Example Policy",
///     originAccessControlOriginType: "s3",
///     signingBehavior: "always",
///     signingProtocol: "sigv4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.OriginAccessControl("example",
///     name="example",
///     description="Example Policy",
///     origin_access_control_origin_type="s3",
///     signing_behavior="always",
///     signing_protocol="sigv4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.OriginAccessControl("example", new()
///     {
///         Name = "example",
///         Description = "Example Policy",
///         OriginAccessControlOriginType = "s3",
///         SigningBehavior = "always",
///         SigningProtocol = "sigv4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewOriginAccessControl(ctx, "example", &cloudfront.OriginAccessControlArgs{
/// 			Name:                          pulumi.String("example"),
/// 			Description:                   pulumi.String("Example Policy"),
/// 			OriginAccessControlOriginType: pulumi.String("s3"),
/// 			SigningBehavior:               pulumi.String("always"),
/// 			SigningProtocol:               pulumi.String("sigv4"),
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
/// resource "aws_cloudfront_originaccesscontrol" "example" {
///   name                              = "example"
///   description                       = "Example Policy"
///   origin_access_control_origin_type = "s3"
///   signing_behavior                  = "always"
///   signing_protocol                  = "sigv4"
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
///         var example = new OriginAccessControl("example", OriginAccessControlArgs.builder()
///             .name("example")
///             .description("Example Policy")
///             .originAccessControlOriginType("s3")
///             .signingBehavior("always")
///             .signingProtocol("sigv4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:OriginAccessControl
///     properties:
///       name: example
///       description: Example Policy
///       originAccessControlOriginType: s3
///       signingBehavior: always
///       signingProtocol: sigv4
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Origin Access Control using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originAccessControl:OriginAccessControl example E327GJI25M56DG
/// ```
class OriginAccessControl extends pulumi.CustomResource {
  /// The Origin Access Control ARN.
  late final pulumi.Output<String> arn;
  /// The description of the Origin Access Control. Defaults to "Managed by Pulumi" if omitted.
  late final pulumi.Output<String?> description;
  /// The current version of this Origin Access Control.
  late final pulumi.Output<String> etag;
  /// A name that identifies the Origin Access Control.
  late final pulumi.Output<String> name;
  /// The type of origin that this Origin Access Control is for. Valid values are `lambda`, `mediapackagev2`, `mediastore`, and `s3`.
  late final pulumi.Output<String> originAccessControlOriginType;
  /// Specifies which requests CloudFront signs. Specify `always` for the most common use case. Allowed values: `always`, `never`, and `no-override`.
  late final pulumi.Output<String> signingBehavior;
  /// Determines how CloudFront signs (authenticates) requests. The only valid value is `sigv4`.
  late final pulumi.Output<String> signingProtocol;

  /// Creates a new [OriginAccessControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginAccessControl]. {@macro pulumi_cloudfront_origin_access_control_origin_access_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginAccessControl(
    String name, {
    OriginAccessControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessControl:OriginAccessControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    originAccessControlOriginType = registerOutput<String>('originAccessControlOriginType');
    signingBehavior = registerOutput<String>('signingBehavior');
    signingProtocol = registerOutput<String>('signingProtocol');
  }

  /// Gets an existing [OriginAccessControl] resource's state with the given [name] and [id].
  static OriginAccessControl get(
    String name,
    pulumi.Input<String> id, {
    OriginAccessControlState? state,
  }) {
    return OriginAccessControl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OriginAccessControl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessControl:OriginAccessControl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    originAccessControlOriginType = registerOutput<String>('originAccessControlOriginType');
    signingBehavior = registerOutput<String>('signingBehavior');
    signingProtocol = registerOutput<String>('signingProtocol');
  }
}
