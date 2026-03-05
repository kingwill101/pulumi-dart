import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_args.dart';
import 'response_headers_policy_cors_config.dart';
import 'response_headers_policy_custom_headers_config.dart';
import 'response_headers_policy_remove_headers_config.dart';
import 'response_headers_policy_security_headers_config.dart';
import 'response_headers_policy_server_timing_headers_config.dart';
import 'response_headers_policy_state.dart';

/// Provides a CloudFront response headers policy resource.
/// A response headers policy contains information about a set of HTTP response headers and their values.
/// After you create a response headers policy, you can use its ID to attach it to one or more cache behaviors in a CloudFront distribution.
/// When it’s attached to a cache behavior, CloudFront adds the headers in the policy to every response that it sends for requests that match the cache behavior.
///
/// ## Example Usage
///
/// The example below creates a CloudFront response headers policy.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ResponseHeadersPolicy("example", {
///     name: "example-policy",
///     comment: "test comment",
///     corsConfig: {
///         accessControlAllowCredentials: true,
///         accessControlAllowHeaders: {
///             items: ["test"],
///         },
///         accessControlAllowMethods: {
///             items: ["GET"],
///         },
///         accessControlAllowOrigins: {
///             items: ["test.example.comtest"],
///         },
///         originOverride: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ResponseHeadersPolicy("example",
///     name="example-policy",
///     comment="test comment",
///     cors_config={
///         "access_control_allow_credentials": True,
///         "access_control_allow_headers": {
///             "items": ["test"],
///         },
///         "access_control_allow_methods": {
///             "items": ["GET"],
///         },
///         "access_control_allow_origins": {
///             "items": ["test.example.comtest"],
///         },
///         "origin_override": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.ResponseHeadersPolicy("example", new()
///     {
///         Name = "example-policy",
///         Comment = "test comment",
///         CorsConfig = new Aws.CloudFront.Inputs.ResponseHeadersPolicyCorsConfigArgs
///         {
///             AccessControlAllowCredentials = true,
///             AccessControlAllowHeaders = new Aws.CloudFront.Inputs.ResponseHeadersPolicyCorsConfigAccessControlAllowHeadersArgs
///             {
///                 Items = new[]
///                 {
///                     "test",
///                 },
///             },
///             AccessControlAllowMethods = new Aws.CloudFront.Inputs.ResponseHeadersPolicyCorsConfigAccessControlAllowMethodsArgs
///             {
///                 Items = new[]
///                 {
///                     "GET",
///                 },
///             },
///             AccessControlAllowOrigins = new Aws.CloudFront.Inputs.ResponseHeadersPolicyCorsConfigAccessControlAllowOriginsArgs
///             {
///                 Items = new[]
///                 {
///                     "test.example.comtest",
///                 },
///             },
///             OriginOverride = true,
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
/// 		_, err := cloudfront.NewResponseHeadersPolicy(ctx, "example", &cloudfront.ResponseHeadersPolicyArgs{
/// 			Name:    pulumi.String("example-policy"),
/// 			Comment: pulumi.String("test comment"),
/// 			CorsConfig: &cloudfront.ResponseHeadersPolicyCorsConfigArgs{
/// 				AccessControlAllowCredentials: pulumi.Bool(true),
/// 				AccessControlAllowHeaders: &cloudfront.ResponseHeadersPolicyCorsConfigAccessControlAllowHeadersArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("test"),
/// 					},
/// 				},
/// 				AccessControlAllowMethods: &cloudfront.ResponseHeadersPolicyCorsConfigAccessControlAllowMethodsArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 					},
/// 				},
/// 				AccessControlAllowOrigins: &cloudfront.ResponseHeadersPolicyCorsConfigAccessControlAllowOriginsArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("test.example.comtest"),
/// 					},
/// 				},
/// 				OriginOverride: pulumi.Bool(true),
/// 			},
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
/// import com.pulumi.aws.cloudfront.ResponseHeadersPolicy;
/// import com.pulumi.aws.cloudfront.ResponseHeadersPolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyCorsConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyCorsConfigAccessControlAllowHeadersArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyCorsConfigAccessControlAllowMethodsArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyCorsConfigAccessControlAllowOriginsArgs;
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
///         var example = new ResponseHeadersPolicy("example", ResponseHeadersPolicyArgs.builder()
///             .name("example-policy")
///             .comment("test comment")
///             .corsConfig(ResponseHeadersPolicyCorsConfigArgs.builder()
///                 .accessControlAllowCredentials(true)
///                 .accessControlAllowHeaders(ResponseHeadersPolicyCorsConfigAccessControlAllowHeadersArgs.builder()
///                     .items("test")
///                     .build())
///                 .accessControlAllowMethods(ResponseHeadersPolicyCorsConfigAccessControlAllowMethodsArgs.builder()
///                     .items("GET")
///                     .build())
///                 .accessControlAllowOrigins(ResponseHeadersPolicyCorsConfigAccessControlAllowOriginsArgs.builder()
///                     .items("test.example.comtest")
///                     .build())
///                 .originOverride(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ResponseHeadersPolicy
///     properties:
///       name: example-policy
///       comment: test comment
///       corsConfig:
///         accessControlAllowCredentials: true
///         accessControlAllowHeaders:
///           items:
///             - test
///         accessControlAllowMethods:
///           items:
///             - GET
///         accessControlAllowOrigins:
///           items:
///             - test.example.comtest
///         originOverride: true
/// ```
///
///
/// The example below creates a CloudFront response headers policy with a custom headers config.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ResponseHeadersPolicy("example", {
///     name: "example-headers-policy",
///     customHeadersConfig: {
///         items: [
///             {
///                 header: "X-Permitted-Cross-Domain-Policies",
///                 override: true,
///                 value: "none",
///             },
///             {
///                 header: "X-Test",
///                 override: true,
///                 value: "none",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ResponseHeadersPolicy("example",
///     name="example-headers-policy",
///     custom_headers_config={
///         "items": [
///             {
///                 "header": "X-Permitted-Cross-Domain-Policies",
///                 "override": True,
///                 "value": "none",
///             },
///             {
///                 "header": "X-Test",
///                 "override": True,
///                 "value": "none",
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.ResponseHeadersPolicy("example", new()
///     {
///         Name = "example-headers-policy",
///         CustomHeadersConfig = new Aws.CloudFront.Inputs.ResponseHeadersPolicyCustomHeadersConfigArgs
///         {
///             Items = new[]
///             {
///                 new Aws.CloudFront.Inputs.ResponseHeadersPolicyCustomHeadersConfigItemArgs
///                 {
///                     Header = "X-Permitted-Cross-Domain-Policies",
///                     Override = true,
///                     Value = "none",
///                 },
///                 new Aws.CloudFront.Inputs.ResponseHeadersPolicyCustomHeadersConfigItemArgs
///                 {
///                     Header = "X-Test",
///                     Override = true,
///                     Value = "none",
///                 },
///             },
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
/// 		_, err := cloudfront.NewResponseHeadersPolicy(ctx, "example", &cloudfront.ResponseHeadersPolicyArgs{
/// 			Name: pulumi.String("example-headers-policy"),
/// 			CustomHeadersConfig: &cloudfront.ResponseHeadersPolicyCustomHeadersConfigArgs{
/// 				Items: cloudfront.ResponseHeadersPolicyCustomHeadersConfigItemArray{
/// 					&cloudfront.ResponseHeadersPolicyCustomHeadersConfigItemArgs{
/// 						Header:   pulumi.String("X-Permitted-Cross-Domain-Policies"),
/// 						Override: pulumi.Bool(true),
/// 						Value:    pulumi.String("none"),
/// 					},
/// 					&cloudfront.ResponseHeadersPolicyCustomHeadersConfigItemArgs{
/// 						Header:   pulumi.String("X-Test"),
/// 						Override: pulumi.Bool(true),
/// 						Value:    pulumi.String("none"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.cloudfront.ResponseHeadersPolicy;
/// import com.pulumi.aws.cloudfront.ResponseHeadersPolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyCustomHeadersConfigArgs;
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
///         var example = new ResponseHeadersPolicy("example", ResponseHeadersPolicyArgs.builder()
///             .name("example-headers-policy")
///             .customHeadersConfig(ResponseHeadersPolicyCustomHeadersConfigArgs.builder()
///                 .items(
///                     ResponseHeadersPolicyCustomHeadersConfigItemArgs.builder()
///                         .header("X-Permitted-Cross-Domain-Policies")
///                         .override(true)
///                         .value("none")
///                         .build(),
///                     ResponseHeadersPolicyCustomHeadersConfigItemArgs.builder()
///                         .header("X-Test")
///                         .override(true)
///                         .value("none")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ResponseHeadersPolicy
///     properties:
///       name: example-headers-policy
///       customHeadersConfig:
///         items:
///           - header: X-Permitted-Cross-Domain-Policies
///             override: true
///             value: none
///           - header: X-Test
///             override: true
///             value: none
/// ```
///
///
/// The example below creates a CloudFront response headers policy with a custom headers config, remove headers config and server timing headers config.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ResponseHeadersPolicy("example", {
///     name: "example-headers-policy",
///     customHeadersConfig: {
///         items: [{
///             header: "X-Permitted-Cross-Domain-Policies",
///             override: true,
///             value: "none",
///         }],
///     },
///     removeHeadersConfig: {
///         items: [{
///             header: "Set-Cookie",
///         }],
///     },
///     serverTimingHeadersConfig: {
///         enabled: true,
///         samplingRate: 50,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ResponseHeadersPolicy("example",
///     name="example-headers-policy",
///     custom_headers_config={
///         "items": [{
///             "header": "X-Permitted-Cross-Domain-Policies",
///             "override": True,
///             "value": "none",
///         }],
///     },
///     remove_headers_config={
///         "items": [{
///             "header": "Set-Cookie",
///         }],
///     },
///     server_timing_headers_config={
///         "enabled": True,
///         "sampling_rate": 50,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.ResponseHeadersPolicy("example", new()
///     {
///         Name = "example-headers-policy",
///         CustomHeadersConfig = new Aws.CloudFront.Inputs.ResponseHeadersPolicyCustomHeadersConfigArgs
///         {
///             Items = new[]
///             {
///                 new Aws.CloudFront.Inputs.ResponseHeadersPolicyCustomHeadersConfigItemArgs
///                 {
///                     Header = "X-Permitted-Cross-Domain-Policies",
///                     Override = true,
///                     Value = "none",
///                 },
///             },
///         },
///         RemoveHeadersConfig = new Aws.CloudFront.Inputs.ResponseHeadersPolicyRemoveHeadersConfigArgs
///         {
///             Items = new[]
///             {
///                 new Aws.CloudFront.Inputs.ResponseHeadersPolicyRemoveHeadersConfigItemArgs
///                 {
///                     Header = "Set-Cookie",
///                 },
///             },
///         },
///         ServerTimingHeadersConfig = new Aws.CloudFront.Inputs.ResponseHeadersPolicyServerTimingHeadersConfigArgs
///         {
///             Enabled = true,
///             SamplingRate = 50,
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
/// 		_, err := cloudfront.NewResponseHeadersPolicy(ctx, "example", &cloudfront.ResponseHeadersPolicyArgs{
/// 			Name: pulumi.String("example-headers-policy"),
/// 			CustomHeadersConfig: &cloudfront.ResponseHeadersPolicyCustomHeadersConfigArgs{
/// 				Items: cloudfront.ResponseHeadersPolicyCustomHeadersConfigItemArray{
/// 					&cloudfront.ResponseHeadersPolicyCustomHeadersConfigItemArgs{
/// 						Header:   pulumi.String("X-Permitted-Cross-Domain-Policies"),
/// 						Override: pulumi.Bool(true),
/// 						Value:    pulumi.String("none"),
/// 					},
/// 				},
/// 			},
/// 			RemoveHeadersConfig: &cloudfront.ResponseHeadersPolicyRemoveHeadersConfigArgs{
/// 				Items: cloudfront.ResponseHeadersPolicyRemoveHeadersConfigItemArray{
/// 					&cloudfront.ResponseHeadersPolicyRemoveHeadersConfigItemArgs{
/// 						Header: pulumi.String("Set-Cookie"),
/// 					},
/// 				},
/// 			},
/// 			ServerTimingHeadersConfig: &cloudfront.ResponseHeadersPolicyServerTimingHeadersConfigArgs{
/// 				Enabled:      pulumi.Bool(true),
/// 				SamplingRate: pulumi.Float64(50),
/// 			},
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
/// import com.pulumi.aws.cloudfront.ResponseHeadersPolicy;
/// import com.pulumi.aws.cloudfront.ResponseHeadersPolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyCustomHeadersConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyRemoveHeadersConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ResponseHeadersPolicyServerTimingHeadersConfigArgs;
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
///         var example = new ResponseHeadersPolicy("example", ResponseHeadersPolicyArgs.builder()
///             .name("example-headers-policy")
///             .customHeadersConfig(ResponseHeadersPolicyCustomHeadersConfigArgs.builder()
///                 .items(ResponseHeadersPolicyCustomHeadersConfigItemArgs.builder()
///                     .header("X-Permitted-Cross-Domain-Policies")
///                     .override(true)
///                     .value("none")
///                     .build())
///                 .build())
///             .removeHeadersConfig(ResponseHeadersPolicyRemoveHeadersConfigArgs.builder()
///                 .items(ResponseHeadersPolicyRemoveHeadersConfigItemArgs.builder()
///                     .header("Set-Cookie")
///                     .build())
///                 .build())
///             .serverTimingHeadersConfig(ResponseHeadersPolicyServerTimingHeadersConfigArgs.builder()
///                 .enabled(true)
///                 .samplingRate(50.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ResponseHeadersPolicy
///     properties:
///       name: example-headers-policy
///       customHeadersConfig:
///         items:
///           - header: X-Permitted-Cross-Domain-Policies
///             override: true
///             value: none
///       removeHeadersConfig:
///         items:
///           - header: Set-Cookie
///       serverTimingHeadersConfig:
///         enabled: true
///         samplingRate: 50
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Response Headers Policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/responseHeadersPolicy:ResponseHeadersPolicy policy 658327ea-f89d-4fab-a63d-7e88639e58f9
/// ```
class ResponseHeadersPolicy extends pulumi.CustomResource {
  /// The response headers policy ARN.
  late final pulumi.Output<String> arn;

  /// A comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  late final pulumi.Output<String?> comment;

  /// A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  late final pulumi.Output<ResponseHeadersPolicyCorsConfig?> corsConfig;

  /// Object that contains an attribute `items` that contains a list of custom headers. See Custom Header for more information.
  late final pulumi.Output<ResponseHeadersPolicyCustomHeadersConfig?>
  customHeadersConfig;

  /// The current version of the response headers policy.
  late final pulumi.Output<String> etag;

  /// A unique name to identify the response headers policy.
  late final pulumi.Output<String> name;

  /// A configuration for a set of HTTP headers to remove from the HTTP response. Object that contains an attribute `items` that contains a list of headers. See Remove Header for more information.
  late final pulumi.Output<ResponseHeadersPolicyRemoveHeadersConfig?>
  removeHeadersConfig;

  /// A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  late final pulumi.Output<ResponseHeadersPolicySecurityHeadersConfig?>
  securityHeadersConfig;

  /// A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  late final pulumi.Output<ResponseHeadersPolicyServerTimingHeadersConfig?>
  serverTimingHeadersConfig;

  /// Creates a new [ResponseHeadersPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResponseHeadersPolicy]. {@macro pulumi_cloudfront_response_headers_policy_response_headers_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResponseHeadersPolicy(
    String name, {
    ResponseHeadersPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/responseHeadersPolicy:ResponseHeadersPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    corsConfig = registerOutput<ResponseHeadersPolicyCorsConfig?>(
      'corsConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResponseHeadersPolicyCorsConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    customHeadersConfig =
        registerOutput<ResponseHeadersPolicyCustomHeadersConfig?>(
          'customHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicyCustomHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    removeHeadersConfig =
        registerOutput<ResponseHeadersPolicyRemoveHeadersConfig?>(
          'removeHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicyRemoveHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    securityHeadersConfig =
        registerOutput<ResponseHeadersPolicySecurityHeadersConfig?>(
          'securityHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicySecurityHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    serverTimingHeadersConfig =
        registerOutput<ResponseHeadersPolicyServerTimingHeadersConfig?>(
          'serverTimingHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicyServerTimingHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [ResponseHeadersPolicy] resource's state with the given [name] and [id].
  static ResponseHeadersPolicy get(
    String name,
    pulumi.Input<String> id, {
    ResponseHeadersPolicyState? state,
  }) {
    return ResponseHeadersPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResponseHeadersPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/responseHeadersPolicy:ResponseHeadersPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    corsConfig = registerOutput<ResponseHeadersPolicyCorsConfig?>(
      'corsConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResponseHeadersPolicyCorsConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    customHeadersConfig =
        registerOutput<ResponseHeadersPolicyCustomHeadersConfig?>(
          'customHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicyCustomHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    removeHeadersConfig =
        registerOutput<ResponseHeadersPolicyRemoveHeadersConfig?>(
          'removeHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicyRemoveHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    securityHeadersConfig =
        registerOutput<ResponseHeadersPolicySecurityHeadersConfig?>(
          'securityHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicySecurityHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    serverTimingHeadersConfig =
        registerOutput<ResponseHeadersPolicyServerTimingHeadersConfig?>(
          'serverTimingHeadersConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResponseHeadersPolicyServerTimingHeadersConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
