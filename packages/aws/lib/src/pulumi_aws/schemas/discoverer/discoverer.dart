import 'package:pulumi/pulumi.dart';
import 'discoverer_args.dart';

/// Provides an EventBridge Schema Discoverer resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const messenger = new aws.cloudwatch.EventBus("messenger", {name: "chat-messages"});
/// const test = new aws.schemas.Discoverer("test", {
/// sourceArn: messenger.arn,
/// description: "Auto discover event schemas",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// messenger = aws.cloudwatch.EventBus("messenger", name="chat-messages")
/// test = aws.schemas.Discoverer("test",
/// source_arn=messenger.arn,
/// description="Auto discover event schemas")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var messenger = new Aws.CloudWatch.EventBus("messenger", new()
/// {
/// Name = "chat-messages",
/// });
///
/// var test = new Aws.Schemas.Discoverer("test", new()
/// {
/// SourceArn = messenger.Arn,
/// Description = "Auto discover event schemas",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/schemas"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// messenger, err := cloudwatch.NewEventBus(ctx, "messenger", &cloudwatch.EventBusArgs{
/// Name: pulumi.String("chat-messages"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = schemas.NewDiscoverer(ctx, "test", &schemas.DiscovererArgs{
/// SourceArn:   messenger.Arn,
/// Description: pulumi.String("Auto discover event schemas"),
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
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
/// import com.pulumi.aws.schemas.Discoverer;
/// import com.pulumi.aws.schemas.DiscovererArgs;
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
/// var messenger = new EventBus("messenger", EventBusArgs.builder()
/// .name("chat-messages")
/// .build());
///
/// var test = new Discoverer("test", DiscovererArgs.builder()
/// .sourceArn(messenger.arn())
/// .description("Auto discover event schemas")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// messenger:
/// type: aws:cloudwatch:EventBus
/// properties:
/// name: chat-messages
/// test:
/// type: aws:schemas:Discoverer
/// properties:
/// sourceArn: ${messenger.arn}
/// description: Auto discover event schemas
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge discoverers using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/discoverer:Discoverer test 123
/// ```
class Discoverer extends CustomResource {
  /// The Amazon Resource Name (ARN) of the discoverer.
  late final Output<String> arn;

  /// The description of the discoverer. Maximum of 256 characters.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the event bus to discover event schemas on.
  late final Output<String> sourceArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Discoverer(
    String name, {
    DiscovererArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:schemas/discoverer:Discoverer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.sourceArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
