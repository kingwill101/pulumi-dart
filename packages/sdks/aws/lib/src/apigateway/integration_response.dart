import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_response_args.dart';
import 'integration_response_state.dart';

/// Provides an HTTP Method Integration Response for an API Gateway Resource.
///
/// &gt; **Note:** Depends on having `aws.apigateway.Integration` inside your rest api. To ensure this
/// you might need to add an explicit `depends_on` for clean runs.
///
/// ## Example Usage
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
/// const myDemoIntegrationResponse = new aws.apigateway.IntegrationResponse("MyDemoIntegrationResponse", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: myDemoMethod.httpMethod,
///     statusCode: response200.statusCode,
///     responseTemplates: {
///         "application/xml": `#set(inputRoot = input.path(''))
/// <?xml version=\\"1.0\\" encoding=\\"UTF-8\\"?>
/// <message>
///     inputRoot.body
/// </message>
/// `,
///     },
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
/// my_demo_integration_response = aws.apigateway.IntegrationResponse("MyDemoIntegrationResponse",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method=my_demo_method.http_method,
///     status_code=response200.status_code,
///     response_templates={
///         "application/xml": """#set($inputRoot = $input.path('$'))
/// <?xml version=\"1.0\" encoding=\"UTF-8\"?>
/// <message>
///     $inputRoot.body
/// </message>
/// """,
///     })
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
///     var myDemoIntegrationResponse = new Aws.ApiGateway.IntegrationResponse("MyDemoIntegrationResponse", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = myDemoMethod.HttpMethod,
///         StatusCode = response200.StatusCode,
///         ResponseTemplates =
///         {
///             { "application/xml", @"#set($inputRoot = $input.path('$'))
/// <?xml version=\""1.0\"" encoding=\""UTF-8\""?>
/// <message>
///     $inputRoot.body
/// </message>
/// " },
///         },
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
/// 		response200, err := apigateway.NewMethodResponse(ctx, "response_200", &apigateway.MethodResponseArgs{
/// 			RestApi:    myDemoAPI.ID(),
/// 			ResourceId: myDemoResource.ID(),
/// 			HttpMethod: myDemoMethod.HttpMethod,
/// 			StatusCode: pulumi.String("200"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewIntegrationResponse(ctx, "MyDemoIntegrationResponse", &apigateway.IntegrationResponseArgs{
/// 			RestApi:    myDemoAPI.ID(),
/// 			ResourceId: myDemoResource.ID(),
/// 			HttpMethod: myDemoMethod.HttpMethod,
/// 			StatusCode: response200.StatusCode,
/// 			ResponseTemplates: pulumi.StringMap{
/// 				"application/xml": pulumi.String(`#set($inputRoot = $input.path('$'))
/// <?xml version=\"1.0\" encoding=\"UTF-8\"?>
/// <message>
///     $inputRoot.body
/// </message>
/// `),
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
/// import com.pulumi.aws.apigateway.MethodResponse;
/// import com.pulumi.aws.apigateway.MethodResponseArgs;
/// import com.pulumi.aws.apigateway.IntegrationResponse;
/// import com.pulumi.aws.apigateway.IntegrationResponseArgs;
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
///         var myDemoIntegrationResponse = new IntegrationResponse("myDemoIntegrationResponse", IntegrationResponseArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod(myDemoMethod.httpMethod())
///             .statusCode(response200.statusCode())
///             .responseTemplates(Map.of("application/xml", """
/// #set($inputRoot = $input.path('$'))
/// <?xml version=\"1.0\" encoding=\"UTF-8\"?>
/// <message>
///     $inputRoot.body
/// </message>
///             """))
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
///   myDemoIntegrationResponse:
///     type: aws:apigateway:IntegrationResponse
///     name: MyDemoIntegrationResponse
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: ${myDemoMethod.httpMethod}
///       statusCode: ${response200.statusCode}
///       responseTemplates:
///         application/xml: |
///           #set($inputRoot = $input.path('$'))
///           <?xml version=\"1.0\" encoding=\"UTF-8\"?>
///           <message>
///               $inputRoot.body
///           </message>
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.IntegrationResponse` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD/STATUS-CODE`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/integrationResponse:IntegrationResponse example 12345abcde/67890fghij/GET/200
/// ```
class IntegrationResponse extends pulumi.CustomResource {
  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  late final pulumi.Output<String?> contentHandling;
  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  late final pulumi.Output<String> httpMethod;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// API resource ID.
  late final pulumi.Output<String> resourceId;
  /// Map of response parameters that can be read from the backend response. For example: `response_parameters = { "method.response.header.X-Some-Header" = "integration.response.header.X-Some-Other-Header" }`.
  late final pulumi.Output<Map<String, String>?> responseParameters;
  /// Map of templates used to transform the integration response body.
  late final pulumi.Output<Map<String, String>?> responseTemplates;
  /// ID of the associated REST API.
  late final pulumi.Output<String> restApi;
  /// Regular expression pattern used to choose an integration response based on the response from the backend. Omit configuring this to make the integration the default one. If the backend is an `AWS` Lambda function, the AWS Lambda function error header is matched. For all other `HTTP` and `AWS` backends, the HTTP status code is matched.
  late final pulumi.Output<String?> selectionPattern;
  /// HTTP status code.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> statusCode;

  /// Creates a new [IntegrationResponse].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationResponse]. {@macro pulumi_apigateway_integration_response_integration_response_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationResponse(
    String name, {
    IntegrationResponseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/integrationResponse:IntegrationResponse',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contentHandling = registerOutput<String?>('contentHandling');
    httpMethod = registerOutput<String>('httpMethod');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    responseParameters = registerOutput<Map<String, String>?>('responseParameters');
    responseTemplates = registerOutput<Map<String, String>?>('responseTemplates');
    restApi = registerOutput<String>('restApi');
    selectionPattern = registerOutput<String?>('selectionPattern');
    statusCode = registerOutput<String>('statusCode');
  }

  /// Gets an existing [IntegrationResponse] resource's state with the given [name] and [id].
  static IntegrationResponse get(
    String name,
    pulumi.Input<String> id, {
    IntegrationResponseState? state,
  }) {
    return IntegrationResponse._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationResponse._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/integrationResponse:IntegrationResponse',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contentHandling = registerOutput<String?>('contentHandling');
    httpMethod = registerOutput<String>('httpMethod');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    responseParameters = registerOutput<Map<String, String>?>('responseParameters');
    responseTemplates = registerOutput<Map<String, String>?>('responseTemplates');
    restApi = registerOutput<String>('restApi');
    selectionPattern = registerOutput<String?>('selectionPattern');
    statusCode = registerOutput<String>('statusCode');
  }
}
