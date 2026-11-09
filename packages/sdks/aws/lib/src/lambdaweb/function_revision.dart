import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_args.dart';
import 'function_revision_build_config.dart';
import 'function_revision_service_config.dart';
import 'function_revision_state.dart';
import 'function_revision_timeouts.dart';

/// Manages an AWS Lambda Web function revision. A revision represents a specific version of the function code and configuration and is immutable (updating any attribute recreates the resource).
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
/// const exampleFunction = new aws.lambdaweb.Function("example", {functionName: "example-function"});
/// const example = new aws.lambdaweb.FunctionRevision("example", {
///     buildConfig: {
///         runtimeConfig: {
///             runtime: "nodejs24.x",
///         },
///         codeConfig: {
///             s3Object: {
///                 bucket: exampleAwsS3Object.bucket,
///                 key: exampleAwsS3Object.key,
///             },
///         },
///     },
///     serviceConfig: {
///         executionRoleArn: exampleAwsIamRole.arn,
///     },
///     functionName: exampleFunction.functionName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_function = aws.lambdaweb.Function("example", function_name="example-function")
/// example = aws.lambdaweb.FunctionRevision("example",
///     build_config={
///         "runtime_config": {
///             "runtime": "nodejs24.x",
///         },
///         "code_config": {
///             "s3_object": {
///                 "bucket": example_aws_s3_object["bucket"],
///                 "key": example_aws_s3_object["key"],
///             },
///         },
///     },
///     service_config={
///         "execution_role_arn": example_aws_iam_role["arn"],
///     },
///     function_name=example_function.function_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleFunction = new Aws.LambdaWeb.Function("example", new()
///     {
///         FunctionName = "example-function",
///     });
///
///     var example = new Aws.LambdaWeb.FunctionRevision("example", new()
///     {
///         BuildConfig = new Aws.LambdaWeb.Inputs.FunctionRevisionBuildConfigArgs
///         {
///             RuntimeConfig = new Aws.LambdaWeb.Inputs.FunctionRevisionBuildConfigRuntimeConfigArgs
///             {
///                 Runtime = "nodejs24.x",
///             },
///             CodeConfig = new Aws.LambdaWeb.Inputs.FunctionRevisionBuildConfigCodeConfigArgs
///             {
///                 S3Object = new Aws.LambdaWeb.Inputs.FunctionRevisionBuildConfigCodeConfigS3ObjectArgs
///                 {
///                     Bucket = exampleAwsS3Object.Bucket,
///                     Key = exampleAwsS3Object.Key,
///                 },
///             },
///         },
///         ServiceConfig = new Aws.LambdaWeb.Inputs.FunctionRevisionServiceConfigArgs
///         {
///             ExecutionRoleArn = exampleAwsIamRole.Arn,
///         },
///         FunctionName = exampleFunction.FunctionName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdaweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleFunction, err := lambdaweb.NewFunction(ctx, "example", &lambdaweb.FunctionArgs{
/// 			FunctionName: pulumi.String("example-function"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambdaweb.NewFunctionRevision(ctx, "example", &lambdaweb.FunctionRevisionArgs{
/// 			BuildConfig: &lambdaweb.FunctionRevisionBuildConfigArgs{
/// 				RuntimeConfig: &lambdaweb.FunctionRevisionBuildConfigRuntimeConfigArgs{
/// 					Runtime: pulumi.String("nodejs24.x"),
/// 				},
/// 				CodeConfig: &lambdaweb.FunctionRevisionBuildConfigCodeConfigArgs{
/// 					S3Object: &lambdaweb.FunctionRevisionBuildConfigCodeConfigS3ObjectArgs{
/// 						Bucket: pulumi.Any(exampleAwsS3Object.Bucket),
/// 						Key:    pulumi.Any(exampleAwsS3Object.Key),
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &lambdaweb.FunctionRevisionServiceConfigArgs{
/// 				ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			FunctionName: exampleFunction.FunctionName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lambdaweb_function_revision" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   build_config {
///     runtime_config {
///       runtime = "nodejs24.x"
///     }
///     code_config {
///       s3_object {
///         bucket = exampleAwsS3Object.bucket
///         key    = exampleAwsS3Object.key
///       }
///     }
///   }
///   service_config {
///     execution_role_arn = exampleAwsIamRole.arn
///   }
///   function_name = aws_lambdaweb_function.example.function_name
/// }
/// resource "aws_lambdaweb_function" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   function_name = "example-function"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdaweb.Function;
/// import com.pulumi.aws.lambdaweb.FunctionArgs;
/// import com.pulumi.aws.lambdaweb.FunctionRevision;
/// import com.pulumi.aws.lambdaweb.FunctionRevisionArgs;
/// import com.pulumi.aws.lambdaweb.inputs.FunctionRevisionBuildConfigArgs;
/// import com.pulumi.aws.lambdaweb.inputs.FunctionRevisionBuildConfigRuntimeConfigArgs;
/// import com.pulumi.aws.lambdaweb.inputs.FunctionRevisionBuildConfigCodeConfigArgs;
/// import com.pulumi.aws.lambdaweb.inputs.FunctionRevisionBuildConfigCodeConfigS3ObjectArgs;
/// import com.pulumi.aws.lambdaweb.inputs.FunctionRevisionServiceConfigArgs;
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
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .functionName("example-function")
///             .build());
///
///         var example = new FunctionRevision("example", FunctionRevisionArgs.builder()
///             .buildConfig(FunctionRevisionBuildConfigArgs.builder()
///                 .runtimeConfig(FunctionRevisionBuildConfigRuntimeConfigArgs.builder()
///                     .runtime("nodejs24.x")
///                     .build())
///                 .codeConfig(FunctionRevisionBuildConfigCodeConfigArgs.builder()
///                     .s3Object(FunctionRevisionBuildConfigCodeConfigS3ObjectArgs.builder()
///                         .bucket(exampleAwsS3Object.get("bucket"))
///                         .key(exampleAwsS3Object.get("key"))
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionRevisionServiceConfigArgs.builder()
///                 .executionRoleArn(exampleAwsIamRole.get("arn"))
///                 .build())
///             .functionName(exampleFunction.functionName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambdaweb:FunctionRevision
///     properties:
///       buildConfig:
///         runtimeConfig:
///           runtime: nodejs24.x
///         codeConfig:
///           s3Object:
///             bucket: ${exampleAwsS3Object.bucket}
///             key: ${exampleAwsS3Object.key}
///       serviceConfig:
///         executionRoleArn: ${exampleAwsIamRole.arn}
///       functionName: ${exampleFunction.functionName}
///   exampleFunction:
///     type: aws:lambdaweb:Function
///     name: example
///     properties:
///       functionName: example-function
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `functionName` (String) Web function name.
/// * `revisionId` (String) ID of the revision.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a revision using `functionName` and `revisionId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:lambdaweb/functionRevision:FunctionRevision example example-function,rev-sglsh
/// ```
class FunctionRevision extends pulumi.CustomResource {
  /// ARN of the revision.
  late final pulumi.Output<String> arn;
  /// Build configuration for the revision. See `buildConfig` Block below.
  late final pulumi.Output<FunctionRevisionBuildConfig> buildConfig;
  /// Description of the revision.
  late final pulumi.Output<String?> description;
  /// Web function name.
  late final pulumi.Output<String> functionName;
  /// ARN of the KMS key used to encrypt the revision's code and environment variables.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the revision.
  late final pulumi.Output<String> revisionId;
  /// Service configuration for the revision. See `serviceConfig` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<FunctionRevisionServiceConfig> serviceConfig;
  late final pulumi.Output<FunctionRevisionTimeouts?> timeouts;

  /// Creates a new [FunctionRevision].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionRevision]. {@macro pulumi_lambdaweb_function_revision_function_revision_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionRevision(
    String name, {
    FunctionRevisionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdaweb/functionRevision:FunctionRevision',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    buildConfig = registerOutput<FunctionRevisionBuildConfig>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    functionName = registerOutput<String>('functionName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    serviceConfig = registerOutput<FunctionRevisionServiceConfig>('serviceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<FunctionRevisionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FunctionRevision] resource's state with the given [name] and [id].
  static FunctionRevision get(
    String name,
    pulumi.Input<String> id, {
    FunctionRevisionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FunctionRevision._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FunctionRevision._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdaweb/functionRevision:FunctionRevision',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    buildConfig = registerOutput<FunctionRevisionBuildConfig>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    functionName = registerOutput<String>('functionName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    serviceConfig = registerOutput<FunctionRevisionServiceConfig>('serviceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<FunctionRevisionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FunctionRevision] resource.
  FunctionRevision.reference(String urn)
    : super(
        'aws:lambdaweb/functionRevision:FunctionRevision',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    buildConfig = registerOutput<FunctionRevisionBuildConfig>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    functionName = registerOutput<String>('functionName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    serviceConfig = registerOutput<FunctionRevisionServiceConfig>('serviceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<FunctionRevisionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRevisionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
