import 'package:pulumi/pulumi.dart';
import 'graph_args.dart';

/// Provides a resource to manage an [AWS Detective Graph](https://docs.aws.amazon.com/detective/latest/APIReference/API_CreateGraph.html). As an AWS account may own only one Detective graph per region, provisioning multiple Detective graphs requires a separate provider configuration for each graph.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.detective.Graph("example", {tags: {
/// Name: "example-detective-graph",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.detective.Graph("example", tags={
/// "Name": "example-detective-graph",
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
/// var example = new Aws.Detective.Graph("example", new()
/// {
/// Tags =
/// {
/// { "Name", "example-detective-graph" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/detective"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := detective.NewGraph(ctx, "example", &detective.GraphArgs{
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-detective-graph"),
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
/// import com.pulumi.aws.detective.Graph;
/// import com.pulumi.aws.detective.GraphArgs;
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
/// var example = new Graph("example", GraphArgs.builder()
/// .tags(Map.of("Name", "example-detective-graph"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:detective:Graph
/// properties:
/// tags:
/// Name: example-detective-graph
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.detective.Graph`" pulumi-lang-dotnet="`aws.detective.Graph`" pulumi-lang-go="`detective.Graph`" pulumi-lang-python="`detective.Graph`" pulumi-lang-yaml="`aws.detective.Graph`" pulumi-lang-java="`aws.detective.Graph`">`aws.detective.Graph`</span> using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/graph:Graph example arn:aws:detective:us-east-1:123456789101:graph:231684d34gh74g4bae1dbc7bd807d02d
/// ```
class Graph extends CustomResource {
  /// Date and time, in UTC and extended RFC 3339 format, when the Amazon Detective Graph was created.
  late final Output<String> createdTime;

  /// ARN of the Detective Graph.
  late final Output<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the instance. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Graph(
    String name, {
    GraphArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:detective/graph:Graph',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdTime = Output.createUnknown<String>();
    this.graphArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
