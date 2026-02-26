import 'package:pulumi/pulumi.dart';
import 'segment_args.dart';

/// Provides a CloudWatch Evidently Segment resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Segment("example", {
/// name: "example",
/// pattern: "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
/// tags: {
/// Key1: "example Segment",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Segment("example",
/// name="example",
/// pattern="{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
/// tags={
/// "Key1": "example Segment",
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
/// var example = new Aws.Evidently.Segment("example", new()
/// {
/// Name = "example",
/// Pattern = "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
/// Tags =
/// {
/// { "Key1", "example Segment" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewSegment(ctx, "example", &evidently.SegmentArgs{
/// Name:    pulumi.String("example"),
/// Pattern: pulumi.String("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}"),
/// Tags: pulumi.StringMap{
/// "Key1": pulumi.String("example Segment"),
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
/// import com.pulumi.aws.evidently.Segment;
/// import com.pulumi.aws.evidently.SegmentArgs;
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
/// var example = new Segment("example", SegmentArgs.builder()
/// .name("example")
/// .pattern("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}")
/// .tags(Map.of("Key1", "example Segment"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Segment
/// properties:
/// name: example
/// pattern: '{"Price":[{"numeric":[">",10,"<=",20]}]}'
/// tags:
/// Key1: example Segment
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With JSON object in pattern
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Segment("example", {
/// name: "example",
/// pattern: `  {
/// \\"Price\\": [
/// {
/// \\"numeric\\": [\\">\\",10,\\"<=\\",20]
/// }
/// ]
/// }
/// `,
/// tags: {
/// Key1: "example Segment",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Segment("example",
/// name="example",
/// pattern="""  {
/// \"Price\": [
/// {
/// \"numeric\": [\">\",10,\"<=\",20]
/// }
/// ]
/// }
/// """,
/// tags={
/// "Key1": "example Segment",
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
/// var example = new Aws.Evidently.Segment("example", new()
/// {
/// Name = "example",
/// Pattern = @"  {
/// \""Price\"": [
/// {
/// \""numeric\"": [\"">\"",10,\""<=\"",20]
/// }
/// ]
/// }
/// ",
/// Tags =
/// {
/// { "Key1", "example Segment" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewSegment(ctx, "example", &evidently.SegmentArgs{
/// Name: pulumi.String("example"),
/// Pattern: pulumi.String(`  {
/// \"Price\": [
/// {
/// \"numeric\": [\">\",10,\"<=\",20]
/// }
/// ]
/// }
/// `),
/// Tags: pulumi.StringMap{
/// "Key1": pulumi.String("example Segment"),
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
/// import com.pulumi.aws.evidently.Segment;
/// import com.pulumi.aws.evidently.SegmentArgs;
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
/// var example = new Segment("example", SegmentArgs.builder()
/// .name("example")
/// .pattern("""
/// {
/// \"Price\": [
/// {
/// \"numeric\": [\">\",10,\"<=\",20]
/// }
/// ]
/// }
/// """)
/// .tags(Map.of("Key1", "example Segment"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Segment
/// properties:
/// name: example
/// pattern: |2
/// {
/// \"Price\": [
/// {
/// \"numeric\": [\">\",10,\"<=\",20]
/// }
/// ]
/// }
/// tags:
/// Key1: example Segment
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Description
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Segment("example", {
/// name: "example",
/// pattern: "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
/// description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Segment("example",
/// name="example",
/// pattern="{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
/// description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Evidently.Segment("example", new()
/// {
/// Name = "example",
/// Pattern = "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
/// Description = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewSegment(ctx, "example", &evidently.SegmentArgs{
/// Name:        pulumi.String("example"),
/// Pattern:     pulumi.String("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}"),
/// Description: pulumi.String("example"),
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
/// import com.pulumi.aws.evidently.Segment;
/// import com.pulumi.aws.evidently.SegmentArgs;
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
/// var example = new Segment("example", SegmentArgs.builder()
/// .name("example")
/// .pattern("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}")
/// .description("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Segment
/// properties:
/// name: example
/// pattern: '{"Price":[{"numeric":[">",10,"<=",20]}]}'
/// description: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Evidently Segment using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:evidently/segment:Segment example arn:aws:evidently:us-west-2:123456789012:segment/example
/// ```
class Segment extends CustomResource {
  /// The ARN of the segment.
  late final Output<String> arn;

  /// The date and time that the segment is created.
  late final Output<String> createdTime;

  /// Specifies the description of the segment.
  late final Output<String?> description;

  /// The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running.
  late final Output<int> experimentCount;

  /// The date and time that this segment was most recently updated.
  late final Output<String> lastUpdatedTime;

  /// The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running.
  late final Output<int> launchCount;

  /// A name for the segment.
  late final Output<String> name;

  /// The pattern to use for the segment. For more information about pattern syntax, see [Segment rule pattern syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).
  late final Output<String> pattern;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the segment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Segment(
    String name, {
    SegmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:evidently/segment:Segment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.experimentCount = Output.createUnknown<int>();
    this.lastUpdatedTime = Output.createUnknown<String>();
    this.launchCount = Output.createUnknown<int>();
    this.name = Output.createUnknown<String>();
    this.pattern = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
