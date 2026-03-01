import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_group_args.dart';
import 'get_action_group_result.dart';
import 'get_data_collection_endpoint_args.dart';
import 'get_data_collection_endpoint_result.dart';
import 'get_data_collection_rule_args.dart';
import 'get_data_collection_rule_result.dart';
import 'get_diagnostic_categories_args.dart';
import 'get_diagnostic_categories_result.dart';
import 'get_scheduled_query_rules_alert_args.dart';
import 'get_scheduled_query_rules_alert_result.dart';
import 'get_scheduled_query_rules_log_args.dart';
import 'get_scheduled_query_rules_log_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Use this data source to access the properties of an Action Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.monitoring.getActionGroup({
///     resourceGroupName: "example-rg",
///     name: "tfex-actiongroup",
/// });
/// export const actionGroupId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.monitoring.get_action_group(resource_group_name="example-rg",
///     name="tfex-actiongroup")
/// pulumi.export("actionGroupId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Monitoring.GetActionGroup.Invoke(new()
///     {
///         ResourceGroupName = "example-rg",
///         Name = "tfex-actiongroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["actionGroupId"] = example.Apply(getActionGroupResult => getActionGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := monitoring.LookupActionGroup(ctx, &monitoring.LookupActionGroupArgs{
/// 			ResourceGroupName: "example-rg",
/// 			Name:              "tfex-actiongroup",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("actionGroupId", example.Id)
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
/// import com.pulumi.azure.monitoring.MonitoringFunctions;
/// import com.pulumi.azure.monitoring.inputs.GetActionGroupArgs;
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
///         final var example = MonitoringFunctions.getActionGroup(GetActionGroupArgs.builder()
///             .resourceGroupName("example-rg")
///             .name("tfex-actiongroup")
///             .build());
///
///         ctx.export("actionGroupId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:monitoring:getActionGroup
///       arguments:
///         resourceGroupName: example-rg
///         name: tfex-actiongroup
/// outputs:
///   actionGroupId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_action_group_get_action_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActionGroupResult> getActionGroup(
  GetActionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:monitoring/getActionGroup:getActionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActionGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Data Collection Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.monitoring.getDataCollectionEndpoint({
///     name: "example-mdce",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// export const endpointId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.monitoring.get_data_collection_endpoint(name="example-mdce",
///     resource_group_name=example_azurerm_resource_group["name"])
/// pulumi.export("endpointId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Monitoring.GetDataCollectionEndpoint.Invoke(new()
///     {
///         Name = "example-mdce",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["endpointId"] = example.Apply(getDataCollectionEndpointResult => getDataCollectionEndpointResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := monitoring.LookupDataCollectionEndpoint(ctx, &monitoring.LookupDataCollectionEndpointArgs{
/// 			Name:              "example-mdce",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("endpointId", example.Id)
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
/// import com.pulumi.azure.monitoring.MonitoringFunctions;
/// import com.pulumi.azure.monitoring.inputs.GetDataCollectionEndpointArgs;
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
///         final var example = MonitoringFunctions.getDataCollectionEndpoint(GetDataCollectionEndpointArgs.builder()
///             .name("example-mdce")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///         ctx.export("endpointId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:monitoring:getDataCollectionEndpoint
///       arguments:
///         name: example-mdce
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// outputs:
///   endpointId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2023-03-11
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_data_collection_endpoint_get_data_collection_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCollectionEndpointResult> getDataCollectionEndpoint(
  GetDataCollectionEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:monitoring/getDataCollectionEndpoint:getDataCollectionEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectionEndpointResult.fromMap(result);
}

/// Use this data source to access information about an existing Data Collection Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.monitoring.getDataCollectionRule({
///     name: "example-rule",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// export const ruleId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.monitoring.get_data_collection_rule(name="example-rule",
///     resource_group_name=example_azurerm_resource_group["name"])
/// pulumi.export("ruleId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Monitoring.GetDataCollectionRule.Invoke(new()
///     {
///         Name = "example-rule",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ruleId"] = example.Apply(getDataCollectionRuleResult => getDataCollectionRuleResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := monitoring.LookupDataCollectionRule(ctx, &monitoring.LookupDataCollectionRuleArgs{
/// 			Name:              "example-rule",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ruleId", example.Id)
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
/// import com.pulumi.azure.monitoring.MonitoringFunctions;
/// import com.pulumi.azure.monitoring.inputs.GetDataCollectionRuleArgs;
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
///         final var example = MonitoringFunctions.getDataCollectionRule(GetDataCollectionRuleArgs.builder()
///             .name("example-rule")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///         ctx.export("ruleId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:monitoring:getDataCollectionRule
///       arguments:
///         name: example-rule
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// outputs:
///   ruleId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2023-03-11
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_data_collection_rule_get_data_collection_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCollectionRuleResult> getDataCollectionRule(
  GetDataCollectionRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:monitoring/getDataCollectionRule:getDataCollectionRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectionRuleResult.fromMap(result);
}

/// Use this data source to access information about the Monitor Diagnostics Categories supported by an existing Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getKeyVault({
///     name: exampleAzurermKeyVault.name,
///     resourceGroupName: exampleAzurermKeyVault.resourceGroupName,
/// });
/// const exampleGetDiagnosticCategories = example.then(example => azure.monitoring.getDiagnosticCategories({
///     resourceId: example.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_key_vault(name=example_azurerm_key_vault["name"],
///     resource_group_name=example_azurerm_key_vault["resourceGroupName"])
/// example_get_diagnostic_categories = azure.monitoring.get_diagnostic_categories(resource_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetKeyVault.Invoke(new()
///     {
///         Name = exampleAzurermKeyVault.Name,
///         ResourceGroupName = exampleAzurermKeyVault.ResourceGroupName,
///     });
///
///     var exampleGetDiagnosticCategories = Azure.Monitoring.GetDiagnosticCategories.Invoke(new()
///     {
///         ResourceId = example.Apply(getKeyVaultResult => getKeyVaultResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupKeyVault(ctx, &keyvault.LookupKeyVaultArgs{
/// 			Name:              exampleAzurermKeyVault.Name,
/// 			ResourceGroupName: exampleAzurermKeyVault.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.GetDiagnosticCategories(ctx, &monitoring.GetDiagnosticCategoriesArgs{
/// 			ResourceId: example.Id,
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyVaultArgs;
/// import com.pulumi.azure.monitoring.MonitoringFunctions;
/// import com.pulumi.azure.monitoring.inputs.GetDiagnosticCategoriesArgs;
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
///         final var example = KeyvaultFunctions.getKeyVault(GetKeyVaultArgs.builder()
///             .name(exampleAzurermKeyVault.name())
///             .resourceGroupName(exampleAzurermKeyVault.resourceGroupName())
///             .build());
///
///         final var exampleGetDiagnosticCategories = MonitoringFunctions.getDiagnosticCategories(GetDiagnosticCategoriesArgs.builder()
///             .resourceId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKeyVault
///       arguments:
///         name: ${exampleAzurermKeyVault.name}
///         resourceGroupName: ${exampleAzurermKeyVault.resourceGroupName}
///   exampleGetDiagnosticCategories:
///     fn::invoke:
///       function: azure:monitoring:getDiagnosticCategories
///       arguments:
///         resourceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2021-05-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_diagnostic_categories_get_diagnostic_categories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiagnosticCategoriesResult> getDiagnosticCategories(
  GetDiagnosticCategoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:monitoring/getDiagnosticCategories:getDiagnosticCategories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiagnosticCategoriesResult.fromMap(result);
}

/// Use this data source to access the properties of an AlertingAction scheduled query rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.monitoring.getScheduledQueryRulesAlert({
///     resourceGroupName: "example-rg",
///     name: "tfex-queryrule",
/// });
/// export const queryRuleId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.monitoring.get_scheduled_query_rules_alert(resource_group_name="example-rg",
///     name="tfex-queryrule")
/// pulumi.export("queryRuleId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Monitoring.GetScheduledQueryRulesAlert.Invoke(new()
///     {
///         ResourceGroupName = "example-rg",
///         Name = "tfex-queryrule",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["queryRuleId"] = example.Apply(getScheduledQueryRulesAlertResult => getScheduledQueryRulesAlertResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := monitoring.LookupScheduledQueryRulesAlert(ctx, &monitoring.LookupScheduledQueryRulesAlertArgs{
/// 			ResourceGroupName: "example-rg",
/// 			Name:              "tfex-queryrule",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("queryRuleId", example.Id)
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
/// import com.pulumi.azure.monitoring.MonitoringFunctions;
/// import com.pulumi.azure.monitoring.inputs.GetScheduledQueryRulesAlertArgs;
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
///         final var example = MonitoringFunctions.getScheduledQueryRulesAlert(GetScheduledQueryRulesAlertArgs.builder()
///             .resourceGroupName("example-rg")
///             .name("tfex-queryrule")
///             .build());
///
///         ctx.export("queryRuleId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:monitoring:getScheduledQueryRulesAlert
///       arguments:
///         resourceGroupName: example-rg
///         name: tfex-queryrule
/// outputs:
///   queryRuleId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2018-04-16
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_scheduled_query_rules_alert_get_scheduled_query_rules_alert_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledQueryRulesAlertResult> getScheduledQueryRulesAlert(
  GetScheduledQueryRulesAlertArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:monitoring/getScheduledQueryRulesAlert:getScheduledQueryRulesAlert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledQueryRulesAlertResult.fromMap(result);
}

/// Use this data source to access the properties of a LogToMetricAction scheduled query rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.monitoring.getScheduledQueryRulesLog({
///     resourceGroupName: "example-rg",
///     name: "tfex-queryrule",
/// });
/// export const queryRuleId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.monitoring.get_scheduled_query_rules_log(resource_group_name="example-rg",
///     name="tfex-queryrule")
/// pulumi.export("queryRuleId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Monitoring.GetScheduledQueryRulesLog.Invoke(new()
///     {
///         ResourceGroupName = "example-rg",
///         Name = "tfex-queryrule",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["queryRuleId"] = example.Apply(getScheduledQueryRulesLogResult => getScheduledQueryRulesLogResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := monitoring.LookupScheduledQueryRulesLog(ctx, &monitoring.LookupScheduledQueryRulesLogArgs{
/// 			ResourceGroupName: "example-rg",
/// 			Name:              "tfex-queryrule",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("queryRuleId", example.Id)
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
/// import com.pulumi.azure.monitoring.MonitoringFunctions;
/// import com.pulumi.azure.monitoring.inputs.GetScheduledQueryRulesLogArgs;
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
///         final var example = MonitoringFunctions.getScheduledQueryRulesLog(GetScheduledQueryRulesLogArgs.builder()
///             .resourceGroupName("example-rg")
///             .name("tfex-queryrule")
///             .build());
///
///         ctx.export("queryRuleId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:monitoring:getScheduledQueryRulesLog
///       arguments:
///         resourceGroupName: example-rg
///         name: tfex-queryrule
/// outputs:
///   queryRuleId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2018-04-16
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_scheduled_query_rules_log_get_scheduled_query_rules_log_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledQueryRulesLogResult> getScheduledQueryRulesLog(
  GetScheduledQueryRulesLogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:monitoring/getScheduledQueryRulesLog:getScheduledQueryRulesLog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledQueryRulesLogResult.fromMap(result);
}

/// Use this data source to access information about an existing Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.monitoring.getWorkspace({
///     name: "example-workspace",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// export const queryEndpoint = example.then(example => example.queryEndpoint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.monitoring.get_workspace(name="example-workspace",
///     resource_group_name=example_azurerm_resource_group["name"])
/// pulumi.export("queryEndpoint", example.query_endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Monitoring.GetWorkspace.Invoke(new()
///     {
///         Name = "example-workspace",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["queryEndpoint"] = example.Apply(getWorkspaceResult => getWorkspaceResult.QueryEndpoint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := monitoring.LookupWorkspace(ctx, &monitoring.LookupWorkspaceArgs{
/// 			Name:              "example-workspace",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("queryEndpoint", example.QueryEndpoint)
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
/// import com.pulumi.azure.monitoring.MonitoringFunctions;
/// import com.pulumi.azure.monitoring.inputs.GetWorkspaceArgs;
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
///         final var example = MonitoringFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .name("example-workspace")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///         ctx.export("queryEndpoint", example.queryEndpoint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:monitoring:getWorkspace
///       arguments:
///         name: example-workspace
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// outputs:
///   queryEndpoint: ${example.queryEndpoint}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Monitor` - 2023-04-03
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:monitoring/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
