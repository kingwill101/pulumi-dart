import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_response_args.dart';
import 'method_response_state.dart';

/// Provides an HTTP Method Response for an API Gateway Resource. More information about API Gateway method responses can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-settings-method-response.html).
///
/// ## Example Usage
///
/// ### Basic Response
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDemoAPI = new aws.apigateway.RestApi("MyDemoAPI", {
///     name: "MyDemoAPI",
///     description: "This is my API for demonstration purposes",
/// });
/// const myDemoResource = new aws.apigateway.Resource("MyDemoResource", {
///     restApi: myDemoAPI.id,
///     parentId: myDemoAPI.rootResourceId,
///     pathPart: "mydemoresource",
/// });
/// const myDemoMethod = new aws.apigateway.Method("MyDemoMethod", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: "GET",
///     authorization: "NONE",
/// });
/// const myDemoIntegration = new aws.apigateway.Integration("MyDemoIntegration", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: myDemoMethod.httpMethod,
///     type: "MOCK",
/// });
/// const response200 = new aws.apigateway.MethodResponse("response_200", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: myDemoMethod.httpMethod,
///     statusCode: "200",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_demo_api = aws.apigateway.RestApi("MyDemoAPI",
///     name="MyDemoAPI",
///     description="This is my API for demonstration purposes")
/// my_demo_resource = aws.apigateway.Resource("MyDemoResource",
///     rest_api=my_demo_api.id,
///     parent_id=my_demo_api.root_resource_id,
///     path_part="mydemoresource")
/// my_demo_method = aws.apigateway.Method("MyDemoMethod",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method="GET",
///     authorization="NONE")
/// my_demo_integration = aws.apigateway.Integration("MyDemoIntegration",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method=my_demo_method.http_method,
///     type="MOCK")
/// response200 = aws.apigateway.MethodResponse("response_200",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method=my_demo_method.http_method,
///     status_code="200")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDemoAPI = new Aws.ApiGateway.RestApi("MyDemoAPI", new()
///     {
///         Name = "MyDemoAPI",
///         Description = "This is my API for demonstration purposes",
///     });
///
///     var myDemoResource = new Aws.ApiGateway.Resource("MyDemoResource", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ParentId = myDemoAPI.RootResourceId,
///         PathPart = "mydemoresource",
///     });
///
///     var myDemoMethod = new Aws.ApiGateway.Method("MyDemoMethod", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = "GET",
///         Authorization = "NONE",
///     });
///
///     var myDemoIntegration = new Aws.ApiGateway.Integration("MyDemoIntegration", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = myDemoMethod.HttpMethod,
///         Type = "MOCK",
///     });
///
///     var response200 = new Aws.ApiGateway.MethodResponse("response_200", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = myDemoMethod.HttpMethod,
///         StatusCode = "200",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myDemoAPI, err := apigateway.NewRestApi(ctx, "MyDemoAPI", &apigateway.RestApiArgs{
/// 			Name:        pulumi.String("MyDemoAPI"),
/// 			Description: pulumi.String("This is my API for demonstration purposes"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDemoResource, err := apigateway.NewResource(ctx, "MyDemoResource", &apigateway.ResourceArgs{
/// 			RestApi:  myDemoAPI.ID(),
/// 			ParentId: myDemoAPI.RootResourceId,
/// 			PathPart: pulumi.String("mydemoresource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDemoMethod, err := apigateway.NewMethod(ctx, "MyDemoMethod", &apigateway.MethodArgs{
/// 			RestApi:       myDemoAPI.ID(),
/// 			ResourceId:    myDemoResource.ID(),
/// 			HttpMethod:    pulumi.String("GET"),
/// 			Authorization: pulumi.String("NONE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewIntegration(ctx, "MyDemoIntegration", &apigateway.IntegrationArgs{
/// 			RestApi:    myDemoAPI.ID(),
/// 			ResourceId: myDemoResource.ID(),
/// 			HttpMethod: myDemoMethod.HttpMethod,
/// 			Type:       pulumi.String("MOCK"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewMethodResponse(ctx, "response_200", &apigateway.MethodResponseArgs{
/// 			RestApi:    myDemoAPI.ID(),
/// 			ResourceId: myDemoResource.ID(),
/// 			HttpMethod: myDemoMethod.HttpMethod,
/// 			StatusCode: pulumi.String("200"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
/// import com.pulumi.aws.apigateway.Method;
/// import com.pulumi.aws.apigateway.MethodArgs;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
/// import com.pulumi.aws.apigateway.MethodResponse;
/// import com.pulumi.aws.apigateway.MethodResponseArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var myDemoAPI = new RestApi("myDemoAPI", RestApiArgs.builder()
///             .name("MyDemoAPI")
///             .description("This is my API for demonstration purposes")
///             .build());
///
///         var myDemoResource = new Resource("myDemoResource", ResourceArgs.builder()
///             .restApi(myDemoAPI.id())
///             .parentId(myDemoAPI.rootResourceId())
///             .pathPart("mydemoresource")
///             .build());
///
///         var myDemoMethod = new Method("myDemoMethod", MethodArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod("GET")
///             .authorization("NONE")
///             .build());
///
///         var myDemoIntegration = new Integration("myDemoIntegration", IntegrationArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod(myDemoMethod.httpMethod())
///             .type("MOCK")
///             .build());
///
///         var response200 = new MethodResponse("response200", MethodResponseArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod(myDemoMethod.httpMethod())
///             .statusCode("200")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDemoAPI:
///     type: aws:apigateway:RestApi
///     name: MyDemoAPI
///     properties:
///       name: MyDemoAPI
///       description: This is my API for demonstration purposes
///   myDemoResource:
///     type: aws:apigateway:Resource
///     name: MyDemoResource
///     properties:
///       restApi: ${myDemoAPI.id}
///       parentId: ${myDemoAPI.rootResourceId}
///       pathPart: mydemoresource
///   myDemoMethod:
///     type: aws:apigateway:Method
///     name: MyDemoMethod
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: GET
///       authorization: NONE
///   myDemoIntegration:
///     type: aws:apigateway:Integration
///     name: MyDemoIntegration
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: ${myDemoMethod.httpMethod}
///       type: MOCK
///   response200:
///     type: aws:apigateway:MethodResponse
///     name: response_200
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: ${myDemoMethod.httpMethod}
///       statusCode: '200'
/// ```
///
///
/// ### Response with Custom Header and Model
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDemoAPI = new aws.apigateway.RestApi("MyDemoAPI", {
///     name: "MyDemoAPI",
///     description: "This is my API for demonstration purposes",
/// });
/// const myDemoResource = new aws.apigateway.Resource("MyDemoResource", {
///     restApi: myDemoAPI.id,
///     parentId: myDemoAPI.rootResourceId,
///     pathPart: "mydemoresource",
/// });
/// const myDemoMethod = new aws.apigateway.Method("MyDemoMethod", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: "GET",
///     authorization: "NONE",
/// });
/// const myDemoIntegration = new aws.apigateway.Integration("MyDemoIntegration", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: myDemoMethod.httpMethod,
///     type: "MOCK",
/// });
/// const myDemoResponseModel = new aws.apigateway.Model("MyDemoResponseModel", {
///     restApi: myDemoAPI.id,
///     name: "MyDemoResponseModel",
///     description: "API response for MyDemoMethod",
///     contentType: "application/json",
///     schema: JSON.stringify({
///         $schema: "http://json-schema.org/draft-04/schema#",
///         title: "MyDemoResponse",
///         type: "object",
///         properties: {
///             Message: {
///                 type: "string",
///             },
///         },
///     }),
/// });
/// const response200 = new aws.apigateway.MethodResponse("response_200", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: myDemoMethod.httpMethod,
///     statusCode: "200",
///     responseModels: {
///         "application/json": "MyDemoResponseModel",
///     },
///     responseParameters: {
///         "method.response.header.Content-Type": false,
///         "method-response-header.X-My-Demo-Header": false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// my_demo_api = aws.apigateway.RestApi("MyDemoAPI",
///     name="MyDemoAPI",
///     description="This is my API for demonstration purposes")
/// my_demo_resource = aws.apigateway.Resource("MyDemoResource",
///     rest_api=my_demo_api.id,
///     parent_id=my_demo_api.root_resource_id,
///     path_part="mydemoresource")
/// my_demo_method = aws.apigateway.Method("MyDemoMethod",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method="GET",
///     authorization="NONE")
/// my_demo_integration = aws.apigateway.Integration("MyDemoIntegration",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method=my_demo_method.http_method,
///     type="MOCK")
/// my_demo_response_model = aws.apigateway.Model("MyDemoResponseModel",
///     rest_api=my_demo_api.id,
///     name="MyDemoResponseModel",
///     description="API response for MyDemoMethod",
///     content_type="application/json",
///     schema=json.dumps({
///         "$schema": "http://json-schema.org/draft-04/schema#",
///         "title": "MyDemoResponse",
///         "type": "object",
///         "properties": {
///             "Message": {
///                 "type": "string",
///             },
///         },
///     }))
/// response200 = aws.apigateway.MethodResponse("response_200",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method=my_demo_method.http_method,
///     status_code="200",
///     response_models={
///         "application/json": "MyDemoResponseModel",
///     },
///     response_parameters={
///         "method.response.header.Content-Type": False,
///         "method-response-header.X-My-Demo-Header": False,
///     })
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
///     var myDemoAPI = new Aws.ApiGateway.RestApi("MyDemoAPI", new()
///     {
///         Name = "MyDemoAPI",
///         Description = "This is my API for demonstration purposes",
///     });
///
///     var myDemoResource = new Aws.ApiGateway.Resource("MyDemoResource", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ParentId = myDemoAPI.RootResourceId,
///         PathPart = "mydemoresource",
///     });
///
///     var myDemoMethod = new Aws.ApiGateway.Method("MyDemoMethod", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = "GET",
///         Authorization = "NONE",
///     });
///
///     var myDemoIntegration = new Aws.ApiGateway.Integration("MyDemoIntegration", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = myDemoMethod.HttpMethod,
///         Type = "MOCK",
///     });
///
///     var myDemoResponseModel = new Aws.ApiGateway.Model("MyDemoResponseModel", new()
///     {
///         RestApi = myDemoAPI.Id,
///         Name = "MyDemoResponseModel",
///         Description = "API response for MyDemoMethod",
///         ContentType = "application/json",
///         Schema = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["$schema"] = "http://json-schema.org/draft-04/schema#",
///             ["title"] = "MyDemoResponse",
///             ["type"] = "object",
///             ["properties"] = new Dictionary<string, object?>
///             {
///                 ["Message"] = new Dictionary<string, object?>
///                 {
///                     ["type"] = "string",
///                 },
///             },
///         }),
///     });
///
///     var response200 = new Aws.ApiGateway.MethodResponse("response_200", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = myDemoMethod.HttpMethod,
///         StatusCode = "200",
///         ResponseModels =
///         {
///             { "application/json", "MyDemoResponseModel" },
///         },
///         ResponseParameters =
///         {
///             { "method.response.header.Content-Type", false },
///             { "method-response-header.X-My-Demo-Header", false },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myDemoAPI, err := apigateway.NewRestApi(ctx, "MyDemoAPI", &apigateway.RestApiArgs{
/// 			Name:        pulumi.String("MyDemoAPI"),
/// 			Description: pulumi.String("This is my API for demonstration purposes"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDemoResource, err := apigateway.NewResource(ctx, "MyDemoResource", &apigateway.ResourceArgs{
/// 			RestApi:  myDemoAPI.ID(),
/// 			ParentId: myDemoAPI.RootResourceId,
/// 			PathPart: pulumi.String("mydemoresource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDemoMethod, err := apigateway.NewMethod(ctx, "MyDemoMethod", &apigateway.MethodArgs{
/// 			RestApi:       myDemoAPI.ID(),
/// 			ResourceId:    myDemoResource.ID(),
/// 			HttpMethod:    pulumi.String("GET"),
/// 			Authorization: pulumi.String("NONE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewIntegration(ctx, "MyDemoIntegration", &apigateway.IntegrationArgs{
/// 			RestApi:    myDemoAPI.ID(),
/// 			ResourceId: myDemoResource.ID(),
/// 			HttpMethod: myDemoMethod.HttpMethod,
/// 			Type:       pulumi.String("MOCK"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"$schema": "http://json-schema.org/draft-04/schema#",
/// 			"title":   "MyDemoResponse",
/// 			"type":    "object",
/// 			"properties": map[string]interface{}{
/// 				"Message": map[string]interface{}{
/// 					"type": "string",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = apigateway.NewModel(ctx, "MyDemoResponseModel", &apigateway.ModelArgs{
/// 			RestApi:     myDemoAPI.ID(),
/// 			Name:        pulumi.String("MyDemoResponseModel"),
/// 			Description: pulumi.String("API response for MyDemoMethod"),
/// 			ContentType: pulumi.String("application/json"),
/// 			Schema:      pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewMethodResponse(ctx, "response_200", &apigateway.MethodResponseArgs{
/// 			RestApi:    myDemoAPI.ID(),
/// 			ResourceId: myDemoResource.ID(),
/// 			HttpMethod: myDemoMethod.HttpMethod,
/// 			StatusCode: pulumi.String("200"),
/// 			ResponseModels: pulumi.StringMap{
/// 				"application/json": pulumi.String("MyDemoResponseModel"),
/// 			},
/// 			ResponseParameters: pulumi.BoolMap{
/// 				"method.response.header.Content-Type":     pulumi.Bool(false),
/// 				"method-response-header.X-My-Demo-Header": pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
/// import com.pulumi.aws.apigateway.Method;
/// import com.pulumi.aws.apigateway.MethodArgs;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
/// import com.pulumi.aws.apigateway.Model;
/// import com.pulumi.aws.apigateway.ModelArgs;
/// import com.pulumi.aws.apigateway.MethodResponse;
/// import com.pulumi.aws.apigateway.MethodResponseArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var myDemoAPI = new RestApi("myDemoAPI", RestApiArgs.builder()
///             .name("MyDemoAPI")
///             .description("This is my API for demonstration purposes")
///             .build());
///
///         var myDemoResource = new Resource("myDemoResource", ResourceArgs.builder()
///             .restApi(myDemoAPI.id())
///             .parentId(myDemoAPI.rootResourceId())
///             .pathPart("mydemoresource")
///             .build());
///
///         var myDemoMethod = new Method("myDemoMethod", MethodArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod("GET")
///             .authorization("NONE")
///             .build());
///
///         var myDemoIntegration = new Integration("myDemoIntegration", IntegrationArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod(myDemoMethod.httpMethod())
///             .type("MOCK")
///             .build());
///
///         var myDemoResponseModel = new Model("myDemoResponseModel", ModelArgs.builder()
///             .restApi(myDemoAPI.id())
///             .name("MyDemoResponseModel")
///             .description("API response for MyDemoMethod")
///             .contentType("application/json")
///             .schema(serializeJson(
///                 jsonObject(
///                     jsonProperty("$schema", "http://json-schema.org/draft-04/schema#"),
///                     jsonProperty("title", "MyDemoResponse"),
///                     jsonProperty("type", "object"),
///                     jsonProperty("properties", jsonObject(
///                         jsonProperty("Message", jsonObject(
///                             jsonProperty("type", "string")
///                         ))
///                     ))
///                 )))
///             .build());
///
///         var response200 = new MethodResponse("response200", MethodResponseArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod(myDemoMethod.httpMethod())
///             .statusCode("200")
///             .responseModels(Map.of("application/json", "MyDemoResponseModel"))
///             .responseParameters(Map.ofEntries(
///                 Map.entry("method.response.header.Content-Type", false),
///                 Map.entry("method-response-header.X-My-Demo-Header", false)
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDemoAPI:
///     type: aws:apigateway:RestApi
///     name: MyDemoAPI
///     properties:
///       name: MyDemoAPI
///       description: This is my API for demonstration purposes
///   myDemoResource:
///     type: aws:apigateway:Resource
///     name: MyDemoResource
///     properties:
///       restApi: ${myDemoAPI.id}
///       parentId: ${myDemoAPI.rootResourceId}
///       pathPart: mydemoresource
///   myDemoMethod:
///     type: aws:apigateway:Method
///     name: MyDemoMethod
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: GET
///       authorization: NONE
///   myDemoIntegration:
///     type: aws:apigateway:Integration
///     name: MyDemoIntegration
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: ${myDemoMethod.httpMethod}
///       type: MOCK
///   myDemoResponseModel:
///     type: aws:apigateway:Model
///     name: MyDemoResponseModel
///     properties:
///       restApi: ${myDemoAPI.id}
///       name: MyDemoResponseModel
///       description: API response for MyDemoMethod
///       contentType: application/json
///       schema:
///         fn::toJSON:
///           $schema: http://json-schema.org/draft-04/schema#
///           title: MyDemoResponse
///           type: object
///           properties:
///             Message:
///               type: string
///   response200:
///     type: aws:apigateway:MethodResponse
///     name: response_200
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: ${myDemoMethod.httpMethod}
///       statusCode: '200'
///       responseModels:
///         application/json: MyDemoResponseModel
///       responseParameters:
///         method.response.header.Content-Type: false
///         method-response-header.X-My-Demo-Header: false
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.MethodResponse` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD/STATUS-CODE`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/methodResponse:MethodResponse example 12345abcde/67890fghij/GET/200
/// ```
class MethodResponse extends pulumi.CustomResource {
  /// The HTTP verb of the method resource (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  late final pulumi.Output<String> httpMethod;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Resource identifier for the method resource.
  late final pulumi.Output<String> resourceId;
  /// A map specifying the model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  late final pulumi.Output<Map<String, String>?> responseModels;
  /// A map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a boolean flag indicating whether the method response parameter is required. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name.
  ///
  /// The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., '`application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  late final pulumi.Output<Map<String, bool>?> responseParameters;
  /// The string identifier of the associated REST API.
  late final pulumi.Output<String> restApi;
  /// The method response's status code.
  late final pulumi.Output<String> statusCode;

  /// Creates a new [MethodResponse].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MethodResponse]. {@macro pulumi_apigateway_method_response_method_response_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MethodResponse(
    String name, {
    MethodResponseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/methodResponse:MethodResponse',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.httpMethod = registerOutput<String>('httpMethod');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.responseModels = registerOutput<Map<String, String>?>('responseModels');
    this.responseParameters = registerOutput<Map<String, bool>?>('responseParameters');
    this.restApi = registerOutput<String>('restApi');
    this.statusCode = registerOutput<String>('statusCode');
  }

  /// Gets an existing [MethodResponse] resource's state with the given [name] and [id].
  static MethodResponse get(
    String name,
    pulumi.Input<String> id, {
    MethodResponseState? state,
  }) {
    return MethodResponse._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MethodResponse._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/methodResponse:MethodResponse',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.httpMethod = registerOutput<String>('httpMethod');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.responseModels = registerOutput<Map<String, String>?>('responseModels');
    this.responseParameters = registerOutput<Map<String, bool>?>('responseParameters');
    this.restApi = registerOutput<String>('restApi');
    this.statusCode = registerOutput<String>('statusCode');
  }
}
