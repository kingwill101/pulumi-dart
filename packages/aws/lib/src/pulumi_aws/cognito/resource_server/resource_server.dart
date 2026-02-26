import 'package:pulumi/pulumi.dart';
import '../resource_server_scope/resource_server_scope.dart';
import 'resource_server_args.dart';

/// Provides a Cognito Resource Server.
///
/// ## Example Usage
///
/// ### Create a basic resource server
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pool = new aws.cognito.UserPool("pool", {name: "pool"});
/// const resource = new aws.cognito.ResourceServer("resource", {
/// identifier: "https://example.com",
/// name: "example",
/// userPoolId: pool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// pool = aws.cognito.UserPool("pool", name="pool")
/// resource = aws.cognito.ResourceServer("resource",
/// identifier="https://example.com",
/// name="example",
/// user_pool_id=pool.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Aws.Cognito.UserPool("pool", new()
/// {
/// Name = "pool",
/// });
///
/// var resource = new Aws.Cognito.ResourceServer("resource", new()
/// {
/// Identifier = "https://example.com",
/// Name = "example",
/// UserPoolId = pool.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// Name: pulumi.String("pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewResourceServer(ctx, "resource", &cognito.ResourceServerArgs{
/// Identifier: pulumi.String("https://example.com"),
/// Name:       pulumi.String("example"),
/// UserPoolId: pool.ID(),
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.ResourceServer;
/// import com.pulumi.aws.cognito.ResourceServerArgs;
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
/// var pool = new UserPool("pool", UserPoolArgs.builder()
/// .name("pool")
/// .build());
///
/// var resource = new ResourceServer("resource", ResourceServerArgs.builder()
/// .identifier("https://example.com")
/// .name("example")
/// .userPoolId(pool.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: aws:cognito:UserPool
/// properties:
/// name: pool
/// resource:
/// type: aws:cognito:ResourceServer
/// properties:
/// identifier: https://example.com
/// name: example
/// userPoolId: ${pool.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create a resource server with sample-scope
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pool = new aws.cognito.UserPool("pool", {name: "pool"});
/// const resource = new aws.cognito.ResourceServer("resource", {
/// identifier: "https://example.com",
/// name: "example",
/// scopes: [{
/// scopeName: "sample-scope",
/// scopeDescription: "a Sample Scope Description",
/// }],
/// userPoolId: pool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// pool = aws.cognito.UserPool("pool", name="pool")
/// resource = aws.cognito.ResourceServer("resource",
/// identifier="https://example.com",
/// name="example",
/// scopes=[{
/// "scope_name": "sample-scope",
/// "scope_description": "a Sample Scope Description",
/// }],
/// user_pool_id=pool.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Aws.Cognito.UserPool("pool", new()
/// {
/// Name = "pool",
/// });
///
/// var resource = new Aws.Cognito.ResourceServer("resource", new()
/// {
/// Identifier = "https://example.com",
/// Name = "example",
/// Scopes = new[]
/// {
/// new Aws.Cognito.Inputs.ResourceServerScopeArgs
/// {
/// ScopeName = "sample-scope",
/// ScopeDescription = "a Sample Scope Description",
/// },
/// },
/// UserPoolId = pool.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// Name: pulumi.String("pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewResourceServer(ctx, "resource", &cognito.ResourceServerArgs{
/// Identifier: pulumi.String("https://example.com"),
/// Name:       pulumi.String("example"),
/// Scopes: cognito.ResourceServerScopeArray{
/// &cognito.ResourceServerScopeArgs{
/// ScopeName:        pulumi.String("sample-scope"),
/// ScopeDescription: pulumi.String("a Sample Scope Description"),
/// },
/// },
/// UserPoolId: pool.ID(),
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.ResourceServer;
/// import com.pulumi.aws.cognito.ResourceServerArgs;
/// import com.pulumi.aws.cognito.inputs.ResourceServerScopeArgs;
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
/// var pool = new UserPool("pool", UserPoolArgs.builder()
/// .name("pool")
/// .build());
///
/// var resource = new ResourceServer("resource", ResourceServerArgs.builder()
/// .identifier("https://example.com")
/// .name("example")
/// .scopes(ResourceServerScopeArgs.builder()
/// .scopeName("sample-scope")
/// .scopeDescription("a Sample Scope Description")
/// .build())
/// .userPoolId(pool.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: aws:cognito:UserPool
/// properties:
/// name: pool
/// resource:
/// type: aws:cognito:ResourceServer
/// properties:
/// identifier: https://example.com
/// name: example
/// scopes:
/// - scopeName: sample-scope
/// scopeDescription: a Sample Scope Description
/// userPoolId: ${pool.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.cognito.ResourceServer`" pulumi-lang-dotnet="`aws.cognito.ResourceServer`" pulumi-lang-go="`cognito.ResourceServer`" pulumi-lang-python="`cognito.ResourceServer`" pulumi-lang-yaml="`aws.cognito.ResourceServer`" pulumi-lang-java="`aws.cognito.ResourceServer`">`aws.cognito.ResourceServer`</span> using their User Pool ID and Identifier. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/resourceServer:ResourceServer example "us-west-2_abc123|https://example.com"
/// ```
class ResourceServer extends CustomResource {
  /// An identifier for the resource server.
  late final Output<String> identifier;

  /// A name for the resource server.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of all scopes configured for this resource server in the format identifier/scope_name.
  late final Output<List<String>> scopeIdentifiers;

  /// A list of Authorization Scope.
  late final Output<List<ResourceServerScope>?> scopes;

  /// User pool the client belongs to.
  late final Output<String> userPoolId;

  ResourceServer(
    String name, {
    ResourceServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/resourceServer:ResourceServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identifier = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.scopeIdentifiers = Output.createUnknown<List<String>>();
    this.scopes = Output.createUnknown<List<ResourceServerScope>?>();
    this.userPoolId = Output.createUnknown<String>();
  }
}
