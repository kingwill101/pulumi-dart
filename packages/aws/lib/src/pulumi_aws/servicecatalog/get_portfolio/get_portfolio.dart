import 'package:pulumi/pulumi.dart';
import 'get_portfolio_args.dart';
import 'get_portfolio_result.dart';

/// Provides information for a Service Catalog Portfolio.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const portfolio = aws.servicecatalog.getPortfolio({
/// id: "port-07052002",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// portfolio = aws.servicecatalog.get_portfolio(id="port-07052002")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var portfolio = Aws.ServiceCatalog.GetPortfolio.Invoke(new()
/// {
/// Id = "port-07052002",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicecatalog.LookupPortfolio(ctx, &servicecatalog.LookupPortfolioArgs{
/// Id: "port-07052002",
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetPortfolioArgs;
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
/// final var portfolio = ServicecatalogFunctions.getPortfolio(GetPortfolioArgs.builder()
/// .id("port-07052002")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// portfolio:
/// fn::invoke:
/// function: aws:servicecatalog:getPortfolio
/// arguments:
/// id: port-07052002
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPortfolioResult> getPortfolio(
  GetPortfolioArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getPortfolio:getPortfolio',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPortfolioResult.fromMap(result);
}
