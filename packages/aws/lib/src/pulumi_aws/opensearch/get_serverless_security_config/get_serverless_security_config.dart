import 'package:pulumi/pulumi.dart';
import 'get_serverless_security_config_args.dart';
import 'get_serverless_security_config_result.dart';

/// Data source for managing an AWS OpenSearch Serverless Security Config.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.opensearch.getServerlessSecurityConfig({
/// id: "saml/12345678912/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_security_config(id="saml/12345678912/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.OpenSearch.GetServerlessSecurityConfig.Invoke(new()
/// {
/// Id = "saml/12345678912/example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := opensearch.LookupServerlessSecurityConfig(ctx, &opensearch.LookupServerlessSecurityConfigArgs{
/// Id: "saml/12345678912/example",
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
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessSecurityConfigArgs;
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
/// final var example = OpensearchFunctions.getServerlessSecurityConfig(GetServerlessSecurityConfigArgs.builder()
/// .id("saml/12345678912/example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:opensearch:getServerlessSecurityConfig
/// arguments:
/// id: saml/12345678912/example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServerlessSecurityConfigResult> getServerlessSecurityConfig(
  GetServerlessSecurityConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessSecurityConfig:getServerlessSecurityConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerlessSecurityConfigResult.fromMap(result);
}
