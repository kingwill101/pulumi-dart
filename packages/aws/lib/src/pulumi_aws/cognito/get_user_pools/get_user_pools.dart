import 'package:pulumi/pulumi.dart';
import 'get_user_pools_args.dart';
import 'get_user_pools_result.dart';

/// Use this data source to get a list of cognito user pools.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.apigateway.getRestApi({
/// name: apiGatewayName,
/// });
/// const selectedGetUserPools = aws.cognito.getUserPools({
/// name: cognitoUserPoolName,
/// });
/// const cognito = new aws.apigateway.Authorizer("cognito", {
/// name: "cognito",
/// type: "COGNITO_USER_POOLS",
/// restApi: selected.then(selected => selected.id),
/// providerArns: selectedGetUserPools.then(selectedGetUserPools => selectedGetUserPools.arns),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.apigateway.get_rest_api(name=api_gateway_name)
/// selected_get_user_pools = aws.cognito.get_user_pools(name=cognito_user_pool_name)
/// cognito = aws.apigateway.Authorizer("cognito",
/// name="cognito",
/// type="COGNITO_USER_POOLS",
/// rest_api=selected.id,
/// provider_arns=selected_get_user_pools.arns)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var selected = Aws.ApiGateway.GetRestApi.Invoke(new()
/// {
/// Name = apiGatewayName,
/// });
///
/// var selectedGetUserPools = Aws.Cognito.GetUserPools.Invoke(new()
/// {
/// Name = cognitoUserPoolName,
/// });
///
/// var cognito = new Aws.ApiGateway.Authorizer("cognito", new()
/// {
/// Name = "cognito",
/// Type = "COGNITO_USER_POOLS",
/// RestApi = selected.Apply(getRestApiResult => getRestApiResult.Id),
/// ProviderArns = selectedGetUserPools.Apply(getUserPoolsResult => getUserPoolsResult.Arns),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// selected, err := apigateway.LookupRestApi(ctx, &apigateway.LookupRestApiArgs{
/// Name: apiGatewayName,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// selectedGetUserPools, err := cognito.GetUserPools(ctx, &cognito.GetUserPoolsArgs{
/// Name: cognitoUserPoolName,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewAuthorizer(ctx, "cognito", &apigateway.AuthorizerArgs{
/// Name:         pulumi.String("cognito"),
/// Type:         pulumi.String("COGNITO_USER_POOLS"),
/// RestApi:      pulumi.String(selected.Id),
/// ProviderArns: interface{}(selectedGetUserPools.Arns),
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
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetRestApiArgs;
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserPoolsArgs;
/// import com.pulumi.aws.apigateway.Authorizer;
/// import com.pulumi.aws.apigateway.AuthorizerArgs;
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
/// final var selected = ApigatewayFunctions.getRestApi(GetRestApiArgs.builder()
/// .name(apiGatewayName)
/// .build());
///
/// final var selectedGetUserPools = CognitoFunctions.getUserPools(GetUserPoolsArgs.builder()
/// .name(cognitoUserPoolName)
/// .build());
///
/// var cognito = new Authorizer("cognito", AuthorizerArgs.builder()
/// .name("cognito")
/// .type("COGNITO_USER_POOLS")
/// .restApi(selected.id())
/// .providerArns(selectedGetUserPools.arns())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cognito:
/// type: aws:apigateway:Authorizer
/// properties:
/// name: cognito
/// type: COGNITO_USER_POOLS
/// restApi: ${selected.id}
/// providerArns: ${selectedGetUserPools.arns}
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:apigateway:getRestApi
/// arguments:
/// name: ${apiGatewayName}
/// selectedGetUserPools:
/// fn::invoke:
/// function: aws:cognito:getUserPools
/// arguments:
/// name: ${cognitoUserPoolName}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserPoolsResult> getUserPools(
  GetUserPoolsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPools:getUserPools',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserPoolsResult.fromMap(result);
}
