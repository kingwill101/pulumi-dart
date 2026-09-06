import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_source_response.dart';
import 'dsc_configuration_args.dart';
import 'dsc_configuration_parameter_response.dart';
import 'system_data_response.dart';

/// Definition of the configuration type.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2022-08-08, 2023-05-15-preview, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dscConfiguration = new AzureNative.Automation.DscConfiguration("dscConfiguration", new()
///     {
///         AutomationAccountName = "myAutomationAccount18",
///         ConfigurationName = "SetupServer",
///         Description = "sample configuration",
///         Location = "East US 2",
///         Name = "SetupServer",
///         ResourceGroupName = "rg",
///         Source = new AzureNative.Automation.Inputs.ContentSourceArgs
///         {
///             Hash = new AzureNative.Automation.Inputs.ContentHashArgs
///             {
///                 Algorithm = "sha256",
///                 Value = "A9E5DB56BA21513F61E0B3868816FDC6D4DF5131F5617D7FF0D769674BD5072F",
///             },
///             Type = AzureNative.Automation.ContentSourceType.EmbeddedContent,
///             Value = @"Configuration SetupServer {
///     Node localhost {
///                                WindowsFeature IIS {
///                                Name = ""Web-Server"";
///             Ensure = ""Present""
///         }
///     }
/// }",
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
/// 		_, err := automation.NewDscConfiguration(ctx, "dscConfiguration", &automation.DscConfigurationArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount18"),
/// 			ConfigurationName:     pulumi.String("SetupServer"),
/// 			Description:           pulumi.String("sample configuration"),
/// 			Location:              pulumi.String("East US 2"),
/// 			Name:                  pulumi.String("SetupServer"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			Source: &automation.ContentSourceArgs{
/// 				Hash: &automation.ContentHashArgs{
/// 					Algorithm: pulumi.String("sha256"),
/// 					Value:     pulumi.String("A9E5DB56BA21513F61E0B3868816FDC6D4DF5131F5617D7FF0D769674BD5072F"),
/// 				},
/// 				Type: pulumi.String(automation.ContentSourceTypeEmbeddedContent),
/// 				Value: pulumi.String(`Configuration SetupServer {
///     Node localhost {
///                                WindowsFeature IIS {
///                                Name = "Web-Server";
///             Ensure = "Present"
///         }
///     }
/// }`),
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
/// resource "azure-native_automation_dscconfiguration" "dscConfiguration" {
///   automation_account_name = "myAutomationAccount18"
///   configuration_name      = "SetupServer"
///   description             = "sample configuration"
///   location                = "East US 2"
///   name                    = "SetupServer"
///   resource_group_name     = "rg"
///   source = {
///     hash = {
///       algorithm = "sha256"
///       value     = "A9E5DB56BA21513F61E0B3868816FDC6D4DF5131F5617D7FF0D769674BD5072F"
///     }
///     type  = "embeddedContent"
///     value = "Configuration SetupServer {\r\n    Node localhost {\r\n                               WindowsFeature IIS {\r\n                               Name = \"Web-Server\";\r\n            Ensure = \"Present\"\r\n        }\r\n    }\r\n}"
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
/// import com.pulumi.azurenative.automation.DscConfiguration;
/// import com.pulumi.azurenative.automation.DscConfigurationArgs;
/// import com.pulumi.azurenative.automation.inputs.ContentSourceArgs;
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
///         var dscConfiguration = new DscConfiguration("dscConfiguration", DscConfigurationArgs.builder()
///             .automationAccountName("myAutomationAccount18")
///             .configurationName("SetupServer")
///             .description("sample configuration")
///             .location("East US 2")
///             .name("SetupServer")
///             .resourceGroupName("rg")
///             .source(ContentSourceArgs.builder()
///                 .hash(ContentHashArgs.builder()
///                     .algorithm("sha256")
///                     .value("A9E5DB56BA21513F61E0B3868816FDC6D4DF5131F5617D7FF0D769674BD5072F")
///                     .build())
///                 .type("embeddedContent")
///                 .value("""
/// Configuration SetupServer {
///     Node localhost {
///                                WindowsFeature IIS {
///                                Name = "Web-Server";
///             Ensure = "Present"
///         }
///     }
/// }                """)
///                 .build())
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
/// const dscConfiguration = new azure_native.automation.DscConfiguration("dscConfiguration", {
///     automationAccountName: "myAutomationAccount18",
///     configurationName: "SetupServer",
///     description: "sample configuration",
///     location: "East US 2",
///     name: "SetupServer",
///     resourceGroupName: "rg",
///     source: {
///         hash: {
///             algorithm: "sha256",
///             value: "A9E5DB56BA21513F61E0B3868816FDC6D4DF5131F5617D7FF0D769674BD5072F",
///         },
///         type: azure_native.automation.ContentSourceType.EmbeddedContent,
///         value: `Configuration SetupServer {\x0d
///     Node localhost {\x0d
///                                WindowsFeature IIS {\x0d
///                                Name = "Web-Server";\x0d
///             Ensure = "Present"\x0d
///         }\x0d
///     }\x0d
/// }`,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dsc_configuration = azure_native.automation.DscConfiguration("dscConfiguration",
///     automation_account_name="myAutomationAccount18",
///     configuration_name="SetupServer",
///     description="sample configuration",
///     location="East US 2",
///     name="SetupServer",
///     resource_group_name="rg",
///     source={
///         "hash": {
///             "algorithm": "sha256",
///             "value": "A9E5DB56BA21513F61E0B3868816FDC6D4DF5131F5617D7FF0D769674BD5072F",
///         },
///         "type": azure_native.automation.ContentSourceType.EMBEDDED_CONTENT,
///         "value": """Configuration SetupServer {\x0d
///     Node localhost {\x0d
///                                WindowsFeature IIS {\x0d
///                                Name = "Web-Server";\x0d
///             Ensure = "Present"\x0d
///         }\x0d
///     }\x0d
/// }""",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dscConfiguration:
///     type: azure-native:automation:DscConfiguration
///     properties:
///       automationAccountName: myAutomationAccount18
///       configurationName: SetupServer
///       description: sample configuration
///       location: East US 2
///       name: SetupServer
///       resourceGroupName: rg
///       source:
///         hash:
///           algorithm: sha256
///           value: A9E5DB56BA21513F61E0B3868816FDC6D4DF5131F5617D7FF0D769674BD5072F
///         type: embeddedContent
///         value: "Configuration SetupServer {\r\n    Node localhost {\r\n                               WindowsFeature IIS {\r\n                               Name = \"Web-Server\";\r\n            Ensure = \"Present\"\r\n        }\r\n    }\r\n}"
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
/// $ pulumi import azure-native:automation:DscConfiguration SetupServer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/configurations/{configurationName}
/// ```
class DscConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the creation time.
  late final pulumi.Output<String?> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets or sets the etag of the resource.
  late final pulumi.Output<String?> etag;
  /// Gets or sets the job count of the configuration.
  late final pulumi.Output<int?> jobCount;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Gets or sets verbose log option.
  late final pulumi.Output<bool?> logVerbose;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the number of compiled node configurations.
  late final pulumi.Output<int?> nodeConfigurationCount;
  /// Gets or sets the configuration parameters.
  late final pulumi.Output<Map<String, DscConfigurationParameterResponse>?> parameters;
  /// Gets or sets the provisioning state of the configuration.
  late final pulumi.Output<String?> provisioningState;
  /// Gets or sets the source.
  late final pulumi.Output<ContentSourceResponse?> source;
  /// Gets or sets the state of the configuration.
  late final pulumi.Output<String?> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DscConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DscConfiguration]. {@macro pulumi_automation_dsc_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DscConfiguration(
    String name, {
    DscConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:DscConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    jobCount = registerOutput<int?>('jobCount');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    location = registerOutput<String>('location');
    logVerbose = registerOutput<bool?>('logVerbose');
    this.name = registerOutput<String>('name');
    nodeConfigurationCount = registerOutput<int?>('nodeConfigurationCount');
    parameters = registerOutput<Map<String, DscConfigurationParameterResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<DscConfigurationParameterResponse>(guardedValue, (value) => DscConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String?>('provisioningState');
    source = registerOutput<ContentSourceResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DscConfiguration] resource.
  DscConfiguration.reference(String urn)
    : super(
        'azure-native:automation:DscConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    jobCount = registerOutput<int?>('jobCount');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    location = registerOutput<String>('location');
    logVerbose = registerOutput<bool?>('logVerbose');
    this.name = registerOutput<String>('name');
    nodeConfigurationCount = registerOutput<int?>('nodeConfigurationCount');
    parameters = registerOutput<Map<String, DscConfigurationParameterResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<DscConfigurationParameterResponse>(guardedValue, (value) => DscConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String?>('provisioningState');
    source = registerOutput<ContentSourceResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
