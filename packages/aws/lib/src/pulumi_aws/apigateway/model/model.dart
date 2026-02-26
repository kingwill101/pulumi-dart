import 'package:pulumi/pulumi.dart';
import 'model_args.dart';

/// Provides a Model for a REST API Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDemoAPI = new aws.apigateway.RestApi("MyDemoAPI", {
/// name: "MyDemoAPI",
/// description: "This is my API for demonstration purposes",
/// });
/// const myDemoModel = new aws.apigateway.Model("MyDemoModel", {
/// restApi: myDemoAPI.id,
/// name: "user",
/// description: "a JSON schema",
/// contentType: "application/json",
/// schema: JSON.stringify({
/// type: "object",
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// my_demo_api = aws.apigateway.RestApi("MyDemoAPI",
/// name="MyDemoAPI",
/// description="This is my API for demonstration purposes")
/// my_demo_model = aws.apigateway.Model("MyDemoModel",
/// rest_api=my_demo_api.id,
/// name="user",
/// description="a JSON schema",
/// content_type="application/json",
/// schema=json.dumps({
/// "type": "object",
/// }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myDemoAPI = new Aws.ApiGateway.RestApi("MyDemoAPI", new()
/// {
/// Name = "MyDemoAPI",
/// Description = "This is my API for demonstration purposes",
/// });
///
/// var myDemoModel = new Aws.ApiGateway.Model("MyDemoModel", new()
/// {
/// RestApi = myDemoAPI.Id,
/// Name = "user",
/// Description = "a JSON schema",
/// ContentType = "application/json",
/// Schema = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["type"] = "object",
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myDemoAPI, err := apigateway.NewRestApi(ctx, "MyDemoAPI", &apigateway.RestApiArgs{
/// Name:        pulumi.String("MyDemoAPI"),
/// Description: pulumi.String("This is my API for demonstration purposes"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "type": "object",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = apigateway.NewModel(ctx, "MyDemoModel", &apigateway.ModelArgs{
/// RestApi:     myDemoAPI.ID(),
/// Name:        pulumi.String("user"),
/// Description: pulumi.String("a JSON schema"),
/// ContentType: pulumi.String("application/json"),
/// Schema:      pulumi.String(json0),
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
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.Model;
/// import com.pulumi.aws.apigateway.ModelArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var myDemoAPI = new RestApi("myDemoAPI", RestApiArgs.builder()
/// .name("MyDemoAPI")
/// .description("This is my API for demonstration purposes")
/// .build());
///
/// var myDemoModel = new Model("myDemoModel", ModelArgs.builder()
/// .restApi(myDemoAPI.id())
/// .name("user")
/// .description("a JSON schema")
/// .contentType("application/json")
/// .schema(serializeJson(
/// jsonObject(
/// jsonProperty("type", "object")
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myDemoAPI:
/// type: aws:apigateway:RestApi
/// name: MyDemoAPI
/// properties:
/// name: MyDemoAPI
/// description: This is my API for demonstration purposes
/// myDemoModel:
/// type: aws:apigateway:Model
/// name: MyDemoModel
/// properties:
/// restApi: ${myDemoAPI.id}
/// name: user
/// description: a JSON schema
/// contentType: application/json
/// schema:
/// fn::toJSON:
/// type: object
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigateway.Model`" pulumi-lang-dotnet="`aws.apigateway.Model`" pulumi-lang-go="`apigateway.Model`" pulumi-lang-python="`apigateway.Model`" pulumi-lang-yaml="`aws.apigateway.Model`" pulumi-lang-java="`aws.apigateway.Model`">`aws.apigateway.Model`</span> using `REST-API-ID/NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/model:Model example 12345abcde/example
/// ```
class Model extends CustomResource {
  /// Content type of the model
  late final Output<String> contentType;

  /// Description of the model
  late final Output<String?> description;

  /// Name of the model
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated REST API
  late final Output<String> restApi;

  /// Schema of the model in a JSON form
  late final Output<String?> schema;

  Model(
    String name, {
    ModelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/model:Model',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.schema = registerOutput<String?>('schema');
  }
}
