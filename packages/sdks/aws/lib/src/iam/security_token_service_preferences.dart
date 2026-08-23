import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_token_service_preferences_args.dart';
import 'security_token_service_preferences_state.dart';

/// Provides an IAM Security Token Service Preferences resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.SecurityTokenServicePreferences("example", {globalEndpointTokenVersion: "v2Token"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.SecurityTokenServicePreferences("example", global_endpoint_token_version="v2Token")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.SecurityTokenServicePreferences("example", new()
///     {
///         GlobalEndpointTokenVersion = "v2Token",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewSecurityTokenServicePreferences(ctx, "example", &iam.SecurityTokenServicePreferencesArgs{
/// 			GlobalEndpointTokenVersion: pulumi.String("v2Token"),
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
/// resource "aws_iam_securitytokenservicepreferences" "example" {
///   global_endpoint_token_version = "v2Token"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.SecurityTokenServicePreferences;
/// import com.pulumi.aws.iam.SecurityTokenServicePreferencesArgs;
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
///         var example = new SecurityTokenServicePreferences("example", SecurityTokenServicePreferencesArgs.builder()
///             .globalEndpointTokenVersion("v2Token")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:SecurityTokenServicePreferences
///     properties:
///       globalEndpointTokenVersion: v2Token
/// ```
class SecurityTokenServicePreferences extends pulumi.CustomResource {
  /// The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  late final pulumi.Output<String> globalEndpointTokenVersion;

  /// Creates a new [SecurityTokenServicePreferences].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityTokenServicePreferences]. {@macro pulumi_iam_security_token_service_preferences_security_token_service_preferences_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityTokenServicePreferences(
    String name, {
    SecurityTokenServicePreferencesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/securityTokenServicePreferences:SecurityTokenServicePreferences',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    globalEndpointTokenVersion = registerOutput<String>('globalEndpointTokenVersion');
  }

  /// Gets an existing [SecurityTokenServicePreferences] resource's state with the given [name] and [id].
  static SecurityTokenServicePreferences get(
    String name,
    pulumi.Input<String> id, {
    SecurityTokenServicePreferencesState? state,
  }) {
    return SecurityTokenServicePreferences._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityTokenServicePreferences._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/securityTokenServicePreferences:SecurityTokenServicePreferences',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    globalEndpointTokenVersion = registerOutput<String>('globalEndpointTokenVersion');
  }
}
