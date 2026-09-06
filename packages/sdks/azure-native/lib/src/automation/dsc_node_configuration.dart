import 'package:pulumi/pulumi.dart' as pulumi;
import 'dsc_configuration_association_property_response.dart';
import 'dsc_node_configuration_args.dart';
import 'system_data_response.dart';

/// Definition of the dsc node configuration.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2018-01-15, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create node configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dscNodeConfiguration = new AzureNative.Automation.DscNodeConfiguration("dscNodeConfiguration", new()
///     {
///         AutomationAccountName = "myAutomationAccount20",
///         Configuration = new AzureNative.Automation.Inputs.DscConfigurationAssociationPropertyArgs
///         {
///             Name = "configName",
///         },
///         IncrementNodeConfigurationBuild = true,
///         Name = "configName.nodeConfigName",
///         NodeConfigurationName = "configName.nodeConfigName",
///         ResourceGroupName = "rg",
///         Source = new AzureNative.Automation.Inputs.ContentSourceArgs
///         {
///             Hash = new AzureNative.Automation.Inputs.ContentHashArgs
///             {
///                 Algorithm = "sha256",
///                 Value = "6DE256A57F01BFA29B88696D5E77A383D6E61484C7686E8DB955FA10ACE9FFE5",
///             },
///             Type = AzureNative.Automation.ContentSourceType.EmbeddedContent,
///             Value = @"
/// instance of MSFT_RoleResource as $MSFT_RoleResource1ref
/// {
/// ResourceID = ""[WindowsFeature]IIS"";
///  Ensure = ""Present"";
///  SourceInfo = ""::3::32::WindowsFeature"";
///  Name = ""Web-Server"";
///  ModuleName = ""PsDesiredStateConfiguration"";
///
/// ModuleVersion = ""1.0"";
///  ConfigurationName = ""configName"";
/// };
/// instance of OMI_ConfigurationDocument
///
///                     {
///  Version=""2.0.0"";
///
///                         MinimumCompatibleVersion = ""1.0.0"";
///
///                         CompatibleVersionAdditionalProperties= {""Omi_BaseResource:ConfigurationName""};
///
///                         Author=""weijiel"";
///
///                         GenerationDate=""03/30/2017 13:40:25"";
///
///                         GenerationHost=""TEST-BACKEND"";
///
///                         Name=""configName"";
///
///                     };
/// ",
///             Version = "1.0",
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
/// 		_, err := automation.NewDscNodeConfiguration(ctx, "dscNodeConfiguration", &automation.DscNodeConfigurationArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount20"),
/// 			Configuration: &automation.DscConfigurationAssociationPropertyArgs{
/// 				Name: pulumi.String("configName"),
/// 			},
/// 			IncrementNodeConfigurationBuild: pulumi.Bool(true),
/// 			Name:                            pulumi.String("configName.nodeConfigName"),
/// 			NodeConfigurationName:           pulumi.String("configName.nodeConfigName"),
/// 			ResourceGroupName:               pulumi.String("rg"),
/// 			Source: &automation.ContentSourceArgs{
/// 				Hash: &automation.ContentHashArgs{
/// 					Algorithm: pulumi.String("sha256"),
/// 					Value:     pulumi.String("6DE256A57F01BFA29B88696D5E77A383D6E61484C7686E8DB955FA10ACE9FFE5"),
/// 				},
/// 				Type: pulumi.String(automation.ContentSourceTypeEmbeddedContent),
/// 				Value: pulumi.String(`
/// instance of MSFT_RoleResource as $MSFT_RoleResource1ref
/// {
/// ResourceID = "[WindowsFeature]IIS";
///  Ensure = "Present";
///  SourceInfo = "::3::32::WindowsFeature";
///  Name = "Web-Server";
///  ModuleName = "PsDesiredStateConfiguration";
///
/// ModuleVersion = "1.0";
///  ConfigurationName = "configName";
/// };
/// instance of OMI_ConfigurationDocument
///
///                     {
///  Version="2.0.0";
///
///                         MinimumCompatibleVersion = "1.0.0";
///
///                         CompatibleVersionAdditionalProperties= {"Omi_BaseResource:ConfigurationName"};
///
///                         Author="weijiel";
///
///                         GenerationDate="03/30/2017 13:40:25";
///
///                         GenerationHost="TEST-BACKEND";
///
///                         Name="configName";
///
///                     };
/// `),
/// 				Version: pulumi.String("1.0"),
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
/// resource "azure-native_automation_dscnodeconfiguration" "dscNodeConfiguration" {
///   automation_account_name = "myAutomationAccount20"
///   configuration = {
///     name = "configName"
///   }
///   increment_node_configuration_build = true
///   name                               = "configName.nodeConfigName"
///   node_configuration_name            = "configName.nodeConfigName"
///   resource_group_name                = "rg"
///   source = {
///     hash = {
///       algorithm = "sha256"
///       value     = "6DE256A57F01BFA29B88696D5E77A383D6E61484C7686E8DB955FA10ACE9FFE5"
///     }
///     type    = "embeddedContent"
///     value   = "\r\ninstance of MSFT_RoleResource as $MSFT_RoleResource1ref\r\n{\r\nResourceID = \"[WindowsFeature]IIS\";\r\n Ensure = \"Present\";\r\n SourceInfo = \"::3::32::WindowsFeature\";\r\n Name = \"Web-Server\";\r\n ModuleName = \"PsDesiredStateConfiguration\";\r\n\r\nModuleVersion = \"1.0\";\r\r\n ConfigurationName = \"configName\";\r\r\n};\r\ninstance of OMI_ConfigurationDocument\r\n\r\r\n                    {\r\n Version=\"2.0.0\";\r\n \r\r\n                        MinimumCompatibleVersion = \"1.0.0\";\r\n \r\r\n                        CompatibleVersionAdditionalProperties= {\"Omi_BaseResource:ConfigurationName\"};\r\n \r\r\n                        Author=\"weijiel\";\r\n \r\r\n                        GenerationDate=\"03/30/2017 13:40:25\";\r\n \r\r\n                        GenerationHost=\"TEST-BACKEND\";\r\n \r\r\n                        Name=\"configName\";\r\n\r\r\n                    };\r\n"
///     version = "1.0"
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
/// import com.pulumi.azurenative.automation.DscNodeConfiguration;
/// import com.pulumi.azurenative.automation.DscNodeConfigurationArgs;
/// import com.pulumi.azurenative.automation.inputs.DscConfigurationAssociationPropertyArgs;
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
///         var dscNodeConfiguration = new DscNodeConfiguration("dscNodeConfiguration", DscNodeConfigurationArgs.builder()
///             .automationAccountName("myAutomationAccount20")
///             .configuration(DscConfigurationAssociationPropertyArgs.builder()
///                 .name("configName")
///                 .build())
///             .incrementNodeConfigurationBuild(true)
///             .name("configName.nodeConfigName")
///             .nodeConfigurationName("configName.nodeConfigName")
///             .resourceGroupName("rg")
///             .source(ContentSourceArgs.builder()
///                 .hash(ContentHashArgs.builder()
///                     .algorithm("sha256")
///                     .value("6DE256A57F01BFA29B88696D5E77A383D6E61484C7686E8DB955FA10ACE9FFE5")
///                     .build())
///                 .type("embeddedContent")
///                 .value("""
///
/// instance of MSFT_RoleResource as $MSFT_RoleResource1ref
/// {
/// ResourceID = "[WindowsFeature]IIS";
///  Ensure = "Present";
///  SourceInfo = "::3::32::WindowsFeature";
///  Name = "Web-Server";
///  ModuleName = "PsDesiredStateConfiguration";
///
/// ModuleVersion = "1.0";
///  ConfigurationName = "configName";
/// };
/// instance of OMI_ConfigurationDocument
///
///                     {
///  Version="2.0.0";
///
///                         MinimumCompatibleVersion = "1.0.0";
///
///                         CompatibleVersionAdditionalProperties= {"Omi_BaseResource:ConfigurationName"};
///
///                         Author="weijiel";
///
///                         GenerationDate="03/30/2017 13:40:25";
///
///                         GenerationHost="TEST-BACKEND";
///
///                         Name="configName";
///
///                     };
///                 """)
///                 .version("1.0")
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
/// const dscNodeConfiguration = new azure_native.automation.DscNodeConfiguration("dscNodeConfiguration", {
///     automationAccountName: "myAutomationAccount20",
///     configuration: {
///         name: "configName",
///     },
///     incrementNodeConfigurationBuild: true,
///     name: "configName.nodeConfigName",
///     nodeConfigurationName: "configName.nodeConfigName",
///     resourceGroupName: "rg",
///     source: {
///         hash: {
///             algorithm: "sha256",
///             value: "6DE256A57F01BFA29B88696D5E77A383D6E61484C7686E8DB955FA10ACE9FFE5",
///         },
///         type: azure_native.automation.ContentSourceType.EmbeddedContent,
///         value: `\x0d
/// instance of MSFT_RoleResource as MSFT_RoleResource1ref\x0d
/// {\x0d
/// ResourceID = "[WindowsFeature]IIS";\x0d
///  Ensure = "Present";\x0d
///  SourceInfo = "::3::32::WindowsFeature";\x0d
///  Name = "Web-Server";\x0d
///  ModuleName = "PsDesiredStateConfiguration";\x0d
/// \x0d
/// ModuleVersion = "1.0";\x0d\x0d
///  ConfigurationName = "configName";\x0d\x0d
/// };\x0d
/// instance of OMI_ConfigurationDocument\x0d
/// \x0d\x0d
///                     {\x0d
///  Version="2.0.0";\x0d
///  \x0d\x0d
///                         MinimumCompatibleVersion = "1.0.0";\x0d
///  \x0d\x0d
///                         CompatibleVersionAdditionalProperties= {"Omi_BaseResource:ConfigurationName"};\x0d
///  \x0d\x0d
///                         Author="weijiel";\x0d
///  \x0d\x0d
///                         GenerationDate="03/30/2017 13:40:25";\x0d
///  \x0d\x0d
///                         GenerationHost="TEST-BACKEND";\x0d
///  \x0d\x0d
///                         Name="configName";\x0d
/// \x0d\x0d
///                     };\x0d
/// `,
///         version: "1.0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dsc_node_configuration = azure_native.automation.DscNodeConfiguration("dscNodeConfiguration",
///     automation_account_name="myAutomationAccount20",
///     configuration={
///         "name": "configName",
///     },
///     increment_node_configuration_build=True,
///     name="configName.nodeConfigName",
///     node_configuration_name="configName.nodeConfigName",
///     resource_group_name="rg",
///     source={
///         "hash": {
///             "algorithm": "sha256",
///             "value": "6DE256A57F01BFA29B88696D5E77A383D6E61484C7686E8DB955FA10ACE9FFE5",
///         },
///         "type": azure_native.automation.ContentSourceType.EMBEDDED_CONTENT,
///         "value": """\x0d
/// instance of MSFT_RoleResource as $MSFT_RoleResource1ref\x0d
/// {\x0d
/// ResourceID = "[WindowsFeature]IIS";\x0d
///  Ensure = "Present";\x0d
///  SourceInfo = "::3::32::WindowsFeature";\x0d
///  Name = "Web-Server";\x0d
///  ModuleName = "PsDesiredStateConfiguration";\x0d
/// \x0d
/// ModuleVersion = "1.0";\x0d\x0d
///  ConfigurationName = "configName";\x0d\x0d
/// };\x0d
/// instance of OMI_ConfigurationDocument\x0d
/// \x0d\x0d
///                     {\x0d
///  Version="2.0.0";\x0d
///  \x0d\x0d
///                         MinimumCompatibleVersion = "1.0.0";\x0d
///  \x0d\x0d
///                         CompatibleVersionAdditionalProperties= {"Omi_BaseResource:ConfigurationName"};\x0d
///  \x0d\x0d
///                         Author="weijiel";\x0d
///  \x0d\x0d
///                         GenerationDate="03/30/2017 13:40:25";\x0d
///  \x0d\x0d
///                         GenerationHost="TEST-BACKEND";\x0d
///  \x0d\x0d
///                         Name="configName";\x0d
/// \x0d\x0d
///                     };\x0d
/// """,
///         "version": "1.0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dscNodeConfiguration:
///     type: azure-native:automation:DscNodeConfiguration
///     properties:
///       automationAccountName: myAutomationAccount20
///       configuration:
///         name: configName
///       incrementNodeConfigurationBuild: true
///       name: configName.nodeConfigName
///       nodeConfigurationName: configName.nodeConfigName
///       resourceGroupName: rg
///       source:
///         hash:
///           algorithm: sha256
///           value: 6DE256A57F01BFA29B88696D5E77A383D6E61484C7686E8DB955FA10ACE9FFE5
///         type: embeddedContent
///         value: "\r\ninstance of MSFT_RoleResource as $MSFT_RoleResource1ref\r\n{\r\nResourceID = \"[WindowsFeature]IIS\";\r\n Ensure = \"Present\";\r\n SourceInfo = \"::3::32::WindowsFeature\";\r\n Name = \"Web-Server\";\r\n ModuleName = \"PsDesiredStateConfiguration\";\r\n\r\nModuleVersion = \"1.0\";\r\r\n ConfigurationName = \"configName\";\r\r\n};\r\ninstance of OMI_ConfigurationDocument\r\n\r\r\n                    {\r\n Version=\"2.0.0\";\r\n \r\r\n                        MinimumCompatibleVersion = \"1.0.0\";\r\n \r\r\n                        CompatibleVersionAdditionalProperties= {\"Omi_BaseResource:ConfigurationName\"};\r\n \r\r\n                        Author=\"weijiel\";\r\n \r\r\n                        GenerationDate=\"03/30/2017 13:40:25\";\r\n \r\r\n                        GenerationHost=\"TEST-BACKEND\";\r\n \r\r\n                        Name=\"configName\";\r\n\r\r\n                    };\r\n"
///         version: '1.0'
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
/// $ pulumi import azure-native:automation:DscNodeConfiguration configName.nodeConfigName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/nodeConfigurations/{nodeConfigurationName}
/// ```
class DscNodeConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the configuration of the node.
  late final pulumi.Output<DscConfigurationAssociationPropertyResponse?> configuration;
  /// Gets or sets creation time.
  late final pulumi.Output<String?> creationTime;
  /// If a new build version of NodeConfiguration is required.
  late final pulumi.Output<bool?> incrementNodeConfigurationBuild;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Number of nodes with this node configuration assigned
  late final pulumi.Output<double?> nodeCount;
  /// Source of node configuration.
  late final pulumi.Output<String?> source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DscNodeConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DscNodeConfiguration]. {@macro pulumi_automation_dsc_node_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DscNodeConfiguration(
    String name, {
    DscNodeConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:DscNodeConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configuration = registerOutput<DscConfigurationAssociationPropertyResponse?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DscConfigurationAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String?>('creationTime');
    incrementNodeConfigurationBuild = registerOutput<bool?>('incrementNodeConfigurationBuild');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<double?>('nodeCount');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DscNodeConfiguration] resource.
  DscNodeConfiguration.reference(String urn)
    : super(
        'azure-native:automation:DscNodeConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configuration = registerOutput<DscConfigurationAssociationPropertyResponse?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DscConfigurationAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String?>('creationTime');
    incrementNodeConfigurationBuild = registerOutput<bool?>('incrementNodeConfigurationBuild');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<double?>('nodeCount');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
