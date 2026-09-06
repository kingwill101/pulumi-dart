import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';
import 'runbook_args.dart';
import 'runbook_draft_response.dart';
import 'runbook_parameter_response.dart';
import 'system_data_response.dart';

/// Definition of the runbook type.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2018-06-30, 2019-06-01, 2022-08-08, 2023-05-15-preview, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update runbook and publish it
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var runbook = new AzureNative.Automation.Runbook("runbook", new()
///     {
///         AutomationAccountName = "ContoseAutomationAccount",
///         Description = "Description of the Runbook",
///         Location = "East US 2",
///         LogActivityTrace = 1,
///         LogProgress = true,
///         LogVerbose = false,
///         Name = "Get-AzureVMTutorial",
///         PublishContentLink = new AzureNative.Automation.Inputs.ContentLinkArgs
///         {
///             ContentHash = new AzureNative.Automation.Inputs.ContentHashArgs
///             {
///                 Algorithm = "SHA256",
///                 Value = "115775B8FF2BE672D8A946BD0B489918C724DDE15A440373CA54461D53010A80",
///             },
///             Uri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1",
///         },
///         ResourceGroupName = "rg",
///         RunbookName = "Get-AzureVMTutorial",
///         RunbookType = AzureNative.Automation.RunbookTypeEnum.PowerShell,
///         RuntimeEnvironment = "environmentName",
///         Tags =
///         {
///             { "tag01", "value01" },
///             { "tag02", "value02" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewRunbook(ctx, "runbook", &automation.RunbookArgs{
/// 			AutomationAccountName: pulumi.String("ContoseAutomationAccount"),
/// 			Description:           pulumi.String("Description of the Runbook"),
/// 			Location:              pulumi.String("East US 2"),
/// 			LogActivityTrace:      pulumi.Int(1),
/// 			LogProgress:           pulumi.Bool(true),
/// 			LogVerbose:            pulumi.Bool(false),
/// 			Name:                  pulumi.String("Get-AzureVMTutorial"),
/// 			PublishContentLink: &automation.ContentLinkArgs{
/// 				ContentHash: &automation.ContentHashArgs{
/// 					Algorithm: pulumi.String("SHA256"),
/// 					Value:     pulumi.String("115775B8FF2BE672D8A946BD0B489918C724DDE15A440373CA54461D53010A80"),
/// 				},
/// 				Uri: pulumi.String("https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1"),
/// 			},
/// 			ResourceGroupName:  pulumi.String("rg"),
/// 			RunbookName:        pulumi.String("Get-AzureVMTutorial"),
/// 			RunbookType:        pulumi.String(automation.RunbookTypeEnumPowerShell),
/// 			RuntimeEnvironment: pulumi.String("environmentName"),
/// 			Tags: pulumi.StringMap{
/// 				"tag01": pulumi.String("value01"),
/// 				"tag02": pulumi.String("value02"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_automation_runbook" "runbook" {
///   automation_account_name = "ContoseAutomationAccount"
///   description             = "Description of the Runbook"
///   location                = "East US 2"
///   log_activity_trace      = 1
///   log_progress            = true
///   log_verbose             = false
///   name                    = "Get-AzureVMTutorial"
///   publish_content_link = {
///     content_hash = {
///       algorithm = "SHA256"
///       value     = "115775B8FF2BE672D8A946BD0B489918C724DDE15A440373CA54461D53010A80"
///     }
///     uri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1"
///   }
///   resource_group_name = "rg"
///   runbook_name        = "Get-AzureVMTutorial"
///   runbook_type        = "PowerShell"
///   runtime_environment = "environmentName"
///   tags = {
///     "tag01" = "value01"
///     "tag02" = "value02"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.automation.Runbook;
/// import com.pulumi.azurenative.automation.RunbookArgs;
/// import com.pulumi.azurenative.automation.inputs.ContentLinkArgs;
/// import com.pulumi.azurenative.automation.inputs.ContentHashArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var runbook = new Runbook("runbook", RunbookArgs.builder()
///             .automationAccountName("ContoseAutomationAccount")
///             .description("Description of the Runbook")
///             .location("East US 2")
///             .logActivityTrace(1)
///             .logProgress(true)
///             .logVerbose(false)
///             .name("Get-AzureVMTutorial")
///             .publishContentLink(ContentLinkArgs.builder()
///                 .contentHash(ContentHashArgs.builder()
///                     .algorithm("SHA256")
///                     .value("115775B8FF2BE672D8A946BD0B489918C724DDE15A440373CA54461D53010A80")
///                     .build())
///                 .uri("https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1")
///                 .build())
///             .resourceGroupName("rg")
///             .runbookName("Get-AzureVMTutorial")
///             .runbookType("PowerShell")
///             .runtimeEnvironment("environmentName")
///             .tags(Map.ofEntries(
///                 Map.entry("tag01", "value01"),
///                 Map.entry("tag02", "value02")
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const runbook = new azure_native.automation.Runbook("runbook", {
///     automationAccountName: "ContoseAutomationAccount",
///     description: "Description of the Runbook",
///     location: "East US 2",
///     logActivityTrace: 1,
///     logProgress: true,
///     logVerbose: false,
///     name: "Get-AzureVMTutorial",
///     publishContentLink: {
///         contentHash: {
///             algorithm: "SHA256",
///             value: "115775B8FF2BE672D8A946BD0B489918C724DDE15A440373CA54461D53010A80",
///         },
///         uri: "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1",
///     },
///     resourceGroupName: "rg",
///     runbookName: "Get-AzureVMTutorial",
///     runbookType: azure_native.automation.RunbookTypeEnum.PowerShell,
///     runtimeEnvironment: "environmentName",
///     tags: {
///         tag01: "value01",
///         tag02: "value02",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// runbook = azure_native.automation.Runbook("runbook",
///     automation_account_name="ContoseAutomationAccount",
///     description="Description of the Runbook",
///     location="East US 2",
///     log_activity_trace=1,
///     log_progress=True,
///     log_verbose=False,
///     name="Get-AzureVMTutorial",
///     publish_content_link={
///         "content_hash": {
///             "algorithm": "SHA256",
///             "value": "115775B8FF2BE672D8A946BD0B489918C724DDE15A440373CA54461D53010A80",
///         },
///         "uri": "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1",
///     },
///     resource_group_name="rg",
///     runbook_name="Get-AzureVMTutorial",
///     runbook_type=azure_native.automation.RunbookTypeEnum.POWER_SHELL,
///     runtime_environment="environmentName",
///     tags={
///         "tag01": "value01",
///         "tag02": "value02",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   runbook:
///     type: azure-native:automation:Runbook
///     properties:
///       automationAccountName: ContoseAutomationAccount
///       description: Description of the Runbook
///       location: East US 2
///       logActivityTrace: 1
///       logProgress: true
///       logVerbose: false
///       name: Get-AzureVMTutorial
///       publishContentLink:
///         contentHash:
///           algorithm: SHA256
///           value: 115775B8FF2BE672D8A946BD0B489918C724DDE15A440373CA54461D53010A80
///         uri: https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1
///       resourceGroupName: rg
///       runbookName: Get-AzureVMTutorial
///       runbookType: PowerShell
///       runtimeEnvironment: environmentName
///       tags:
///         tag01: value01
///         tag02: value02
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create runbook as draft
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var runbook = new AzureNative.Automation.Runbook("runbook", new()
///     {
///         AutomationAccountName = "ContoseAutomationAccount",
///         Description = "Description of the Runbook",
///         Draft = null,
///         Location = "East US 2",
///         LogProgress = false,
///         LogVerbose = false,
///         Name = "Get-AzureVMTutorial",
///         ResourceGroupName = "rg",
///         RunbookName = "Get-AzureVMTutorial",
///         RunbookType = AzureNative.Automation.RunbookTypeEnum.PowerShell,
///         RuntimeEnvironment = "environmentName",
///         Tags =
///         {
///             { "tag01", "value01" },
///             { "tag02", "value02" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewRunbook(ctx, "runbook", &automation.RunbookArgs{
/// 			AutomationAccountName: pulumi.String("ContoseAutomationAccount"),
/// 			Description:           pulumi.String("Description of the Runbook"),
/// 			Draft:                 &automation.RunbookDraftArgs{},
/// 			Location:              pulumi.String("East US 2"),
/// 			LogProgress:           pulumi.Bool(false),
/// 			LogVerbose:            pulumi.Bool(false),
/// 			Name:                  pulumi.String("Get-AzureVMTutorial"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			RunbookName:           pulumi.String("Get-AzureVMTutorial"),
/// 			RunbookType:           pulumi.String(automation.RunbookTypeEnumPowerShell),
/// 			RuntimeEnvironment:    pulumi.String("environmentName"),
/// 			Tags: pulumi.StringMap{
/// 				"tag01": pulumi.String("value01"),
/// 				"tag02": pulumi.String("value02"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_automation_runbook" "runbook" {
///   automation_account_name = "ContoseAutomationAccount"
///   description             = "Description of the Runbook"
///   draft                   = {}
///   location                = "East US 2"
///   log_progress            = false
///   log_verbose             = false
///   name                    = "Get-AzureVMTutorial"
///   resource_group_name     = "rg"
///   runbook_name            = "Get-AzureVMTutorial"
///   runbook_type            = "PowerShell"
///   runtime_environment     = "environmentName"
///   tags = {
///     "tag01" = "value01"
///     "tag02" = "value02"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.automation.Runbook;
/// import com.pulumi.azurenative.automation.RunbookArgs;
/// import com.pulumi.azurenative.automation.inputs.RunbookDraftArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var runbook = new Runbook("runbook", RunbookArgs.builder()
///             .automationAccountName("ContoseAutomationAccount")
///             .description("Description of the Runbook")
///             .draft(RunbookDraftArgs.builder()
///                 .build())
///             .location("East US 2")
///             .logProgress(false)
///             .logVerbose(false)
///             .name("Get-AzureVMTutorial")
///             .resourceGroupName("rg")
///             .runbookName("Get-AzureVMTutorial")
///             .runbookType("PowerShell")
///             .runtimeEnvironment("environmentName")
///             .tags(Map.ofEntries(
///                 Map.entry("tag01", "value01"),
///                 Map.entry("tag02", "value02")
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const runbook = new azure_native.automation.Runbook("runbook", {
///     automationAccountName: "ContoseAutomationAccount",
///     description: "Description of the Runbook",
///     draft: {},
///     location: "East US 2",
///     logProgress: false,
///     logVerbose: false,
///     name: "Get-AzureVMTutorial",
///     resourceGroupName: "rg",
///     runbookName: "Get-AzureVMTutorial",
///     runbookType: azure_native.automation.RunbookTypeEnum.PowerShell,
///     runtimeEnvironment: "environmentName",
///     tags: {
///         tag01: "value01",
///         tag02: "value02",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// runbook = azure_native.automation.Runbook("runbook",
///     automation_account_name="ContoseAutomationAccount",
///     description="Description of the Runbook",
///     draft={},
///     location="East US 2",
///     log_progress=False,
///     log_verbose=False,
///     name="Get-AzureVMTutorial",
///     resource_group_name="rg",
///     runbook_name="Get-AzureVMTutorial",
///     runbook_type=azure_native.automation.RunbookTypeEnum.POWER_SHELL,
///     runtime_environment="environmentName",
///     tags={
///         "tag01": "value01",
///         "tag02": "value02",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   runbook:
///     type: azure-native:automation:Runbook
///     properties:
///       automationAccountName: ContoseAutomationAccount
///       description: Description of the Runbook
///       draft: {}
///       location: East US 2
///       logProgress: false
///       logVerbose: false
///       name: Get-AzureVMTutorial
///       resourceGroupName: rg
///       runbookName: Get-AzureVMTutorial
///       runbookType: PowerShell
///       runtimeEnvironment: environmentName
///       tags:
///         tag01: value01
///         tag02: value02
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:automation:Runbook Get-AzureVMTutorial /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}
/// ```
class Runbook extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the creation time.
  late final pulumi.Output<String?> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets or sets the draft runbook properties.
  late final pulumi.Output<RunbookDraftResponse?> draft;
  /// Gets or sets the etag of the resource.
  late final pulumi.Output<String?> etag;
  /// Gets or sets the job count of the runbook.
  late final pulumi.Output<int?> jobCount;
  /// Gets or sets the last modified by.
  late final pulumi.Output<String?> lastModifiedBy;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Gets or sets the option to log activity trace of the runbook.
  late final pulumi.Output<int?> logActivityTrace;
  /// Gets or sets progress log option.
  late final pulumi.Output<bool?> logProgress;
  /// Gets or sets verbose log option.
  late final pulumi.Output<bool?> logVerbose;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the runbook output types.
  late final pulumi.Output<List<String>?> outputTypes;
  /// Gets or sets the runbook parameters.
  late final pulumi.Output<Map<String, RunbookParameterResponse>?> parameters;
  /// Gets or sets the provisioning state of the runbook.
  late final pulumi.Output<String?> provisioningState;
  /// Gets or sets the published runbook content link.
  late final pulumi.Output<ContentLinkResponse?> publishContentLink;
  /// Gets or sets the type of the runbook.
  late final pulumi.Output<String?> runbookType;
  /// Runtime Environment of the runbook execution.
  late final pulumi.Output<String?> runtimeEnvironment;
  /// Gets or sets the state of the runbook.
  late final pulumi.Output<String?> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Runbook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Runbook]. {@macro pulumi_automation_runbook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Runbook(
    String name, {
    RunbookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Runbook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    draft = registerOutput<RunbookDraftResponse?>('draft', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunbookDraftResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    jobCount = registerOutput<int?>('jobCount');
    lastModifiedBy = registerOutput<String?>('lastModifiedBy');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    location = registerOutput<String>('location');
    logActivityTrace = registerOutput<int?>('logActivityTrace');
    logProgress = registerOutput<bool?>('logProgress');
    logVerbose = registerOutput<bool?>('logVerbose');
    this.name = registerOutput<String>('name');
    outputTypes = registerOutput<List<String>?>('outputTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parameters = registerOutput<Map<String, RunbookParameterResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<RunbookParameterResponse>(guardedValue, (value) => RunbookParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String?>('provisioningState');
    publishContentLink = registerOutput<ContentLinkResponse?>('publishContentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runbookType = registerOutput<String?>('runbookType');
    runtimeEnvironment = registerOutput<String?>('runtimeEnvironment');
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Runbook] resource.
  Runbook.reference(String urn)
    : super(
        'azure-native:automation:Runbook',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    draft = registerOutput<RunbookDraftResponse?>('draft', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunbookDraftResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    jobCount = registerOutput<int?>('jobCount');
    lastModifiedBy = registerOutput<String?>('lastModifiedBy');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    location = registerOutput<String>('location');
    logActivityTrace = registerOutput<int?>('logActivityTrace');
    logProgress = registerOutput<bool?>('logProgress');
    logVerbose = registerOutput<bool?>('logVerbose');
    this.name = registerOutput<String>('name');
    outputTypes = registerOutput<List<String>?>('outputTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parameters = registerOutput<Map<String, RunbookParameterResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<RunbookParameterResponse>(guardedValue, (value) => RunbookParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String?>('provisioningState');
    publishContentLink = registerOutput<ContentLinkResponse?>('publishContentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runbookType = registerOutput<String?>('runbookType');
    runtimeEnvironment = registerOutput<String?>('runtimeEnvironment');
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
