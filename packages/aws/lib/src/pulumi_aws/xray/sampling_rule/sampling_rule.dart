import 'package:pulumi/pulumi.dart';
import 'sampling_rule_args.dart';

/// Creates and manages an AWS XRay Sampling Rule.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.xray.SamplingRule("example", {
/// ruleName: "example",
/// priority: 9999,
/// version: 1,
/// reservoirSize: 1,
/// fixedRate: 0.05,
/// urlPath: "*",
/// host: "*",
/// httpMethod: "*",
/// serviceType: "*",
/// serviceName: "*",
/// resourceArn: "*",
/// attributes: {
/// Hello: "Tris",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.xray.SamplingRule("example",
/// rule_name="example",
/// priority=9999,
/// version=1,
/// reservoir_size=1,
/// fixed_rate=0.05,
/// url_path="*",
/// host="*",
/// http_method="*",
/// service_type="*",
/// service_name="*",
/// resource_arn="*",
/// attributes={
/// "Hello": "Tris",
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
/// var example = new Aws.Xray.SamplingRule("example", new()
/// {
/// RuleName = "example",
/// Priority = 9999,
/// Version = 1,
/// ReservoirSize = 1,
/// FixedRate = 0.05,
/// UrlPath = "*",
/// Host = "*",
/// HttpMethod = "*",
/// ServiceType = "*",
/// ServiceName = "*",
/// ResourceArn = "*",
/// Attributes =
/// {
/// { "Hello", "Tris" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := xray.NewSamplingRule(ctx, "example", &xray.SamplingRuleArgs{
/// RuleName:      pulumi.String("example"),
/// Priority:      pulumi.Int(9999),
/// Version:       pulumi.Int(1),
/// ReservoirSize: pulumi.Int(1),
/// FixedRate:     pulumi.Float64(0.05),
/// UrlPath:       pulumi.String("*"),
/// Host:          pulumi.String("*"),
/// HttpMethod:    pulumi.String("*"),
/// ServiceType:   pulumi.String("*"),
/// ServiceName:   pulumi.String("*"),
/// ResourceArn:   pulumi.String("*"),
/// Attributes: pulumi.StringMap{
/// "Hello": pulumi.String("Tris"),
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
/// import com.pulumi.aws.xray.SamplingRule;
/// import com.pulumi.aws.xray.SamplingRuleArgs;
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
/// var example = new SamplingRule("example", SamplingRuleArgs.builder()
/// .ruleName("example")
/// .priority(9999)
/// .version(1)
/// .reservoirSize(1)
/// .fixedRate(0.05)
/// .urlPath("*")
/// .host("*")
/// .httpMethod("*")
/// .serviceType("*")
/// .serviceName("*")
/// .resourceArn("*")
/// .attributes(Map.of("Hello", "Tris"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:xray:SamplingRule
/// properties:
/// ruleName: example
/// priority: 9999
/// version: 1
/// reservoirSize: 1
/// fixedRate: 0.05
/// urlPath: '*'
/// host: '*'
/// httpMethod: '*'
/// serviceType: '*'
/// serviceName: '*'
/// resourceArn: '*'
/// attributes:
/// Hello: Tris
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import XRay Sampling Rules using the name. For example:
///
/// ```sh
/// $ pulumi import aws:xray/samplingRule:SamplingRule example example
/// ```
class SamplingRule extends CustomResource {
  /// The ARN of the sampling rule.
  late final Output<String> arn;

  /// Matches attributes derived from the request.
  late final Output<Map<String, String>?> attributes;

  /// The percentage of matching requests to instrument, after the reservoir is exhausted.
  late final Output<double> fixedRate;

  /// Matches the hostname from a request URL.
  late final Output<String> host;

  /// Matches the HTTP method of a request.
  late final Output<String> httpMethod;

  /// The priority of the sampling rule.
  late final Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
  late final Output<int> reservoirSize;

  /// Matches the ARN of the AWS resource on which the service runs.
  late final Output<String> resourceArn;

  /// The name of the sampling rule.
  late final Output<String?> ruleName;

  /// Matches the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> that the service uses to identify itself in segments.
  late final Output<String> serviceName;

  /// Matches the <span pulumi-lang-nodejs="`origin`" pulumi-lang-dotnet="`Origin`" pulumi-lang-go="`origin`" pulumi-lang-python="`origin`" pulumi-lang-yaml="`origin`" pulumi-lang-java="`origin`">`origin`</span> that the service uses to identify its type in segments.
  late final Output<String> serviceType;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Matches the path from a request URL.
  late final Output<String> urlPath;

  /// The version of the sampling rule format (<span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> )
  late final Output<int> version;

  SamplingRule(
    String name, {
    SamplingRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:xray/samplingRule:SamplingRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.attributes = Output.createUnknown<Map<String, String>?>();
    this.fixedRate = Output.createUnknown<double>();
    this.host = Output.createUnknown<String>();
    this.httpMethod = Output.createUnknown<String>();
    this.priority = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.reservoirSize = Output.createUnknown<int>();
    this.resourceArn = Output.createUnknown<String>();
    this.ruleName = Output.createUnknown<String?>();
    this.serviceName = Output.createUnknown<String>();
    this.serviceType = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.urlPath = Output.createUnknown<String>();
    this.version = Output.createUnknown<int>();
  }
}
