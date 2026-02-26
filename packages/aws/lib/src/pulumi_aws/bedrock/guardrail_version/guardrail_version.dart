import 'package:pulumi/pulumi.dart';
import '../guardrail_version_timeouts/guardrail_version_timeouts.dart';
import 'guardrail_version_args.dart';

/// Resource for managing an AWS Bedrock Guardrail Version.
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
/// const example = new aws.bedrock.GuardrailVersion("example", {
/// description: "example",
/// guardrailArn: test.guardrailArn,
/// skipDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.GuardrailVersion("example",
/// description="example",
/// guardrail_arn=test["guardrailArn"],
/// skip_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Bedrock.GuardrailVersion("example", new()
/// {
/// Description = "example",
/// GuardrailArn = test.GuardrailArn,
/// SkipDestroy = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.NewGuardrailVersion(ctx, "example", &bedrock.GuardrailVersionArgs{
/// Description:  pulumi.String("example"),
/// GuardrailArn: pulumi.Any(test.GuardrailArn),
/// SkipDestroy:  pulumi.Bool(true),
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
/// import com.pulumi.aws.bedrock.GuardrailVersion;
/// import com.pulumi.aws.bedrock.GuardrailVersionArgs;
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
/// var example = new GuardrailVersion("example", GuardrailVersionArgs.builder()
/// .description("example")
/// .guardrailArn(test.guardrailArn())
/// .skipDestroy(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:GuardrailVersion
/// properties:
/// description: example
/// guardrailArn: ${test.guardrailArn}
/// skipDestroy: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Bedrock Guardrail Version using using a comma-delimited string of <span pulumi-lang-nodejs="`guardrailArn`" pulumi-lang-dotnet="`GuardrailArn`" pulumi-lang-go="`guardrailArn`" pulumi-lang-python="`guardrail_arn`" pulumi-lang-yaml="`guardrailArn`" pulumi-lang-java="`guardrailArn`">`guardrail_arn`</span> and <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/guardrailVersion:GuardrailVersion example arn:aws:bedrock:us-west-2:123456789012:guardrail-id-12345678,1
/// ```
class GuardrailVersion extends CustomResource {
  /// Description of the Guardrail version.
  late final Output<String?> description;

  /// Guardrail ARN.
  ///
  /// The following arguments are optional:
  late final Output<String> guardrailArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether to retain the old version of a previously deployed Guardrail. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> skipDestroy;
  late final Output<GuardrailVersionTimeouts?> timeouts;

  /// Guardrail version.
  late final Output<String> version;

  GuardrailVersion(
    String name, {
    GuardrailVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/guardrailVersion:GuardrailVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.guardrailArn = registerOutput<String>('guardrailArn');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.timeouts = registerOutput<GuardrailVersionTimeouts?>('timeouts');
    this.version = registerOutput<String>('version');
  }
}
