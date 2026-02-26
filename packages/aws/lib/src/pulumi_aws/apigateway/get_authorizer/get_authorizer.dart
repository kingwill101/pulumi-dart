import 'package:pulumi/pulumi.dart';
import 'get_authorizer_args.dart';
import 'get_authorizer_result.dart';

/// Provides details about a specific API Gateway Authorizer.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getAuthorizer({
/// restApiId: exampleAwsApiGatewayRestApi.id,
/// authorizerId: exampleAwsApiGatewayAuthorizers.ids[0],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_authorizer(rest_api_id=example_aws_api_gateway_rest_api["id"],
/// authorizer_id=example_aws_api_gateway_authorizers["ids"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ApiGateway.GetAuthorizer.Invoke(new()
/// {
/// RestApiId = exampleAwsApiGatewayRestApi.Id,
/// AuthorizerId = exampleAwsApiGatewayAuthorizers.Ids[0],
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
/// _, err := apigateway.LookupAuthorizer(ctx, &apigateway.LookupAuthorizerArgs{
/// RestApiId:    exampleAwsApiGatewayRestApi.Id,
/// AuthorizerId: exampleAwsApiGatewayAuthorizers.Ids[0],
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
/// import com.pulumi.aws.apigateway.inputs.GetAuthorizerArgs;
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
/// final var example = ApigatewayFunctions.getAuthorizer(GetAuthorizerArgs.builder()
/// .restApiId(exampleAwsApiGatewayRestApi.id())
/// .authorizerId(exampleAwsApiGatewayAuthorizers.ids()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:apigateway:getAuthorizer
/// arguments:
/// restApiId: ${exampleAwsApiGatewayRestApi.id}
/// authorizerId: ${exampleAwsApiGatewayAuthorizers.ids[0]}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAuthorizerResult> getAuthorizer(
  GetAuthorizerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizer:getAuthorizer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizerResult.fromMap(result);
}
