import 'package:pulumi/pulumi.dart';
import '../observability_configuration_trace_configuration/observability_configuration_trace_configuration.dart';
import 'observability_configuration_args.dart';

/// Manages an App Runner Observability Configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.ObservabilityConfiguration("example", {
/// observabilityConfigurationName: "example",
/// traceConfiguration: {
/// vendor: "AWSXRAY",
/// },
/// tags: {
/// Name: "example-apprunner-observability-configuration",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.ObservabilityConfiguration("example",
/// observability_configuration_name="example",
/// trace_configuration={
/// "vendor": "AWSXRAY",
/// },
/// tags={
/// "Name": "example-apprunner-observability-configuration",
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
/// var example = new Aws.AppRunner.ObservabilityConfiguration("example", new()
/// {
/// ObservabilityConfigurationName = "example",
/// TraceConfiguration = new Aws.AppRunner.Inputs.ObservabilityConfigurationTraceConfigurationArgs
/// {
/// Vendor = "AWSXRAY",
/// },
/// Tags =
/// {
/// { "Name", "example-apprunner-observability-configuration" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apprunner.NewObservabilityConfiguration(ctx, "example", &apprunner.ObservabilityConfigurationArgs{
/// ObservabilityConfigurationName: pulumi.String("example"),
/// TraceConfiguration: &apprunner.ObservabilityConfigurationTraceConfigurationArgs{
/// Vendor: pulumi.String("AWSXRAY"),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-apprunner-observability-configuration"),
/// },
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
/// import com.pulumi.aws.apprunner.ObservabilityConfiguration;
/// import com.pulumi.aws.apprunner.ObservabilityConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ObservabilityConfigurationTraceConfigurationArgs;
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
/// var example = new ObservabilityConfiguration("example", ObservabilityConfigurationArgs.builder()
/// .observabilityConfigurationName("example")
/// .traceConfiguration(ObservabilityConfigurationTraceConfigurationArgs.builder()
/// .vendor("AWSXRAY")
/// .build())
/// .tags(Map.of("Name", "example-apprunner-observability-configuration"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apprunner:ObservabilityConfiguration
/// properties:
/// observabilityConfigurationName: example
/// traceConfiguration:
/// vendor: AWSXRAY
/// tags:
/// Name: example-apprunner-observability-configuration
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the App Runner observability configuration.
///
///
/// Using `pulumi import`, import App Runner Observability Configuration using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/observabilityConfiguration:ObservabilityConfiguration example arn:aws:apprunner:us-east-1:1234567890:observabilityconfiguration/example/1/d75bc7ea55b71e724fe5c23452fe22a1
/// ```
class ObservabilityConfiguration extends CustomResource {
  /// ARN of this observability configuration.
  late final Output<String> arn;

  /// Whether the observability configuration has the highest <span pulumi-lang-nodejs="`observabilityConfigurationRevision`" pulumi-lang-dotnet="`ObservabilityConfigurationRevision`" pulumi-lang-go="`observabilityConfigurationRevision`" pulumi-lang-python="`observability_configuration_revision`" pulumi-lang-yaml="`observabilityConfigurationRevision`" pulumi-lang-java="`observabilityConfigurationRevision`">`observability_configuration_revision`</span> among all configurations that share the same <span pulumi-lang-nodejs="`observabilityConfigurationName`" pulumi-lang-dotnet="`ObservabilityConfigurationName`" pulumi-lang-go="`observabilityConfigurationName`" pulumi-lang-python="`observability_configuration_name`" pulumi-lang-yaml="`observabilityConfigurationName`" pulumi-lang-java="`observabilityConfigurationName`">`observability_configuration_name`</span>.
  late final Output<bool> latest;

  /// Name of the observability configuration.
  late final Output<String> observabilityConfigurationName;

  /// The revision of this observability configuration.
  late final Output<int> observabilityConfigurationRevision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See Trace Configuration below for more details.
  late final Output<ObservabilityConfigurationTraceConfiguration?>
      traceConfiguration;

  ObservabilityConfiguration(
    String name, {
    ObservabilityConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/observabilityConfiguration:ObservabilityConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.latest = registerOutput<bool>('latest');
    this.observabilityConfigurationName =
        registerOutput<String>('observabilityConfigurationName');
    this.observabilityConfigurationRevision =
        registerOutput<int>('observabilityConfigurationRevision');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.traceConfiguration =
        registerOutput<ObservabilityConfigurationTraceConfiguration?>(
            'traceConfiguration');
  }
}
