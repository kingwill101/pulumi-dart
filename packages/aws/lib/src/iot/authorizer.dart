import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorizer_args.dart';

/// Creates and manages an AWS IoT Authorizer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.iot.Authorizer("example", {
///     name: "example",
///     authorizerFunctionArn: exampleAwsLambdaFunction.arn,
///     signingDisabled: false,
///     status: "ACTIVE",
///     tokenKeyName: "Token-Header",
///     tokenSigningPublicKeys: {
///         Key1: std.file({
///             input: "test-fixtures/iot-authorizer-signing-key.pem",
///         }).then(invoke => invoke.result),
///     },
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.iot.Authorizer("example",
///     name="example",
///     authorizer_function_arn=example_aws_lambda_function["arn"],
///     signing_disabled=False,
///     status="ACTIVE",
///     token_key_name="Token-Header",
///     token_signing_public_keys={
///         "Key1": std.file(input="test-fixtures/iot-authorizer-signing-key.pem").result,
///     },
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iot.Authorizer("example", new()
///     {
///         Name = "example",
///         AuthorizerFunctionArn = exampleAwsLambdaFunction.Arn,
///         SigningDisabled = false,
///         Status = "ACTIVE",
///         TokenKeyName = "Token-Header",
///         TokenSigningPublicKeys =
///         {
///             { "Key1", Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/iot-authorizer-signing-key.pem",
///             }).Apply(invoke => invoke.Result) },
///         },
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/iot-authorizer-signing-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewAuthorizer(ctx, "example", &iot.AuthorizerArgs{
/// 			Name:                  pulumi.String("example"),
/// 			AuthorizerFunctionArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			SigningDisabled:       pulumi.Bool(false),
/// 			Status:                pulumi.String("ACTIVE"),
/// 			TokenKeyName:          pulumi.String("Token-Header"),
/// 			TokenSigningPublicKeys: pulumi.StringMap{
/// 				"Key1": pulumi.String(invokeFile.Result),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
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
/// import com.pulumi.aws.iot.Authorizer;
/// import com.pulumi.aws.iot.AuthorizerArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new Authorizer("example", AuthorizerArgs.builder()
///             .name("example")
///             .authorizerFunctionArn(exampleAwsLambdaFunction.arn())
///             .signingDisabled(false)
///             .status("ACTIVE")
///             .tokenKeyName("Token-Header")
///             .tokenSigningPublicKeys(Map.of("Key1", StdFunctions.file(FileArgs.builder()
///                 .input("test-fixtures/iot-authorizer-signing-key.pem")
///                 .build()).result()))
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:Authorizer
///     properties:
///       name: example
///       authorizerFunctionArn: ${exampleAwsLambdaFunction.arn}
///       signingDisabled: false
///       status: ACTIVE
///       tokenKeyName: Token-Header
///       tokenSigningPublicKeys:
///         Key1:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/iot-authorizer-signing-key.pem
///             return: result
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Authorizers using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/authorizer:Authorizer example example
/// ```
class Authorizer extends pulumi.CustomResource {
  /// The ARN of the authorizer.
  late final pulumi.Output<String> arn;
  /// The ARN of the authorizer's Lambda function.
  late final pulumi.Output<String> authorizerFunctionArn;
  /// Specifies whether the HTTP caching is enabled or not. Default: `false`.
  late final pulumi.Output<bool?> enableCachingForHttp;
  /// The name of the authorizer.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies whether AWS IoT validates the token signature in an authorization request. Default: `false`.
  late final pulumi.Output<bool?> signingDisabled;
  /// The status of Authorizer request at creation. Valid values: `ACTIVE`, `INACTIVE`. Default: `ACTIVE`.
  late final pulumi.Output<String?> status;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The name of the token key used to extract the token from the HTTP headers. This value is required if signing is enabled in your authorizer.
  late final pulumi.Output<String?> tokenKeyName;
  /// The public keys used to verify the digital signature returned by your custom authentication service. This value is required if signing is enabled in your authorizer.
  late final pulumi.Output<Map<String, String>?> tokenSigningPublicKeys;

  /// Creates a new [Authorizer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Authorizer]. {@macro pulumi_iot_authorizer_authorizer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Authorizer(
    String name, {
    AuthorizerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/authorizer:Authorizer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authorizerFunctionArn = registerOutput<String>('authorizerFunctionArn');
    this.enableCachingForHttp = registerOutput<bool?>('enableCachingForHttp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.signingDisabled = registerOutput<bool?>('signingDisabled');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tokenKeyName = registerOutput<String?>('tokenKeyName');
    this.tokenSigningPublicKeys = registerOutput<Map<String, String>?>('tokenSigningPublicKeys');
  }
}
