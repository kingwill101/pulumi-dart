import 'package:pulumi/pulumi.dart';
import 'get_resource_args.dart';
import 'get_resource_result.dart';

/// Use this data source to get the id of a Resource in API Gateway.
/// To fetch the Resource, you must provide the REST API id as well as the full path.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myRestApi = aws.apigateway.getRestApi({
/// name: "my-rest-api",
/// });
/// const myResource = myRestApi.then(myRestApi => aws.apigateway.getResource({
/// restApiId: myRestApi.id,
/// path: "/endpoint/path",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_rest_api = aws.apigateway.get_rest_api(name="my-rest-api")
/// my_resource = aws.apigateway.get_resource(rest_api_id=my_rest_api.id,
/// path="/endpoint/path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myRestApi = Aws.ApiGateway.GetRestApi.Invoke(new()
/// {
/// Name = "my-rest-api",
/// });
///
/// var myResource = Aws.ApiGateway.GetResource.Invoke(new()
/// {
/// RestApiId = myRestApi.Apply(getRestApiResult => getRestApiResult.Id),
/// Path = "/endpoint/path",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myRestApi, err := apigateway.LookupRestApi(ctx, &apigateway.LookupRestApiArgs{
/// Name: "my-rest-api",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.LookupResource(ctx, &apigateway.LookupResourceArgs{
/// RestApiId: myRestApi.Id,
/// Path:      "/endpoint/path",
/// }, nil)
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
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetRestApiArgs;
/// import com.pulumi.aws.apigateway.inputs.GetResourceArgs;
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
/// final var myRestApi = ApigatewayFunctions.getRestApi(GetRestApiArgs.builder()
/// .name("my-rest-api")
/// .build());
///
/// final var myResource = ApigatewayFunctions.getResource(GetResourceArgs.builder()
/// .restApiId(myRestApi.id())
/// .path("/endpoint/path")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myRestApi:
/// fn::invoke:
/// function: aws:apigateway:getRestApi
/// arguments:
/// name: my-rest-api
/// myResource:
/// fn::invoke:
/// function: aws:apigateway:getResource
/// arguments:
/// restApiId: ${myRestApi.id}
/// path: /endpoint/path
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResourceResult> getResource(
  GetResourceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getResource:getResource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceResult.fromMap(result);
}
