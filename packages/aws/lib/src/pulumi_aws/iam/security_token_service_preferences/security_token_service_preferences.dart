import 'package:pulumi/pulumi.dart';
import 'security_token_service_preferences_args.dart';

/// Provides an IAM Security Token Service Preferences resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Iam.SecurityTokenServicePreferences("example", new()
/// {
/// GlobalEndpointTokenVersion = "v2Token",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewSecurityTokenServicePreferences(ctx, "example", &iam.SecurityTokenServicePreferencesArgs{
/// GlobalEndpointTokenVersion: pulumi.String("v2Token"),
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
/// import com.pulumi.aws.iam.SecurityTokenServicePreferences;
/// import com.pulumi.aws.iam.SecurityTokenServicePreferencesArgs;
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
/// var example = new SecurityTokenServicePreferences("example", SecurityTokenServicePreferencesArgs.builder()
/// .globalEndpointTokenVersion("v2Token")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:SecurityTokenServicePreferences
/// properties:
/// globalEndpointTokenVersion: v2Token
/// ```
/// <!--End PulumiCodeChooser -->
class SecurityTokenServicePreferences extends CustomResource {
  /// The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  late final Output<String> globalEndpointTokenVersion;

  SecurityTokenServicePreferences(
    String name, {
    SecurityTokenServicePreferencesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/securityTokenServicePreferences:SecurityTokenServicePreferences',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.globalEndpointTokenVersion =
        registerOutput<String>('globalEndpointTokenVersion');
  }
}
