import 'package:pulumi/pulumi.dart';
import '../resource_collection_cloudformation/resource_collection_cloudformation.dart';
import '../resource_collection_tags/resource_collection_tags.dart';
import 'resource_collection_args.dart';

/// Resource for managing an AWS DevOps Guru Resource Collection.
///
/// > Only one type of resource collection (All Account Resources, CloudFormation, or Tags) can be enabled in an account at a time. To avoid persistent differences, this resource should be defined only once.
///
/// ## Example Usage
///
/// ### All Account Resources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
/// type: "AWS_SERVICE",
/// cloudformation: {
/// stackNames: ["*"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
/// type="AWS_SERVICE",
/// cloudformation={
/// "stack_names": ["*"],
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
/// var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
/// {
/// Type = "AWS_SERVICE",
/// Cloudformation = new Aws.DevOpsGuru.Inputs.ResourceCollectionCloudformationArgs
/// {
/// StackNames = new[]
/// {
/// "*",
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
/// _, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// Type: pulumi.String("AWS_SERVICE"),
/// Cloudformation: &devopsguru.ResourceCollectionCloudformationArgs{
/// StackNames: pulumi.StringArray{
/// pulumi.String("*"),
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
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionCloudformationArgs;
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
/// var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
/// .type("AWS_SERVICE")
/// .cloudformation(ResourceCollectionCloudformationArgs.builder()
/// .stackNames("*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:devopsguru:ResourceCollection
/// properties:
/// type: AWS_SERVICE
/// cloudformation:
/// stackNames:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### CloudFormation Stacks
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
/// type: "AWS_CLOUD_FORMATION",
/// cloudformation: {
/// stackNames: ["ExampleStack"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
/// type="AWS_CLOUD_FORMATION",
/// cloudformation={
/// "stack_names": ["ExampleStack"],
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
/// var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
/// {
/// Type = "AWS_CLOUD_FORMATION",
/// Cloudformation = new Aws.DevOpsGuru.Inputs.ResourceCollectionCloudformationArgs
/// {
/// StackNames = new[]
/// {
/// "ExampleStack",
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
/// _, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// Type: pulumi.String("AWS_CLOUD_FORMATION"),
/// Cloudformation: &devopsguru.ResourceCollectionCloudformationArgs{
/// StackNames: pulumi.StringArray{
/// pulumi.String("ExampleStack"),
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
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionCloudformationArgs;
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
/// var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
/// .type("AWS_CLOUD_FORMATION")
/// .cloudformation(ResourceCollectionCloudformationArgs.builder()
/// .stackNames("ExampleStack")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:devopsguru:ResourceCollection
/// properties:
/// type: AWS_CLOUD_FORMATION
/// cloudformation:
/// stackNames:
/// - ExampleStack
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
/// type: "AWS_TAGS",
/// tags: {
/// appBoundaryKey: "DevOps-Guru-Example",
/// tagValues: ["Example-Value"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
/// type="AWS_TAGS",
/// tags={
/// "app_boundary_key": "DevOps-Guru-Example",
/// "tag_values": ["Example-Value"],
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
/// var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
/// {
/// Type = "AWS_TAGS",
/// Tags = new Aws.DevOpsGuru.Inputs.ResourceCollectionTagsArgs
/// {
/// AppBoundaryKey = "DevOps-Guru-Example",
/// TagValues = new[]
/// {
/// "Example-Value",
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
/// _, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// Type: pulumi.String("AWS_TAGS"),
/// Tags: &devopsguru.ResourceCollectionTagsArgs{
/// AppBoundaryKey: pulumi.String("DevOps-Guru-Example"),
/// TagValues: pulumi.StringArray{
/// pulumi.String("Example-Value"),
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
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionTagsArgs;
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
/// var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
/// .type("AWS_TAGS")
/// .tags(ResourceCollectionTagsArgs.builder()
/// .appBoundaryKey("DevOps-Guru-Example")
/// .tagValues("Example-Value")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:devopsguru:ResourceCollection
/// properties:
/// type: AWS_TAGS
/// tags:
/// appBoundaryKey: DevOps-Guru-Example
/// tagValues:
/// - Example-Value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Tags All Resources
///
/// To analyze all resources with the <span pulumi-lang-nodejs="`appBoundaryKey`" pulumi-lang-dotnet="`AppBoundaryKey`" pulumi-lang-go="`appBoundaryKey`" pulumi-lang-python="`app_boundary_key`" pulumi-lang-yaml="`appBoundaryKey`" pulumi-lang-java="`appBoundaryKey`">`app_boundary_key`</span> regardless of the corresponding tag value, set <span pulumi-lang-nodejs="`tagValues`" pulumi-lang-dotnet="`TagValues`" pulumi-lang-go="`tagValues`" pulumi-lang-python="`tag_values`" pulumi-lang-yaml="`tagValues`" pulumi-lang-java="`tagValues`">`tag_values`</span> to `["*"]`.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
/// type: "AWS_TAGS",
/// tags: {
/// appBoundaryKey: "DevOps-Guru-Example",
/// tagValues: ["*"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
/// type="AWS_TAGS",
/// tags={
/// "app_boundary_key": "DevOps-Guru-Example",
/// "tag_values": ["*"],
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
/// var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
/// {
/// Type = "AWS_TAGS",
/// Tags = new Aws.DevOpsGuru.Inputs.ResourceCollectionTagsArgs
/// {
/// AppBoundaryKey = "DevOps-Guru-Example",
/// TagValues = new[]
/// {
/// "*",
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
/// _, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// Type: pulumi.String("AWS_TAGS"),
/// Tags: &devopsguru.ResourceCollectionTagsArgs{
/// AppBoundaryKey: pulumi.String("DevOps-Guru-Example"),
/// TagValues: pulumi.StringArray{
/// pulumi.String("*"),
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
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionTagsArgs;
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
/// var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
/// .type("AWS_TAGS")
/// .tags(ResourceCollectionTagsArgs.builder()
/// .appBoundaryKey("DevOps-Guru-Example")
/// .tagValues("*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:devopsguru:ResourceCollection
/// properties:
/// type: AWS_TAGS
/// tags:
/// appBoundaryKey: DevOps-Guru-Example
/// tagValues:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Resource Collection using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/resourceCollection:ResourceCollection example AWS_CLOUD_FORMATION
/// ```
class ResourceCollection extends CustomResource {
  /// A collection of AWS CloudFormation stacks. See <span pulumi-lang-nodejs="`cloudformation`" pulumi-lang-dotnet="`Cloudformation`" pulumi-lang-go="`cloudformation`" pulumi-lang-python="`cloudformation`" pulumi-lang-yaml="`cloudformation`" pulumi-lang-java="`cloudformation`">`cloudformation`</span> below for additional details.
  late final Output<ResourceCollectionCloudformation?> cloudformation;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS tags used to filter the resources in the resource collection. See <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> below for additional details.
  late final Output<ResourceCollectionTags?> tags;

  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  ResourceCollection(
    String name, {
    ResourceCollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/resourceCollection:ResourceCollection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudformation =
        Output.createUnknown<ResourceCollectionCloudformation?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<ResourceCollectionTags?>();
    this.type = Output.createUnknown<String>();
  }
}
