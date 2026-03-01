import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_key_args.dart';
import 'get_api_key_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_configuration_args.dart';
import 'get_configuration_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_result.dart';

/// Use this data source to access information about an existing NGINX Dataplane API Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.nginx.getApiKey({
///     name: "existing",
///     nginxDeploymentId: exampleAzurermNginxDeployment.id,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.nginx.get_api_key(name="existing",
///     nginx_deployment_id=example_azurerm_nginx_deployment["id"])
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Nginx.GetApiKey.Invoke(new()
///     {
///         Name = "existing",
///         NginxDeploymentId = exampleAzurermNginxDeployment.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getApiKeyResult => getApiKeyResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nginx.LookupApiKey(ctx, &nginx.LookupApiKeyArgs{
/// 			Name:              "existing",
/// 			NginxDeploymentId: exampleAzurermNginxDeployment.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.nginx.NginxFunctions;
/// import com.pulumi.azure.nginx.inputs.GetApiKeyArgs;
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
///         final var example = NginxFunctions.getApiKey(GetApiKeyArgs.builder()
///             .name("existing")
///             .nginxDeploymentId(exampleAzurermNginxDeployment.id())
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:nginx:getApiKey
///       arguments:
///         name: existing
///         nginxDeploymentId: ${exampleAzurermNginxDeployment.id}
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Nginx.NginxPlus` - 2024-11-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_nginx_get_api_key_get_api_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiKeyResult> getApiKey(
  GetApiKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:nginx/getApiKey:getApiKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiKeyResult.fromMap(result);
}

/// Use this data source to access information about an existing NGINX Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.nginx.getCertificate({
///     name: "existing",
///     nginxDeploymentId: exampleAzurermNginxDeployment.id,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.nginx.get_certificate(name="existing",
///     nginx_deployment_id=example_azurerm_nginx_deployment["id"])
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Nginx.GetCertificate.Invoke(new()
///     {
///         Name = "existing",
///         NginxDeploymentId = exampleAzurermNginxDeployment.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getCertificateResult => getCertificateResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nginx.LookupCertificate(ctx, &nginx.LookupCertificateArgs{
/// 			Name:              "existing",
/// 			NginxDeploymentId: exampleAzurermNginxDeployment.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.nginx.NginxFunctions;
/// import com.pulumi.azure.nginx.inputs.GetCertificateArgs;
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
///         final var example = NginxFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("existing")
///             .nginxDeploymentId(exampleAzurermNginxDeployment.id())
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:nginx:getCertificate
///       arguments:
///         name: existing
///         nginxDeploymentId: ${exampleAzurermNginxDeployment.id}
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Nginx.NginxPlus` - 2024-11-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_nginx_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:nginx/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Use this data source to access information about an existing Nginx Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.nginx.getConfiguration({
///     nginxDeploymentId: exampleAzurermNginxDeployment.id,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.nginx.get_configuration(nginx_deployment_id=example_azurerm_nginx_deployment["id"])
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Nginx.GetConfiguration.Invoke(new()
///     {
///         NginxDeploymentId = exampleAzurermNginxDeployment.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getConfigurationResult => getConfigurationResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nginx.LookupConfiguration(ctx, &nginx.LookupConfigurationArgs{
/// 			NginxDeploymentId: exampleAzurermNginxDeployment.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.nginx.NginxFunctions;
/// import com.pulumi.azure.nginx.inputs.GetConfigurationArgs;
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
///         final var example = NginxFunctions.getConfiguration(GetConfigurationArgs.builder()
///             .nginxDeploymentId(exampleAzurermNginxDeployment.id())
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:nginx:getConfiguration
///       arguments:
///         nginxDeploymentId: ${exampleAzurermNginxDeployment.id}
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Nginx.NginxPlus` - 2024-11-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_nginx_get_configuration_get_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationResult> getConfiguration(
  GetConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:nginx/getConfiguration:getConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationResult.fromMap(result);
}

/// Use this data source to access information about an existing NGINX Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.nginx.getDeployment({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.nginx.get_deployment(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Nginx.GetDeployment.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDeploymentResult => getDeploymentResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nginx.LookupDeployment(ctx, &nginx.LookupDeploymentArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.nginx.NginxFunctions;
/// import com.pulumi.azure.nginx.inputs.GetDeploymentArgs;
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
///         final var example = NginxFunctions.getDeployment(GetDeploymentArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:nginx:getDeployment
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Nginx.NginxPlus` - 2024-11-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_nginx_get_deployment_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:nginx/getDeployment:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}
