import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_origin_args.dart';
import 'vpc_origin_state.dart';
import 'vpc_origin_timeouts.dart';
import 'vpc_origin_vpc_origin_endpoint_config.dart';

/// Creates an Amazon CloudFront VPC origin.
///
/// For information about CloudFront VPC origins, see
/// [Amazon CloudFront Developer Guide - Restrict access with VPC origins](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-vpc-origins.html).
///
/// ## Example Usage
///
/// ### Application Load Balancer
///
/// The following example below creates a CloudFront VPC origin for a Application Load Balancer.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const alb = new aws.cloudfront.VpcOrigin("alb", {vpcOriginEndpointConfig: {
///     originSslProtocols: {
///         items: ["TLSv1.2"],
///         quantity: 1,
///     },
///     name: "example-vpc-origin",
///     arn: _this.arn,
///     httpPort: 8080,
///     httpsPort: 8443,
///     originProtocolPolicy: "https-only",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// alb = aws.cloudfront.VpcOrigin("alb", vpc_origin_endpoint_config={
///     "origin_ssl_protocols": {
///         "items": ["TLSv1.2"],
///         "quantity": 1,
///     },
///     "name": "example-vpc-origin",
///     "arn": this["arn"],
///     "http_port": 8080,
///     "https_port": 8443,
///     "origin_protocol_policy": "https-only",
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
///     var alb = new Aws.CloudFront.VpcOrigin("alb", new()
///     {
///         VpcOriginEndpointConfig = new Aws.CloudFront.Inputs.VpcOriginVpcOriginEndpointConfigArgs
///         {
///             OriginSslProtocols = new Aws.CloudFront.Inputs.VpcOriginVpcOriginEndpointConfigOriginSslProtocolsArgs
///             {
///                 Items = new[]
///                 {
///                     "TLSv1.2",
///                 },
///                 Quantity = 1,
///             },
///             Name = "example-vpc-origin",
///             Arn = @this.Arn,
///             HttpPort = 8080,
///             HttpsPort = 8443,
///             OriginProtocolPolicy = "https-only",
///         },
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
/// 		_, err := cloudfront.NewVpcOrigin(ctx, "alb", &cloudfront.VpcOriginArgs{
/// 			VpcOriginEndpointConfig: &cloudfront.VpcOriginVpcOriginEndpointConfigArgs{
/// 				OriginSslProtocols: &cloudfront.VpcOriginVpcOriginEndpointConfigOriginSslProtocolsArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("TLSv1.2"),
/// 					},
/// 					Quantity: pulumi.Int(1),
/// 				},
/// 				Name:                 pulumi.String("example-vpc-origin"),
/// 				Arn:                  pulumi.Any(this.Arn),
/// 				HttpPort:             pulumi.Int(8080),
/// 				HttpsPort:            pulumi.Int(8443),
/// 				OriginProtocolPolicy: pulumi.String("https-only"),
/// 			},
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
/// resource "aws_cloudfront_vpcorigin" "alb" {
///   vpc_origin_endpoint_config = {
///     origin_ssl_protocols = {
///       items    = ["TLSv1.2"]
///       quantity = 1
///     }
///     name                   = "example-vpc-origin"
///     arn                    = this.arn
///     http_port              = 8080
///     https_port             = 8443
///     origin_protocol_policy = "https-only"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.VpcOrigin;
/// import com.pulumi.aws.cloudfront.VpcOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.VpcOriginVpcOriginEndpointConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.VpcOriginVpcOriginEndpointConfigOriginSslProtocolsArgs;
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
///         var alb = new VpcOrigin("alb", VpcOriginArgs.builder()
///             .vpcOriginEndpointConfig(VpcOriginVpcOriginEndpointConfigArgs.builder()
///                 .originSslProtocols(VpcOriginVpcOriginEndpointConfigOriginSslProtocolsArgs.builder()
///                     .items("TLSv1.2")
///                     .quantity(1)
///                     .build())
///                 .name("example-vpc-origin")
///                 .arn(this_.arn())
///                 .httpPort(8080)
///                 .httpsPort(8443)
///                 .originProtocolPolicy("https-only")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   alb:
///     type: aws:cloudfront:VpcOrigin
///     properties:
///       vpcOriginEndpointConfig:
///         originSslProtocols:
///           items:
///             - TLSv1.2
///           quantity: 1
///         name: example-vpc-origin
///         arn: ${this.arn}
///         httpPort: 8080
///         httpsPort: 8443
///         originProtocolPolicy: https-only
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront VPC origins using the `id`. For example:
///
/// ```sh
/// % pulumi import aws_cloudfront_vpc_origin vo_JQEa410sssUFoY6wMkx69j
/// ```
class VpcOrigin extends pulumi.CustomResource {
  /// The VPC origin ARN.
  late final pulumi.Output<String> arn;
  /// The current version of the origin.
  late final pulumi.Output<String> etag;
  /// Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<VpcOriginTimeouts?> timeouts;
  /// The VPC origin endpoint configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<VpcOriginVpcOriginEndpointConfig> vpcOriginEndpointConfig;

  /// Creates a new [VpcOrigin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcOrigin]. {@macro pulumi_cloudfront_vpc_origin_vpc_origin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcOrigin(
    String name, {
    VpcOriginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/vpcOrigin:VpcOrigin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<VpcOriginTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcOriginTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcOriginEndpointConfig = registerOutput<VpcOriginVpcOriginEndpointConfig>('vpcOriginEndpointConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcOriginVpcOriginEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [VpcOrigin] resource's state with the given [name] and [id].
  static VpcOrigin get(
    String name,
    pulumi.Input<String> id, {
    VpcOriginState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcOrigin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcOrigin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/vpcOrigin:VpcOrigin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<VpcOriginTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcOriginTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcOriginEndpointConfig = registerOutput<VpcOriginVpcOriginEndpointConfig>('vpcOriginEndpointConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcOriginVpcOriginEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [VpcOrigin] resource.
  VpcOrigin.reference(String urn)
    : super(
        'aws:cloudfront/vpcOrigin:VpcOrigin',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<VpcOriginTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcOriginTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcOriginEndpointConfig = registerOutput<VpcOriginVpcOriginEndpointConfig>('vpcOriginEndpointConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcOriginVpcOriginEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
