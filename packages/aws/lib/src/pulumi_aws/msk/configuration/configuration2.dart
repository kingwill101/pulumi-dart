import 'package:pulumi/pulumi.dart';
import 'configuration_args2.dart';

/// Manages an Amazon Managed Streaming for Kafka configuration. More information can be found on the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.Configuration("example", {
/// kafkaVersions: ["2.1.0"],
/// name: "example",
/// serverProperties: `auto.create.topics.enable = true
/// delete.topic.enable = true
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.Configuration("example",
/// kafka_versions=["2.1.0"],
/// name="example",
/// server_properties="""auto.create.topics.enable = true
/// delete.topic.enable = true
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Msk.Configuration("example", new()
/// {
/// KafkaVersions = new[]
/// {
/// "2.1.0",
/// },
/// Name = "example",
/// ServerProperties = @"auto.create.topics.enable = true
/// delete.topic.enable = true
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := msk.NewConfiguration(ctx, "example", &msk.ConfigurationArgs{
/// KafkaVersions: pulumi.StringArray{
/// pulumi.String("2.1.0"),
/// },
/// Name:             pulumi.String("example"),
/// ServerProperties: pulumi.String("auto.create.topics.enable = true\ndelete.topic.enable = true\n"),
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
/// import com.pulumi.aws.msk.Configuration;
/// import com.pulumi.aws.msk.ConfigurationArgs;
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
/// var example = new Configuration("example", ConfigurationArgs.builder()
/// .kafkaVersions("2.1.0")
/// .name("example")
/// .serverProperties("""
/// auto.create.topics.enable = true
/// delete.topic.enable = true
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:msk:Configuration
/// properties:
/// kafkaVersions:
/// - 2.1.0
/// name: example
/// serverProperties: |
/// auto.create.topics.enable = true
/// delete.topic.enable = true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import MSK configurations using the configuration ARN. For example:
///
/// ```sh
/// $ pulumi import aws:msk/configuration:Configuration example arn:aws:kafka:us-west-2:123456789012:configuration/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class Configuration2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the configuration.
  late final Output<String> arn;

  /// Description of the configuration.
  late final Output<String?> description;

  /// List of Apache Kafka versions which can use this configuration.
  late final Output<List<String>?> kafkaVersions;

  /// Latest revision of the configuration.
  late final Output<int> latestRevision;

  /// Name of the configuration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  late final Output<String> serverProperties;

  Configuration2(
    String name, {
    ConfigurationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/configuration:Configuration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.kafkaVersions = Output.createUnknown<List<String>?>();
    this.latestRevision = Output.createUnknown<int>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serverProperties = Output.createUnknown<String>();
  }
}
