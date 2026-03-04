import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_args.dart';
import 'method_state.dart';

/// Provides a HTTP Method for an API Gateway Resource.
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
/// 		_, err = apigateway.NewMethod(ctx, "MyDemoMethod", &apigateway.MethodArgs{
/// 			RestApi:       myDemoAPI.ID(),
/// 			ResourceId:    myDemoResource.ID(),
/// 			HttpMethod:    pulumi.String("GET"),
/// 			Authorization: pulumi.String("NONE"),
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
/// ```
///
///
/// ## Usage with Cognito User Pool Authorizer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const cognitoUserPoolName = config.requireObject<any>("cognitoUserPoolName");
/// const _this = aws.cognito.getUserPools({
///     name: cognitoUserPoolName,
/// });
/// const thisRestApi = new aws.apigateway.RestApi("this", {name: "with-authorizer"});
/// const thisResource = new aws.apigateway.Resource("this", {
///     restApi: thisRestApi.id,
///     parentId: thisRestApi.rootResourceId,
///     pathPart: "{proxy+}",
/// });
/// const thisAuthorizer = new aws.apigateway.Authorizer("this", {
///     name: "CognitoUserPoolAuthorizer",
///     type: "COGNITO_USER_POOLS",
///     restApi: thisRestApi.id,
///     providerArns: _this.then(_this => _this.arns),
/// });
/// const any = new aws.apigateway.Method("any", {
///     restApi: thisRestApi.id,
///     resourceId: thisResource.id,
///     httpMethod: "ANY",
///     authorization: "COGNITO_USER_POOLS",
///     authorizerId: thisAuthorizer.id,
///     requestParameters: {
///         "method.request.path.proxy": true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// cognito_user_pool_name = config.require_object("cognitoUserPoolName")
/// this = aws.cognito.get_user_pools(name=cognito_user_pool_name)
/// this_rest_api = aws.apigateway.RestApi("this", name="with-authorizer")
/// this_resource = aws.apigateway.Resource("this",
///     rest_api=this_rest_api.id,
///     parent_id=this_rest_api.root_resource_id,
///     path_part="{proxy+}")
/// this_authorizer = aws.apigateway.Authorizer("this",
///     name="CognitoUserPoolAuthorizer",
///     type="COGNITO_USER_POOLS",
///     rest_api=this_rest_api.id,
///     provider_arns=this.arns)
/// any = aws.apigateway.Method("any",
///     rest_api=this_rest_api.id,
///     resource_id=this_resource.id,
///     http_method="ANY",
///     authorization="COGNITO_USER_POOLS",
///     authorizer_id=this_authorizer.id,
///     request_parameters={
///         "method.request.path.proxy": True,
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
///     var config = new Config();
///     var cognitoUserPoolName = config.RequireObject<dynamic>("cognitoUserPoolName");
///     var @this = Aws.Cognito.GetUserPools.Invoke(new()
///     {
///         Name = cognitoUserPoolName,
///     });
///
///     var thisRestApi = new Aws.ApiGateway.RestApi("this", new()
///     {
///         Name = "with-authorizer",
///     });
///
///     var thisResource = new Aws.ApiGateway.Resource("this", new()
///     {
///         RestApi = thisRestApi.Id,
///         ParentId = thisRestApi.RootResourceId,
///         PathPart = "{proxy+}",
///     });
///
///     var thisAuthorizer = new Aws.ApiGateway.Authorizer("this", new()
///     {
///         Name = "CognitoUserPoolAuthorizer",
///         Type = "COGNITO_USER_POOLS",
///         RestApi = thisRestApi.Id,
///         ProviderArns = @this.Apply(@this => @this.Apply(getUserPoolsResult => getUserPoolsResult.Arns)),
///     });
///
///     var any = new Aws.ApiGateway.Method("any", new()
///     {
///         RestApi = thisRestApi.Id,
///         ResourceId = thisResource.Id,
///         HttpMethod = "ANY",
///         Authorization = "COGNITO_USER_POOLS",
///         AuthorizerId = thisAuthorizer.Id,
///         RequestParameters =
///         {
///             { "method.request.path.proxy", true },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		cognitoUserPoolName := cfg.RequireObject("cognitoUserPoolName")
/// 		this, err := cognito.GetUserPools(ctx, &cognito.GetUserPoolsArgs{
/// 			Name: cognitoUserPoolName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		thisRestApi, err := apigateway.NewRestApi(ctx, "this", &apigateway.RestApiArgs{
/// 			Name: pulumi.String("with-authorizer"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		thisResource, err := apigateway.NewResource(ctx, "this", &apigateway.ResourceArgs{
/// 			RestApi:  thisRestApi.ID(),
/// 			ParentId: thisRestApi.RootResourceId,
/// 			PathPart: pulumi.String("{proxy+}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		thisAuthorizer, err := apigateway.NewAuthorizer(ctx, "this", &apigateway.AuthorizerArgs{
/// 			Name:         pulumi.String("CognitoUserPoolAuthorizer"),
/// 			Type:         pulumi.String("COGNITO_USER_POOLS"),
/// 			RestApi:      thisRestApi.ID(),
/// 			ProviderArns: interface{}(this.Arns),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewMethod(ctx, "any", &apigateway.MethodArgs{
/// 			RestApi:       thisRestApi.ID(),
/// 			ResourceId:    thisResource.ID(),
/// 			HttpMethod:    pulumi.String("ANY"),
/// 			Authorization: pulumi.String("COGNITO_USER_POOLS"),
/// 			AuthorizerId:  thisAuthorizer.ID(),
/// 			RequestParameters: pulumi.BoolMap{
/// 				"method.request.path.proxy": pulumi.Bool(true),
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserPoolsArgs;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
/// import com.pulumi.aws.apigateway.Authorizer;
/// import com.pulumi.aws.apigateway.AuthorizerArgs;
/// import com.pulumi.aws.apigateway.Method;
/// import com.pulumi.aws.apigateway.MethodArgs;
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
///         final var config = ctx.config();
///         final var cognitoUserPoolName = config.get("cognitoUserPoolName");
///         final var this = CognitoFunctions.getUserPools(GetUserPoolsArgs.builder()
///             .name(cognitoUserPoolName)
///             .build());
///
///         var thisRestApi = new RestApi("thisRestApi", RestApiArgs.builder()
///             .name("with-authorizer")
///             .build());
///
///         var thisResource = new Resource("thisResource", ResourceArgs.builder()
///             .restApi(thisRestApi.id())
///             .parentId(thisRestApi.rootResourceId())
///             .pathPart("{proxy+}")
///             .build());
///
///         var thisAuthorizer = new Authorizer("thisAuthorizer", AuthorizerArgs.builder()
///             .name("CognitoUserPoolAuthorizer")
///             .type("COGNITO_USER_POOLS")
///             .restApi(thisRestApi.id())
///             .providerArns(this_.arns())
///             .build());
///
///         var any = new Method("any", MethodArgs.builder()
///             .restApi(thisRestApi.id())
///             .resourceId(thisResource.id())
///             .httpMethod("ANY")
///             .authorization("COGNITO_USER_POOLS")
///             .authorizerId(thisAuthorizer.id())
///             .requestParameters(Map.of("method.request.path.proxy", true))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   cognitoUserPoolName:
///     type: dynamic
/// resources:
///   thisRestApi:
///     type: aws:apigateway:RestApi
///     name: this
///     properties:
///       name: with-authorizer
///   thisResource:
///     type: aws:apigateway:Resource
///     name: this
///     properties:
///       restApi: ${thisRestApi.id}
///       parentId: ${thisRestApi.rootResourceId}
///       pathPart: '{proxy+}'
///   thisAuthorizer:
///     type: aws:apigateway:Authorizer
///     name: this
///     properties:
///       name: CognitoUserPoolAuthorizer
///       type: COGNITO_USER_POOLS
///       restApi: ${thisRestApi.id}
///       providerArns: ${this.arns}
///   any:
///     type: aws:apigateway:Method
///     properties:
///       restApi: ${thisRestApi.id}
///       resourceId: ${thisResource.id}
///       httpMethod: ANY
///       authorization: COGNITO_USER_POOLS
///       authorizerId: ${thisAuthorizer.id}
///       requestParameters:
///         method.request.path.proxy: true
/// variables:
///   this:
///     fn::invoke:
///       function: aws:cognito:getUserPools
///       arguments:
///         name: ${cognitoUserPoolName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Method` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/method:Method example 12345abcde/67890fghij/GET
/// ```
class Method extends pulumi.CustomResource {
  /// Specify if the method requires an API key
  late final pulumi.Output<bool?> apiKeyRequired;

  /// Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)
  late final pulumi.Output<String> authorization;

  /// Authorization scopes used when the authorization is `COGNITO_USER_POOLS`
  late final pulumi.Output<List<String>?> authorizationScopes;

  /// Authorizer id to be used when the authorization is `CUSTOM` or `COGNITO_USER_POOLS`
  late final pulumi.Output<String?> authorizerId;

  /// HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)
  late final pulumi.Output<String> httpMethod;

  /// Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb.
  late final pulumi.Output<String?> operationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of the API models used for the request's content type
  /// where key is the content type (e.g., `application/json`)
  /// and value is either `Error`, `Empty` (built-in models) or `aws.apigateway.Model`'s `name`.
  late final pulumi.Output<Map<String, String>?> requestModels;

  /// Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (`true`) or optional (`false`).
  /// For example: `request_parameters = {"method.request.header.X-Some-Header" = true "method.request.querystring.some-query-param" = true}` would define that the header `X-Some-Header` and the query string `some-query-param` must be provided in the request.
  late final pulumi.Output<Map<String, bool>?> requestParameters;

  /// ID of a `aws.apigateway.RequestValidator`
  late final pulumi.Output<String?> requestValidatorId;

  /// API resource ID
  late final pulumi.Output<String> resourceId;

  /// ID of the associated REST API
  late final pulumi.Output<String> restApi;

  /// Creates a new [Method].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Method]. {@macro pulumi_apigateway_method_method_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Method(String name, {MethodArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:apigateway/method:Method',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiKeyRequired = registerOutput<bool?>('apiKeyRequired');
    authorization = registerOutput<String>('authorization');
    authorizationScopes = registerOutput<List<String>?>('authorizationScopes');
    authorizerId = registerOutput<String?>('authorizerId');
    httpMethod = registerOutput<String>('httpMethod');
    operationName = registerOutput<String?>('operationName');
    region = registerOutput<String>('region');
    requestModels = registerOutput<Map<String, String>?>('requestModels');
    requestParameters = registerOutput<Map<String, bool>?>('requestParameters');
    requestValidatorId = registerOutput<String?>('requestValidatorId');
    resourceId = registerOutput<String>('resourceId');
    restApi = registerOutput<String>('restApi');
  }

  /// Gets an existing [Method] resource's state with the given [name] and [id].
  static Method get(
    String name,
    pulumi.Input<String> id, {
    MethodState? state,
  }) {
    return Method._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Method._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apigateway/method:Method',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiKeyRequired = registerOutput<bool?>('apiKeyRequired');
    authorization = registerOutput<String>('authorization');
    authorizationScopes = registerOutput<List<String>?>('authorizationScopes');
    authorizerId = registerOutput<String?>('authorizerId');
    httpMethod = registerOutput<String>('httpMethod');
    operationName = registerOutput<String?>('operationName');
    region = registerOutput<String>('region');
    requestModels = registerOutput<Map<String, String>?>('requestModels');
    requestParameters = registerOutput<Map<String, bool>?>('requestParameters');
    requestValidatorId = registerOutput<String?>('requestValidatorId');
    resourceId = registerOutput<String>('resourceId');
    restApi = registerOutput<String>('restApi');
  }
}
