import 'package:pulumi/pulumi.dart';
import 'get_service_args3.dart';
import 'get_service_result3.dart';

/// Retrieves information about a Service Discovery Service.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.servicediscovery.getService({
/// name: "example",
/// namespaceId: "NAMESPACE_ID_VALUE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.servicediscovery.get_service(name="example",
/// namespace_id="NAMESPACE_ID_VALUE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.ServiceDiscovery.GetService.Invoke(new()
/// {
/// Name = "example",
/// NamespaceId = "NAMESPACE_ID_VALUE",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicediscovery.LookupService(ctx, &servicediscovery.LookupServiceArgs{
/// Name:        "example",
/// NamespaceId: "NAMESPACE_ID_VALUE",
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
/// import com.pulumi.aws.servicediscovery.ServicediscoveryFunctions;
/// import com.pulumi.aws.servicediscovery.inputs.GetServiceArgs;
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
/// final var test = ServicediscoveryFunctions.getService(GetServiceArgs.builder()
/// .name("example")
/// .namespaceId("NAMESPACE_ID_VALUE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:servicediscovery:getService
/// arguments:
/// name: example
/// namespaceId: NAMESPACE_ID_VALUE
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceResult3> getService3(
  GetServiceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult3.fromMap(result);
}
