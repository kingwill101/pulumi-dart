import 'package:pulumi/pulumi.dart';
import 'connection_args.dart';

/// Manages an App Runner Connection.
///
/// > **NOTE:** After creation, you must complete the authentication handshake using the App Runner console.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.Connection("example", {
/// connectionName: "example",
/// providerType: "GITHUB",
/// tags: {
/// Name: "example-apprunner-connection",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.Connection("example",
/// connection_name="example",
/// provider_type="GITHUB",
/// tags={
/// "Name": "example-apprunner-connection",
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
/// var example = new Aws.AppRunner.Connection("example", new()
/// {
/// ConnectionName = "example",
/// ProviderType = "GITHUB",
/// Tags =
/// {
/// { "Name", "example-apprunner-connection" },
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
/// _, err := apprunner.NewConnection(ctx, "example", &apprunner.ConnectionArgs{
/// ConnectionName: pulumi.String("example"),
/// ProviderType:   pulumi.String("GITHUB"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-apprunner-connection"),
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
/// import com.pulumi.aws.apprunner.Connection;
/// import com.pulumi.aws.apprunner.ConnectionArgs;
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
/// var example = new Connection("example", ConnectionArgs.builder()
/// .connectionName("example")
/// .providerType("GITHUB")
/// .tags(Map.of("Name", "example-apprunner-connection"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apprunner:Connection
/// properties:
/// connectionName: example
/// providerType: GITHUB
/// tags:
/// Name: example-apprunner-connection
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import App Runner Connections using the <span pulumi-lang-nodejs="`connectionName`" pulumi-lang-dotnet="`ConnectionName`" pulumi-lang-go="`connectionName`" pulumi-lang-python="`connection_name`" pulumi-lang-yaml="`connectionName`" pulumi-lang-java="`connectionName`">`connection_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/connection:Connection example example
/// ```
class Connection extends CustomResource {
  /// ARN of the connection.
  late final Output<String> arn;

  /// Name of the connection.
  late final Output<String> connectionName;

  /// Source repository provider. Valid values: `GITHUB`.
  late final Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current state of the App Runner connection. When the state is `AVAILABLE`, you can use the connection to create an <span pulumi-lang-nodejs="`aws.apprunner.Service`" pulumi-lang-dotnet="`aws.apprunner.Service`" pulumi-lang-go="`apprunner.Service`" pulumi-lang-python="`apprunner.Service`" pulumi-lang-yaml="`aws.apprunner.Service`" pulumi-lang-java="`aws.apprunner.Service`">`aws.apprunner.Service`</span> resource.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Connection(
    String name, {
    ConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.connectionName = Output.createUnknown<String>();
    this.providerType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
