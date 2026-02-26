import 'package:pulumi/pulumi.dart';
import 'get_dns_namespace_args.dart';
import 'get_dns_namespace_result.dart';

/// Retrieves information about a Service Discovery private or public DNS namespace.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.servicediscovery.getDnsNamespace({
/// name: "example.service.local",
/// type: "DNS_PRIVATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.servicediscovery.get_dns_namespace(name="example.service.local",
/// type="DNS_PRIVATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.ServiceDiscovery.GetDnsNamespace.Invoke(new()
/// {
/// Name = "example.service.local",
/// Type = "DNS_PRIVATE",
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
/// _, err := servicediscovery.GetDnsNamespace(ctx, &servicediscovery.GetDnsNamespaceArgs{
/// Name: "example.service.local",
/// Type: "DNS_PRIVATE",
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
/// import com.pulumi.aws.servicediscovery.inputs.GetDnsNamespaceArgs;
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
/// final var test = ServicediscoveryFunctions.getDnsNamespace(GetDnsNamespaceArgs.builder()
/// .name("example.service.local")
/// .type("DNS_PRIVATE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:servicediscovery:getDnsNamespace
/// arguments:
/// name: example.service.local
/// type: DNS_PRIVATE
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDnsNamespaceResult> getDnsNamespace(
  GetDnsNamespaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getDnsNamespace:getDnsNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDnsNamespaceResult.fromMap(result);
}
