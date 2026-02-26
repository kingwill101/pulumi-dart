import 'package:pulumi/pulumi.dart';
import '../event_sources_config_event_source/event_sources_config_event_source.dart';
import 'event_sources_config_args.dart';

/// Resource for managing an AWS DevOps Guru Event Sources Config. Currently the only service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler, which can produce proactive recommendations which can be stored and viewed in DevOps Guru.
///
/// > Destruction of this resource will set the CodeGuru profiler status to `DISABLED`. If you wish to preserve an `ENABLED` configuration while removing the Terraform resource, utilize a <span pulumi-lang-nodejs="`removed`" pulumi-lang-dotnet="`Removed`" pulumi-lang-go="`removed`" pulumi-lang-python="`removed`" pulumi-lang-yaml="`removed`" pulumi-lang-java="`removed`">`removed`</span> block (available in Terraform 1.7+).
///
/// > Event sources are configured at the account level. To avoid persistent differences, this resource should be defined only once.
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
/// const example = new aws.devopsguru.EventSourcesConfig("example", {eventSources: [{
/// amazonCodeGuruProfilers: [{
/// status: "ENABLED",
/// }],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.EventSourcesConfig("example", event_sources=[{
/// "amazon_code_guru_profilers": [{
/// "status": "ENABLED",
/// }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DevOpsGuru.EventSourcesConfig("example", new()
/// {
/// EventSources = new[]
/// {
/// new Aws.DevOpsGuru.Inputs.EventSourcesConfigEventSourceArgs
/// {
/// AmazonCodeGuruProfilers = new[]
/// {
/// new Aws.DevOpsGuru.Inputs.EventSourcesConfigEventSourceAmazonCodeGuruProfilerArgs
/// {
/// Status = "ENABLED",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := devopsguru.NewEventSourcesConfig(ctx, "example", &devopsguru.EventSourcesConfigArgs{
/// EventSources: devopsguru.EventSourcesConfigEventSourceArray{
/// &devopsguru.EventSourcesConfigEventSourceArgs{
/// AmazonCodeGuruProfilers: devopsguru.EventSourcesConfigEventSourceAmazonCodeGuruProfilerArray{
/// &devopsguru.EventSourcesConfigEventSourceAmazonCodeGuruProfilerArgs{
/// Status: pulumi.String("ENABLED"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.devopsguru.EventSourcesConfig;
/// import com.pulumi.aws.devopsguru.EventSourcesConfigArgs;
/// import com.pulumi.aws.devopsguru.inputs.EventSourcesConfigEventSourceArgs;
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
/// var example = new EventSourcesConfig("example", EventSourcesConfigArgs.builder()
/// .eventSources(EventSourcesConfigEventSourceArgs.builder()
/// .amazonCodeGuruProfilers(EventSourcesConfigEventSourceAmazonCodeGuruProfilerArgs.builder()
/// .status("ENABLED")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:devopsguru:EventSourcesConfig
/// properties:
/// eventSources:
/// - amazonCodeGuruProfilers:
/// - status: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Event Sources Config using the region. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/eventSourcesConfig:EventSourcesConfig example us-east-1
/// ```
class EventSourcesConfig extends CustomResource {
  /// Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See <span pulumi-lang-nodejs="`eventSources`" pulumi-lang-dotnet="`EventSources`" pulumi-lang-go="`eventSources`" pulumi-lang-python="`event_sources`" pulumi-lang-yaml="`eventSources`" pulumi-lang-java="`eventSources`">`event_sources`</span> below.
  late final Output<List<EventSourcesConfigEventSource>> eventSources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EventSourcesConfig(
    String name, {
    EventSourcesConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/eventSourcesConfig:EventSourcesConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.eventSources =
        Output.createUnknown<List<EventSourcesConfigEventSource>>();
    this.region = Output.createUnknown<String>();
  }
}
