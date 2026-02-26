import 'package:pulumi/pulumi.dart';
import 'api_key_args2.dart';

/// Provides an AppSync API Key.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
/// authenticationType: "API_KEY",
/// name: "example",
/// });
/// const exampleApiKey = new aws.appsync.ApiKey("example", {
/// apiId: example.id,
/// expires: "2018-05-03T04:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
/// authentication_type="API_KEY",
/// name="example")
/// example_api_key = aws.appsync.ApiKey("example",
/// api_id=example.id,
/// expires="2018-05-03T04:00:00Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppSync.GraphQLApi("example", new()
/// {
/// AuthenticationType = "API_KEY",
/// Name = "example",
/// });
///
/// var exampleApiKey = new Aws.AppSync.ApiKey("example", new()
/// {
/// ApiId = example.Id,
/// Expires = "2018-05-03T04:00:00Z",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// AuthenticationType: pulumi.String("API_KEY"),
/// Name:               pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appsync.NewApiKey(ctx, "example", &appsync.ApiKeyArgs{
/// ApiId:   example.ID(),
/// Expires: pulumi.String("2018-05-03T04:00:00Z"),
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
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.ApiKey;
/// import com.pulumi.aws.appsync.ApiKeyArgs;
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
/// var example = new GraphQLApi("example", GraphQLApiArgs.builder()
/// .authenticationType("API_KEY")
/// .name("example")
/// .build());
///
/// var exampleApiKey = new ApiKey("exampleApiKey", ApiKeyArgs.builder()
/// .apiId(example.id())
/// .expires("2018-05-03T04:00:00Z")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appsync:GraphQLApi
/// properties:
/// authenticationType: API_KEY
/// name: example
/// exampleApiKey:
/// type: aws:appsync:ApiKey
/// name: example
/// properties:
/// apiId: ${example.id}
/// expires: 2018-05-03T04:00:00Z
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appsync.ApiKey`" pulumi-lang-dotnet="`aws.appsync.ApiKey`" pulumi-lang-go="`appsync.ApiKey`" pulumi-lang-python="`appsync.ApiKey`" pulumi-lang-yaml="`aws.appsync.ApiKey`" pulumi-lang-java="`aws.appsync.ApiKey`">`aws.appsync.ApiKey`</span> using the AppSync API ID and key separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/apiKey:ApiKey example xxxxx:yyyyy
/// ```
class ApiKey2 extends CustomResource {
  /// ID of the associated AppSync API
  late final Output<String> apiId;
  late final Output<String> apiKeyId;

  /// API key description. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  late final Output<String?> expires;

  /// API key
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ApiKey2(
    String name, {
    ApiKeyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/apiKey:ApiKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = Output.createUnknown<String>();
    this.apiKeyId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.expires = Output.createUnknown<String?>();
    this.key = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
