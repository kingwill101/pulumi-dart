import 'package:pulumi/pulumi.dart';
import '../connection_alias_timeouts/connection_alias_timeouts.dart';
import 'connection_alias_args.dart';

/// Resource for managing an AWS WorkSpaces Connection Alias.
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
/// const example = new aws.workspaces.ConnectionAlias("example", {connectionString: "testdomain.test"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.ConnectionAlias("example", connection_string="testdomain.test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Workspaces.ConnectionAlias("example", new()
/// {
/// ConnectionString = "testdomain.test",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspaces.NewConnectionAlias(ctx, "example", &workspaces.ConnectionAliasArgs{
/// ConnectionString: pulumi.String("testdomain.test"),
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
/// import com.pulumi.aws.workspaces.ConnectionAlias;
/// import com.pulumi.aws.workspaces.ConnectionAliasArgs;
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
/// var example = new ConnectionAlias("example", ConnectionAliasArgs.builder()
/// .connectionString("testdomain.test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:workspaces:ConnectionAlias
/// properties:
/// connectionString: testdomain.test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Connection Alias using the connection alias ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/connectionAlias:ConnectionAlias example rft-8012925589
/// ```
class ConnectionAlias extends CustomResource {
  /// The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  late final Output<String> connectionString;

  /// The identifier of the Amazon Web Services account that owns the connection alias.
  late final Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current state of the connection alias.
  late final Output<String> state;

  /// A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ConnectionAliasTimeouts?> timeouts;

  ConnectionAlias(
    String name, {
    ConnectionAliasArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/connectionAlias:ConnectionAlias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionString = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<ConnectionAliasTimeouts?>();
  }
}
