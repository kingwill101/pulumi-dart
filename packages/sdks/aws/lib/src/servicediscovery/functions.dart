import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_namespace_args.dart';
import 'get_dns_namespace_result.dart';
import 'get_http_namespace_args.dart';
import 'get_http_namespace_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// Retrieves information about a Service Discovery private or public DNS namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.servicediscovery.getDnsNamespace({
///     name: "example.service.local",
///     type: "DNS_PRIVATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.servicediscovery.get_dns_namespace(name="example.service.local",
///     type="DNS_PRIVATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.ServiceDiscovery.GetDnsNamespace.Invoke(new()
///     {
///         Name = "example.service.local",
///         Type = "DNS_PRIVATE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicediscovery.GetDnsNamespace(ctx, &servicediscovery.GetDnsNamespaceArgs{
/// 			Name: "example.service.local",
/// 			Type: "DNS_PRIVATE",
/// 		}, nil)
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = ServicediscoveryFunctions.getDnsNamespace(GetDnsNamespaceArgs.builder()
///             .name("example.service.local")
///             .type("DNS_PRIVATE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:servicediscovery:getDnsNamespace
///       arguments:
///         name: example.service.local
///         type: DNS_PRIVATE
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicediscovery_get_dns_namespace_get_dns_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsNamespaceResult> getDnsNamespace(
  GetDnsNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getDnsNamespace:getDnsNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsNamespaceResult.fromMap(result);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.servicediscovery.getHttpNamespace({
///     name: "development",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.get_http_namespace(name="development")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceDiscovery.GetHttpNamespace.Invoke(new()
///     {
///         Name = "development",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicediscovery.LookupHttpNamespace(ctx, &servicediscovery.LookupHttpNamespaceArgs{
/// 			Name: "development",
/// 		}, nil)
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
/// import com.pulumi.aws.servicediscovery.ServicediscoveryFunctions;
/// import com.pulumi.aws.servicediscovery.inputs.GetHttpNamespaceArgs;
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
///         final var example = ServicediscoveryFunctions.getHttpNamespace(GetHttpNamespaceArgs.builder()
///             .name("development")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicediscovery:getHttpNamespace
///       arguments:
///         name: development
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicediscovery_get_http_namespace_get_http_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpNamespaceResult> getHttpNamespace(
  GetHttpNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getHttpNamespace:getHttpNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpNamespaceResult.fromMap(result);
}

/// Retrieves information about a Service Discovery Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.servicediscovery.getService({
///     name: "example",
///     namespaceId: "NAMESPACE_ID_VALUE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.servicediscovery.get_service(name="example",
///     namespace_id="NAMESPACE_ID_VALUE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.ServiceDiscovery.GetService.Invoke(new()
///     {
///         Name = "example",
///         NamespaceId = "NAMESPACE_ID_VALUE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicediscovery.LookupService(ctx, &servicediscovery.LookupServiceArgs{
/// 			Name:        "example",
/// 			NamespaceId: "NAMESPACE_ID_VALUE",
/// 		}, nil)
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = ServicediscoveryFunctions.getService(GetServiceArgs.builder()
///             .name("example")
///             .namespaceId("NAMESPACE_ID_VALUE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:servicediscovery:getService
///       arguments:
///         name: example
///         namespaceId: NAMESPACE_ID_VALUE
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicediscovery_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
