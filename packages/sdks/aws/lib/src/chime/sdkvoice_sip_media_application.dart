import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_sip_media_application_args.dart';
import 'sdkvoice_sip_media_application_endpoints.dart';
import 'sdkvoice_sip_media_application_state.dart';

/// A ChimeSDKVoice SIP Media Application is a managed object that passes values from a SIP rule to a target AWS Lambda function.
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
/// const example = new aws.chime.SdkvoiceSipMediaApplication("example", {
///     endpoints: {
///         lambdaArn: test.arn,
///     },
///     awsRegion: "us-east-1",
///     name: "example-sip-media-application",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.chime.SdkvoiceSipMediaApplication("example",
///     endpoints={
///         "lambda_arn": test["arn"],
///     },
///     aws_region="us-east-1",
///     name="example-sip-media-application")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Chime.SdkvoiceSipMediaApplication("example", new()
///     {
///         Endpoints = new Aws.Chime.Inputs.SdkvoiceSipMediaApplicationEndpointsArgs
///         {
///             LambdaArn = test.Arn,
///         },
///         AwsRegion = "us-east-1",
///         Name = "example-sip-media-application",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chime.NewSdkvoiceSipMediaApplication(ctx, "example", &chime.SdkvoiceSipMediaApplicationArgs{
/// 			Endpoints: &chime.SdkvoiceSipMediaApplicationEndpointsArgs{
/// 				LambdaArn: pulumi.Any(test.Arn),
/// 			},
/// 			AwsRegion: pulumi.String("us-east-1"),
/// 			Name:      pulumi.String("example-sip-media-application"),
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
/// resource "aws_chime_sdkvoicesipmediaapplication" "example" {
///   endpoints = {
///     lambda_arn = test.arn
///   }
///   aws_region = "us-east-1"
///   name       = "example-sip-media-application"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chime.SdkvoiceSipMediaApplication;
/// import com.pulumi.aws.chime.SdkvoiceSipMediaApplicationArgs;
/// import com.pulumi.aws.chime.inputs.SdkvoiceSipMediaApplicationEndpointsArgs;
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
///         var example = new SdkvoiceSipMediaApplication("example", SdkvoiceSipMediaApplicationArgs.builder()
///             .endpoints(SdkvoiceSipMediaApplicationEndpointsArgs.builder()
///                 .lambdaArn(test.arn())
///                 .build())
///             .awsRegion("us-east-1")
///             .name("example-sip-media-application")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:chime:SdkvoiceSipMediaApplication
///     properties:
///       endpoints:
///         lambdaArn: ${test.arn}
///       awsRegion: us-east-1
///       name: example-sip-media-application
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a ChimeSDKVoice SIP Media Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication example abcdef123456
/// ```
class SdkvoiceSipMediaApplication extends pulumi.CustomResource {
  /// ARN of the AWS Chime SDK Voice Sip Media Application
  late final pulumi.Output<String> arn;
  /// The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  late final pulumi.Output<String> awsRegion;
  /// List of endpoints (Lambda ARNs) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  late final pulumi.Output<SdkvoiceSipMediaApplicationEndpoints> endpoints;
  /// The name of the AWS Chime SDK Voice Sip Media Application.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [SdkvoiceSipMediaApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SdkvoiceSipMediaApplication]. {@macro pulumi_chime_sdkvoice_sip_media_application_sdkvoice_sip_media_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SdkvoiceSipMediaApplication(
    String name, {
    SdkvoiceSipMediaApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    awsRegion = registerOutput<String>('awsRegion');
    endpoints = registerOutput<SdkvoiceSipMediaApplicationEndpoints>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SdkvoiceSipMediaApplicationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [SdkvoiceSipMediaApplication] resource's state with the given [name] and [id].
  static SdkvoiceSipMediaApplication get(
    String name,
    pulumi.Input<String> id, {
    SdkvoiceSipMediaApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SdkvoiceSipMediaApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SdkvoiceSipMediaApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsRegion = registerOutput<String>('awsRegion');
    endpoints = registerOutput<SdkvoiceSipMediaApplicationEndpoints>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SdkvoiceSipMediaApplicationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [SdkvoiceSipMediaApplication] resource.
  SdkvoiceSipMediaApplication.reference(String urn)
    : super(
        'aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    awsRegion = registerOutput<String>('awsRegion');
    endpoints = registerOutput<SdkvoiceSipMediaApplicationEndpoints>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SdkvoiceSipMediaApplicationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
