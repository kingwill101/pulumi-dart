import 'package:pulumi/pulumi.dart';
import '../link_link_configuration/link_link_configuration.dart';
import 'link_args2.dart';

/// Resource for managing an AWS CloudWatch Observability Access Manager Link.
///
/// > **NOTE:** Creating an <span pulumi-lang-nodejs="`aws.oam.Link`" pulumi-lang-dotnet="`aws.oam.Link`" pulumi-lang-go="`oam.Link`" pulumi-lang-python="`oam.Link`" pulumi-lang-yaml="`aws.oam.Link`" pulumi-lang-java="`aws.oam.Link`">`aws.oam.Link`</span> may sometimes fail if the <span pulumi-lang-nodejs="`aws.oam.SinkPolicy`" pulumi-lang-dotnet="`aws.oam.SinkPolicy`" pulumi-lang-go="`oam.SinkPolicy`" pulumi-lang-python="`oam.SinkPolicy`" pulumi-lang-yaml="`aws.oam.SinkPolicy`" pulumi-lang-java="`aws.oam.SinkPolicy`">`aws.oam.SinkPolicy`</span> for the attached <span pulumi-lang-nodejs="`aws.oam.Sink`" pulumi-lang-dotnet="`aws.oam.Sink`" pulumi-lang-go="`oam.Sink`" pulumi-lang-python="`oam.Sink`" pulumi-lang-yaml="`aws.oam.Sink`" pulumi-lang-java="`aws.oam.Sink`">`aws.oam.Sink`</span> is not created before the <span pulumi-lang-nodejs="`aws.oam.Link`" pulumi-lang-dotnet="`aws.oam.Link`" pulumi-lang-go="`oam.Link`" pulumi-lang-python="`oam.Link`" pulumi-lang-yaml="`aws.oam.Link`" pulumi-lang-java="`aws.oam.Link`">`aws.oam.Link`</span>. To prevent this, declare an explicit dependency using a <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> meta-argument.
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
/// const exampleSink = new aws.oam.Sink("example", {});
/// const exampleSinkPolicy = new aws.oam.SinkPolicy("example", {sinkIdentifier: exampleSink.arn});
/// const example = new aws.oam.Link("example", {
/// labelTemplate: "$AccountName",
/// resourceTypes: ["AWS::CloudWatch::Metric"],
/// sinkIdentifier: exampleSink.arn,
/// tags: {
/// Env: "prod",
/// },
/// }, {
/// dependsOn: [exampleSinkPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_sink = aws.oam.Sink("example")
/// example_sink_policy = aws.oam.SinkPolicy("example", sink_identifier=example_sink.arn)
/// example = aws.oam.Link("example",
/// label_template="$AccountName",
/// resource_types=["AWS::CloudWatch::Metric"],
/// sink_identifier=example_sink.arn,
/// tags={
/// "Env": "prod",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_sink_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleSink = new Aws.Oam.Sink("example");
///
/// var exampleSinkPolicy = new Aws.Oam.SinkPolicy("example", new()
/// {
/// SinkIdentifier = exampleSink.Arn,
/// });
///
/// var example = new Aws.Oam.Link("example", new()
/// {
/// LabelTemplate = "$AccountName",
/// ResourceTypes = new[]
/// {
/// "AWS::CloudWatch::Metric",
/// },
/// SinkIdentifier = exampleSink.Arn,
/// Tags =
/// {
/// { "Env", "prod" },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleSinkPolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleSink, err := oam.NewSink(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleSinkPolicy, err := oam.NewSinkPolicy(ctx, "example", &oam.SinkPolicyArgs{
/// SinkIdentifier: exampleSink.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = oam.NewLink(ctx, "example", &oam.LinkArgs{
/// LabelTemplate: pulumi.String("$AccountName"),
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("AWS::CloudWatch::Metric"),
/// },
/// SinkIdentifier: exampleSink.Arn,
/// Tags: pulumi.StringMap{
/// "Env": pulumi.String("prod"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleSinkPolicy,
/// }))
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
/// import com.pulumi.aws.oam.Sink;
/// import com.pulumi.aws.oam.SinkPolicy;
/// import com.pulumi.aws.oam.SinkPolicyArgs;
/// import com.pulumi.aws.oam.Link;
/// import com.pulumi.aws.oam.LinkArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var exampleSink = new Sink("exampleSink");
///
/// var exampleSinkPolicy = new SinkPolicy("exampleSinkPolicy", SinkPolicyArgs.builder()
/// .sinkIdentifier(exampleSink.arn())
/// .build());
///
/// var example = new Link("example", LinkArgs.builder()
/// .labelTemplate("$AccountName")
/// .resourceTypes("AWS::CloudWatch::Metric")
/// .sinkIdentifier(exampleSink.arn())
/// .tags(Map.of("Env", "prod"))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleSinkPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:oam:Link
/// properties:
/// labelTemplate: $AccountName
/// resourceTypes:
/// - AWS::CloudWatch::Metric
/// sinkIdentifier: ${exampleSink.arn}
/// tags:
/// Env: prod
/// options:
/// dependsOn:
/// - ${exampleSinkPolicy}
/// exampleSink:
/// type: aws:oam:Sink
/// name: example
/// exampleSinkPolicy:
/// type: aws:oam:SinkPolicy
/// name: example
/// properties:
/// sinkIdentifier: ${exampleSink.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Log Group Filtering
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.oam.Link("example", {
/// labelTemplate: "$AccountName",
/// linkConfiguration: {
/// logGroupConfiguration: {
/// filter: "LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'",
/// },
/// },
/// resourceTypes: ["AWS::Logs::LogGroup"],
/// sinkIdentifier: exampleAwsOamSink.arn,
/// }, {
/// dependsOn: [exampleAwsOamSinkPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.Link("example",
/// label_template="$AccountName",
/// link_configuration={
/// "log_group_configuration": {
/// "filter": "LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'",
/// },
/// },
/// resource_types=["AWS::Logs::LogGroup"],
/// sink_identifier=example_aws_oam_sink["arn"],
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_oam_sink_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Oam.Link("example", new()
/// {
/// LabelTemplate = "$AccountName",
/// LinkConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationArgs
/// {
/// LogGroupConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationLogGroupConfigurationArgs
/// {
/// Filter = "LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'",
/// },
/// },
/// ResourceTypes = new[]
/// {
/// "AWS::Logs::LogGroup",
/// },
/// SinkIdentifier = exampleAwsOamSink.Arn,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsOamSinkPolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oam.NewLink(ctx, "example", &oam.LinkArgs{
/// LabelTemplate: pulumi.String("$AccountName"),
/// LinkConfiguration: &oam.LinkLinkConfigurationArgs{
/// LogGroupConfiguration: &oam.LinkLinkConfigurationLogGroupConfigurationArgs{
/// Filter: pulumi.String("LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'"),
/// },
/// },
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("AWS::Logs::LogGroup"),
/// },
/// SinkIdentifier: pulumi.Any(exampleAwsOamSink.Arn),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsOamSinkPolicy,
/// }))
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
/// import com.pulumi.aws.oam.Link;
/// import com.pulumi.aws.oam.LinkArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationLogGroupConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Link("example", LinkArgs.builder()
/// .labelTemplate("$AccountName")
/// .linkConfiguration(LinkLinkConfigurationArgs.builder()
/// .logGroupConfiguration(LinkLinkConfigurationLogGroupConfigurationArgs.builder()
/// .filter("LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'")
/// .build())
/// .build())
/// .resourceTypes("AWS::Logs::LogGroup")
/// .sinkIdentifier(exampleAwsOamSink.arn())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsOamSinkPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:oam:Link
/// properties:
/// labelTemplate: $AccountName
/// linkConfiguration:
/// logGroupConfiguration:
/// filter: LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'
/// resourceTypes:
/// - AWS::Logs::LogGroup
/// sinkIdentifier: ${exampleAwsOamSink.arn}
/// options:
/// dependsOn:
/// - ${exampleAwsOamSinkPolicy}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Metric Filtering
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.oam.Link("example", {
/// labelTemplate: "$AccountName",
/// linkConfiguration: {
/// metricConfiguration: {
/// filter: "Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')",
/// },
/// },
/// resourceTypes: ["AWS::CloudWatch::Metric"],
/// sinkIdentifier: exampleAwsOamSink.arn,
/// }, {
/// dependsOn: [exampleAwsOamSinkPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.Link("example",
/// label_template="$AccountName",
/// link_configuration={
/// "metric_configuration": {
/// "filter": "Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')",
/// },
/// },
/// resource_types=["AWS::CloudWatch::Metric"],
/// sink_identifier=example_aws_oam_sink["arn"],
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_oam_sink_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Oam.Link("example", new()
/// {
/// LabelTemplate = "$AccountName",
/// LinkConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationArgs
/// {
/// MetricConfiguration = new Aws.Oam.Inputs.LinkLinkConfigurationMetricConfigurationArgs
/// {
/// Filter = "Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')",
/// },
/// },
/// ResourceTypes = new[]
/// {
/// "AWS::CloudWatch::Metric",
/// },
/// SinkIdentifier = exampleAwsOamSink.Arn,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsOamSinkPolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oam.NewLink(ctx, "example", &oam.LinkArgs{
/// LabelTemplate: pulumi.String("$AccountName"),
/// LinkConfiguration: &oam.LinkLinkConfigurationArgs{
/// MetricConfiguration: &oam.LinkLinkConfigurationMetricConfigurationArgs{
/// Filter: pulumi.String("Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')"),
/// },
/// },
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("AWS::CloudWatch::Metric"),
/// },
/// SinkIdentifier: pulumi.Any(exampleAwsOamSink.Arn),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsOamSinkPolicy,
/// }))
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
/// import com.pulumi.aws.oam.Link;
/// import com.pulumi.aws.oam.LinkArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationArgs;
/// import com.pulumi.aws.oam.inputs.LinkLinkConfigurationMetricConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Link("example", LinkArgs.builder()
/// .labelTemplate("$AccountName")
/// .linkConfiguration(LinkLinkConfigurationArgs.builder()
/// .metricConfiguration(LinkLinkConfigurationMetricConfigurationArgs.builder()
/// .filter("Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')")
/// .build())
/// .build())
/// .resourceTypes("AWS::CloudWatch::Metric")
/// .sinkIdentifier(exampleAwsOamSink.arn())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsOamSinkPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:oam:Link
/// properties:
/// labelTemplate: $AccountName
/// linkConfiguration:
/// metricConfiguration:
/// filter: Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')
/// resourceTypes:
/// - AWS::CloudWatch::Metric
/// sinkIdentifier: ${exampleAwsOamSink.arn}
/// options:
/// dependsOn:
/// - ${exampleAwsOamSinkPolicy}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Access Manager Link using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:oam/link:Link example arn:aws:oam:us-west-2:123456789012:link/link-id
/// ```
class Link2 extends CustomResource {
  /// ARN of the link.
  late final Output<String> arn;

  /// Label that is assigned to this link.
  late final Output<String> label;

  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  late final Output<String> labelTemplate;

  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See <span pulumi-lang-nodejs="`linkConfiguration`" pulumi-lang-dotnet="`LinkConfiguration`" pulumi-lang-go="`linkConfiguration`" pulumi-lang-python="`link_configuration`" pulumi-lang-yaml="`linkConfiguration`" pulumi-lang-java="`linkConfiguration`">`link_configuration`</span> Block for details.
  late final Output<LinkLinkConfiguration?> linkConfiguration;

  /// ID string that AWS generated as part of the link ARN.
  late final Output<String> linkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Types of data that the source account shares with the monitoring account.
  late final Output<List<String>> resourceTypes;

  /// ARN of the sink that is used for this link.
  late final Output<String> sinkArn;

  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  late final Output<String> sinkIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Link2(
    String name, {
    LinkArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:oam/link:Link',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.label = Output.createUnknown<String>();
    this.labelTemplate = Output.createUnknown<String>();
    this.linkConfiguration = Output.createUnknown<LinkLinkConfiguration?>();
    this.linkId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceTypes = Output.createUnknown<List<String>>();
    this.sinkArn = Output.createUnknown<String>();
    this.sinkIdentifier = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
