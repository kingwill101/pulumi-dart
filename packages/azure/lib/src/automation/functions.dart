import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_bool_variable_args.dart';
import 'get_bool_variable_result.dart';
import 'get_date_time_variable_args.dart';
import 'get_date_time_variable_result.dart';
import 'get_int_variable_args.dart';
import 'get_int_variable_result.dart';
import 'get_runbook_args.dart';
import 'get_runbook_result.dart';
import 'get_string_variable_args.dart';
import 'get_string_variable_result.dart';
import 'get_variable_object_args.dart';
import 'get_variable_object_result.dart';
import 'get_variables_args.dart';
import 'get_variables_result.dart';

/// Use this data source to access information about an existing Automation Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.automation.getAccount({
///     name: "example-account",
///     resourceGroupName: "example-resources",
/// });
/// export const automationAccountId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.get_account(name="example-account",
///     resource_group_name="example-resources")
/// pulumi.export("automationAccountId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Automation.GetAccount.Invoke(new()
///     {
///         Name = "example-account",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["automationAccountId"] = example.Apply(getAccountResult => getAccountResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.LookupAccount(ctx, &automation.LookupAccountArgs{
/// 			Name:              "example-account",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("automationAccountId", example.Id)
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetAccountArgs;
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
///         final var example = AutomationFunctions.getAccount(GetAccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("automationAccountId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:automation:getAccount
///       arguments:
///         name: example-account
///         resourceGroupName: example-resources
/// outputs:
///   automationAccountId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23, 2019-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Use this data source to access information about an existing Automation Bool Variable.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.automation.getBoolVariable({
///     name: "tfex-example-var",
///     resourceGroupName: "tfex-example-rg",
///     automationAccountName: "tfex-example-account",
/// });
/// export const variableId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.get_bool_variable(name="tfex-example-var",
///     resource_group_name="tfex-example-rg",
///     automation_account_name="tfex-example-account")
/// pulumi.export("variableId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Automation.GetBoolVariable.Invoke(new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = "tfex-example-rg",
///         AutomationAccountName = "tfex-example-account",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["variableId"] = example.Apply(getBoolVariableResult => getBoolVariableResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.LookupBoolVariable(ctx, &automation.LookupBoolVariableArgs{
/// 			Name:                  "tfex-example-var",
/// 			ResourceGroupName:     "tfex-example-rg",
/// 			AutomationAccountName: "tfex-example-account",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("variableId", example.Id)
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetBoolVariableArgs;
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
///         final var example = AutomationFunctions.getBoolVariable(GetBoolVariableArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName("tfex-example-rg")
///             .automationAccountName("tfex-example-account")
///             .build());
///
///         ctx.export("variableId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:automation:getBoolVariable
///       arguments:
///         name: tfex-example-var
///         resourceGroupName: tfex-example-rg
///         automationAccountName: tfex-example-account
/// outputs:
///   variableId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_bool_variable_get_bool_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBoolVariableResult> getBoolVariable(
  GetBoolVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getBoolVariable:getBoolVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBoolVariableResult.fromMap(result);
}

/// Use this data source to access information about an existing Automation Datetime Variable.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.automation.getDateTimeVariable({
///     name: "tfex-example-var",
///     resourceGroupName: "tfex-example-rg",
///     automationAccountName: "tfex-example-account",
/// });
/// export const variableId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.get_date_time_variable(name="tfex-example-var",
///     resource_group_name="tfex-example-rg",
///     automation_account_name="tfex-example-account")
/// pulumi.export("variableId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Automation.GetDateTimeVariable.Invoke(new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = "tfex-example-rg",
///         AutomationAccountName = "tfex-example-account",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["variableId"] = example.Apply(getDateTimeVariableResult => getDateTimeVariableResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.LookupDateTimeVariable(ctx, &automation.LookupDateTimeVariableArgs{
/// 			Name:                  "tfex-example-var",
/// 			ResourceGroupName:     "tfex-example-rg",
/// 			AutomationAccountName: "tfex-example-account",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("variableId", example.Id)
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetDateTimeVariableArgs;
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
///         final var example = AutomationFunctions.getDateTimeVariable(GetDateTimeVariableArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName("tfex-example-rg")
///             .automationAccountName("tfex-example-account")
///             .build());
///
///         ctx.export("variableId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:automation:getDateTimeVariable
///       arguments:
///         name: tfex-example-var
///         resourceGroupName: tfex-example-rg
///         automationAccountName: tfex-example-account
/// outputs:
///   variableId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_date_time_variable_get_date_time_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDateTimeVariableResult> getDateTimeVariable(
  GetDateTimeVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getDateTimeVariable:getDateTimeVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDateTimeVariableResult.fromMap(result);
}

/// Use this data source to access information about an existing Automation Int Variable.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.automation.getIntVariable({
///     name: "tfex-example-var",
///     resourceGroupName: "tfex-example-rg",
///     automationAccountName: "tfex-example-account",
/// });
/// export const variableId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.get_int_variable(name="tfex-example-var",
///     resource_group_name="tfex-example-rg",
///     automation_account_name="tfex-example-account")
/// pulumi.export("variableId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Automation.GetIntVariable.Invoke(new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = "tfex-example-rg",
///         AutomationAccountName = "tfex-example-account",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["variableId"] = example.Apply(getIntVariableResult => getIntVariableResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.LookupIntVariable(ctx, &automation.LookupIntVariableArgs{
/// 			Name:                  "tfex-example-var",
/// 			ResourceGroupName:     "tfex-example-rg",
/// 			AutomationAccountName: "tfex-example-account",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("variableId", example.Id)
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetIntVariableArgs;
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
///         final var example = AutomationFunctions.getIntVariable(GetIntVariableArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName("tfex-example-rg")
///             .automationAccountName("tfex-example-account")
///             .build());
///
///         ctx.export("variableId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:automation:getIntVariable
///       arguments:
///         name: tfex-example-var
///         resourceGroupName: tfex-example-rg
///         automationAccountName: tfex-example-account
/// outputs:
///   variableId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_int_variable_get_int_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntVariableResult> getIntVariable(
  GetIntVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getIntVariable:getIntVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntVariableResult.fromMap(result);
}

/// Use this data source to access information about an existing Automation Runbook.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.automation.getRunbook({
///     name: "existing-runbook",
///     resourceGroupName: "existing",
///     automationAccountName: "existing-automation",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.get_runbook(name="existing-runbook",
///     resource_group_name="existing",
///     automation_account_name="existing-automation")
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
///     var example = Azure.Automation.GetRunbook.Invoke(new()
///     {
///         Name = "existing-runbook",
///         ResourceGroupName = "existing",
///         AutomationAccountName = "existing-automation",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getRunbookResult => getRunbookResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.GetRunbook(ctx, &automation.GetRunbookArgs{
/// 			Name:                  "existing-runbook",
/// 			ResourceGroupName:     "existing",
/// 			AutomationAccountName: "existing-automation",
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetRunbookArgs;
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
///         final var example = AutomationFunctions.getRunbook(GetRunbookArgs.builder()
///             .name("existing-runbook")
///             .resourceGroupName("existing")
///             .automationAccountName("existing-automation")
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
///       function: azure:automation:getRunbook
///       arguments:
///         name: existing-runbook
///         resourceGroupName: existing
///         automationAccountName: existing-automation
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
/// * `Microsoft.Automation` - 2024-10-23
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_runbook_get_runbook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRunbookResult> getRunbook(
  GetRunbookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getRunbook:getRunbook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunbookResult.fromMap(result);
}

/// Use this data source to access information about an existing Automation String Variable.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.automation.getStringVariable({
///     name: "tfex-example-var",
///     resourceGroupName: "tfex-example-rg",
///     automationAccountName: "tfex-example-account",
/// });
/// export const variableId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.get_string_variable(name="tfex-example-var",
///     resource_group_name="tfex-example-rg",
///     automation_account_name="tfex-example-account")
/// pulumi.export("variableId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Automation.GetStringVariable.Invoke(new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = "tfex-example-rg",
///         AutomationAccountName = "tfex-example-account",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["variableId"] = example.Apply(getStringVariableResult => getStringVariableResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.LookupStringVariable(ctx, &automation.LookupStringVariableArgs{
/// 			Name:                  "tfex-example-var",
/// 			ResourceGroupName:     "tfex-example-rg",
/// 			AutomationAccountName: "tfex-example-account",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("variableId", example.Id)
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetStringVariableArgs;
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
///         final var example = AutomationFunctions.getStringVariable(GetStringVariableArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName("tfex-example-rg")
///             .automationAccountName("tfex-example-account")
///             .build());
///
///         ctx.export("variableId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:automation:getStringVariable
///       arguments:
///         name: tfex-example-var
///         resourceGroupName: tfex-example-rg
///         automationAccountName: tfex-example-account
/// outputs:
///   variableId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_string_variable_get_string_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStringVariableResult> getStringVariable(
  GetStringVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getStringVariable:getStringVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStringVariableResult.fromMap(result);
}

/// Use this data source to access information about an existing Automation Object Variable.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.automation.getVariableObject({
///     name: "tfex-example-var",
///     resourceGroupName: "tfex-example-rg",
///     automationAccountName: "tfex-example-account",
/// });
/// export const variable = example.then(example => std.jsondecode({
///     input: example.value,
/// })).then(invoke => invoke.result);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.automation.get_variable_object(name="tfex-example-var",
///     resource_group_name="tfex-example-rg",
///     automation_account_name="tfex-example-account")
/// pulumi.export("variable", std.jsondecode(input=example.value).result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Automation.GetVariableObject.Invoke(new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = "tfex-example-rg",
///         AutomationAccountName = "tfex-example-account",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["variable"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = example.Apply(getVariableObjectResult => getVariableObjectResult.Value),
///         }).Apply(invoke => invoke.Result),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.LookupVariableObject(ctx, &automation.LookupVariableObjectArgs{
/// 			Name:                  "tfex-example-var",
/// 			ResourceGroupName:     "tfex-example-rg",
/// 			AutomationAccountName: "tfex-example-account",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("variable", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: example.Value,
/// 		}, nil).Result))
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetVariableObjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
///         final var example = AutomationFunctions.getVariableObject(GetVariableObjectArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName("tfex-example-rg")
///             .automationAccountName("tfex-example-account")
///             .build());
///
///         ctx.export("variable", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.value())
///             .build()).result());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:automation:getVariableObject
///       arguments:
///         name: tfex-example-var
///         resourceGroupName: tfex-example-rg
///         automationAccountName: tfex-example-account
/// outputs:
///   variable:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.value}
///       return: result
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_variable_object_get_variable_object_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableObjectResult> getVariableObject(
  GetVariableObjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getVariableObject:getVariableObject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableObjectResult.fromMap(result);
}

/// Use this data source to get all variables in an Automation Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.automation.getAccount({
///     name: "example-account",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetVariables = example.then(example => azure.automation.getVariables({
///     automationAccountId: example.id,
/// }));
/// export const stringVars = exampleAzurermAutomationVariableString.string;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.get_account(name="example-account",
///     resource_group_name="example-resources")
/// example_get_variables = azure.automation.get_variables(automation_account_id=example.id)
/// pulumi.export("stringVars", example_azurerm_automation_variable_string["string"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Automation.GetAccount.Invoke(new()
///     {
///         Name = "example-account",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetVariables = Azure.Automation.GetVariables.Invoke(new()
///     {
///         AutomationAccountId = example.Apply(getAccountResult => getAccountResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["stringVars"] = exampleAzurermAutomationVariableString.String,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := automation.LookupAccount(ctx, &automation.LookupAccountArgs{
/// 			Name:              "example-account",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.GetVariables(ctx, &automation.GetVariablesArgs{
/// 			AutomationAccountId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("stringVars", exampleAzurermAutomationVariableString.String)
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
/// import com.pulumi.azure.automation.AutomationFunctions;
/// import com.pulumi.azure.automation.inputs.GetAccountArgs;
/// import com.pulumi.azure.automation.inputs.GetVariablesArgs;
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
///         final var example = AutomationFunctions.getAccount(GetAccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetVariables = AutomationFunctions.getVariables(GetVariablesArgs.builder()
///             .automationAccountId(example.id())
///             .build());
///
///         ctx.export("stringVars", exampleAzurermAutomationVariableString.string());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:automation:getAccount
///       arguments:
///         name: example-account
///         resourceGroupName: example-resources
///   exampleGetVariables:
///     fn::invoke:
///       function: azure:automation:getVariables
///       arguments:
///         automationAccountId: ${example.id}
/// outputs:
///   stringVars: ${exampleAzurermAutomationVariableString.string}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_variables_get_variables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariablesResult> getVariables(
  GetVariablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:automation/getVariables:getVariables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariablesResult.fromMap(result);
}
