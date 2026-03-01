import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dps_args.dart';
import 'get_dps_result.dart';
import 'get_dps_shared_access_policy_args.dart';
import 'get_dps_shared_access_policy_result.dart';
import 'get_iot_hub_args.dart';
import 'get_iot_hub_result.dart';
import 'get_shared_access_policy_args.dart';
import 'get_shared_access_policy_result.dart';

/// Use this data source to access information about an existing IotHub Device Provisioning Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.iot.getDps({
///     name: "iot_hub_dps_test",
///     resourceGroupName: "iothub_dps_rg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.iot.get_dps(name="iot_hub_dps_test",
///     resource_group_name="iothub_dps_rg")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Iot.GetDps.Invoke(new()
///     {
///         Name = "iot_hub_dps_test",
///         ResourceGroupName = "iothub_dps_rg",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.GetDps(ctx, &iot.GetDpsArgs{
/// 			Name:              "iot_hub_dps_test",
/// 			ResourceGroupName: "iothub_dps_rg",
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
/// import com.pulumi.azure.iot.IotFunctions;
/// import com.pulumi.azure.iot.inputs.GetDpsArgs;
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
///         final var example = IotFunctions.getDps(GetDpsArgs.builder()
///             .name("iot_hub_dps_test")
///             .resourceGroupName("iothub_dps_rg")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:iot:getDps
///       arguments:
///         name: iot_hub_dps_test
///         resourceGroupName: iothub_dps_rg
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Devices` - 2022-02-05
/// [args] Arguments passed to this invoke. {@macro pulumi_iot_get_dps_get_dps_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDpsResult> getDps(
  GetDpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:iot/getDps:getDps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDpsResult.fromMap(result);
}

/// Use this data source to access information about an existing IotHub Device Provisioning Service Shared Access Policy
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.iot.getDpsSharedAccessPolicy({
///     name: "example",
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     iothubDpsName: exampleAzurermIothubDps.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.iot.get_dps_shared_access_policy(name="example",
///     resource_group_name=example_azurerm_resource_group["name"],
///     iothub_dps_name=example_azurerm_iothub_dps["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Iot.GetDpsSharedAccessPolicy.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         IothubDpsName = exampleAzurermIothubDps.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.LookupDpsSharedAccessPolicy(ctx, &iot.LookupDpsSharedAccessPolicyArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 			IothubDpsName:     exampleAzurermIothubDps.Name,
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
/// import com.pulumi.azure.iot.IotFunctions;
/// import com.pulumi.azure.iot.inputs.GetDpsSharedAccessPolicyArgs;
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
///         final var example = IotFunctions.getDpsSharedAccessPolicy(GetDpsSharedAccessPolicyArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .iothubDpsName(exampleAzurermIothubDps.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:iot:getDpsSharedAccessPolicy
///       arguments:
///         name: example
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
///         iothubDpsName: ${exampleAzurermIothubDps.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Devices` - 2022-02-05
/// [args] Arguments passed to this invoke. {@macro pulumi_iot_get_dps_shared_access_policy_get_dps_shared_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDpsSharedAccessPolicyResult> getDpsSharedAccessPolicy(
  GetDpsSharedAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:iot/getDpsSharedAccessPolicy:getDpsSharedAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDpsSharedAccessPolicyResult.fromMap(result);
}

/// Use this data source to access information about an existing IoTHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.iot.getIotHub({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.iot.get_iot_hub(name="existing",
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
///     var example = Azure.Iot.GetIotHub.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getIotHubResult => getIotHubResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iot.GetIotHub(ctx, &iot.GetIotHubArgs{
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
/// import com.pulumi.azure.iot.IotFunctions;
/// import com.pulumi.azure.iot.inputs.GetIotHubArgs;
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
///         final var example = IotFunctions.getIotHub(GetIotHubArgs.builder()
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
///       function: azure:iot:getIotHub
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iot_get_iot_hub_get_iot_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotHubResult> getIotHub(
  GetIotHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:iot/getIotHub:getIotHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotHubResult.fromMap(result);
}

/// Use this data source to access information about an existing IotHub Shared Access Policy
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.iot.getSharedAccessPolicy({
///     name: "example",
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     iothubName: exampleAzurermIothub.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.iot.get_shared_access_policy(name="example",
///     resource_group_name=example_azurerm_resource_group["name"],
///     iothub_name=example_azurerm_iothub["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Iot.GetSharedAccessPolicy.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         IothubName = exampleAzurermIothub.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.LookupSharedAccessPolicy(ctx, &iot.LookupSharedAccessPolicyArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 			IothubName:        exampleAzurermIothub.Name,
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
/// import com.pulumi.azure.iot.IotFunctions;
/// import com.pulumi.azure.iot.inputs.GetSharedAccessPolicyArgs;
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
///         final var example = IotFunctions.getSharedAccessPolicy(GetSharedAccessPolicyArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .iothubName(exampleAzurermIothub.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:iot:getSharedAccessPolicy
///       arguments:
///         name: example
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
///         iothubName: ${exampleAzurermIothub.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iot_get_shared_access_policy_get_shared_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedAccessPolicyResult> getSharedAccessPolicy(
  GetSharedAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:iot/getSharedAccessPolicy:getSharedAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedAccessPolicyResult.fromMap(result);
}
