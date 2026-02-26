import 'package:pulumi/pulumi.dart';
import 'get_rest_api_args.dart';
import 'get_rest_api_result.dart';

/// Use this data source to get the id and<span pulumi-lang-nodejs=" rootResourceId " pulumi-lang-dotnet=" RootResourceId " pulumi-lang-go=" rootResourceId " pulumi-lang-python=" root_resource_id " pulumi-lang-yaml=" rootResourceId " pulumi-lang-java=" rootResourceId "> root_resource_id </span>of a REST API in
/// API Gateway. To fetch the REST API you must provide a name to match against.
/// As there is no unique name constraint on REST APIs this data source will
/// error if there is more than one match.
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_rest_api = aws.apigateway.get_rest_api(name="my-rest-api")
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
/// _, err := apigateway.LookupRestApi(ctx, &apigateway.LookupRestApiArgs{
/// Name: "my-rest-api",
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
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRestApiResult> getRestApi(
  GetRestApiArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getRestApi:getRestApi',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRestApiResult.fromMap(result);
}
