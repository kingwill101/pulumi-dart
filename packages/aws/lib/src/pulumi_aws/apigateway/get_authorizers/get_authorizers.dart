import 'package:pulumi/pulumi.dart';
import 'get_authorizers_args.dart';
import 'get_authorizers_result.dart';

/// Provides details about multiple API Gateway Authorizers.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getAuthorizers({
/// restApiId: exampleAwsApiGatewayRestApi.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_authorizers(rest_api_id=example_aws_api_gateway_rest_api["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ApiGateway.GetAuthorizers.Invoke(new()
/// {
/// RestApiId = exampleAwsApiGatewayRestApi.Id,
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
/// _, err := apigateway.GetAuthorizers(ctx, &apigateway.GetAuthorizersArgs{
/// RestApiId: exampleAwsApiGatewayRestApi.Id,
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
/// import com.pulumi.aws.apigateway.inputs.GetAuthorizersArgs;
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
/// final var example = ApigatewayFunctions.getAuthorizers(GetAuthorizersArgs.builder()
/// .restApiId(exampleAwsApiGatewayRestApi.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:apigateway:getAuthorizers
/// arguments:
/// restApiId: ${exampleAwsApiGatewayRestApi.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAuthorizersResult> getAuthorizers(
  GetAuthorizersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizers:getAuthorizers',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizersResult.fromMap(result);
}
