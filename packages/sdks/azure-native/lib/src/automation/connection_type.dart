import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_type_args.dart';
import 'field_definition_response.dart';
import 'system_data_response.dart';

/// Definition of the connection type.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update connection type
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionType = new AzureNative.Automation.ConnectionType("connectionType", new()
///     {
///         AutomationAccountName = "myAutomationAccount22",
///         ConnectionTypeName = "myCT",
///         FieldDefinitions =
///         {
///             { "myBoolField", new AzureNative.Automation.Inputs.FieldDefinitionArgs
///             {
///                 IsEncrypted = false,
///                 IsOptional = false,
///                 Type = "bool",
///             } },
///             { "myStringField", new AzureNative.Automation.Inputs.FieldDefinitionArgs
///             {
///                 IsEncrypted = false,
///                 IsOptional = false,
///                 Type = "string",
///             } },
///             { "myStringFieldEncrypted", new AzureNative.Automation.Inputs.FieldDefinitionArgs
///             {
///                 IsEncrypted = true,
///                 IsOptional = false,
///                 Type = "string",
///             } },
///         },
///         IsGlobal = false,
///         Name = "myCT",
///         ResourceGroupName = "rg",
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
/// 		_, err := automation.NewConnectionType(ctx, "connectionType", &automation.ConnectionTypeArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount22"),
/// 			ConnectionTypeName:    pulumi.String("myCT"),
/// 			FieldDefinitions: automation.FieldDefinitionMap{
/// 				"myBoolField": &automation.FieldDefinitionArgs{
/// 					IsEncrypted: pulumi.Bool(false),
/// 					IsOptional:  pulumi.Bool(false),
/// 					Type:        pulumi.String("bool"),
/// 				},
/// 				"myStringField": &automation.FieldDefinitionArgs{
/// 					IsEncrypted: pulumi.Bool(false),
/// 					IsOptional:  pulumi.Bool(false),
/// 					Type:        pulumi.String("string"),
/// 				},
/// 				"myStringFieldEncrypted": &automation.FieldDefinitionArgs{
/// 					IsEncrypted: pulumi.Bool(true),
/// 					IsOptional:  pulumi.Bool(false),
/// 					Type:        pulumi.String("string"),
/// 				},
/// 			},
/// 			IsGlobal:          pulumi.Bool(false),
/// 			Name:              pulumi.String("myCT"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// resource "azure-native_automation_connectiontype" "connectionType" {
///   automation_account_name = "myAutomationAccount22"
///   connection_type_name    = "myCT"
///   field_definitions = {
///     "myBoolField" = {
///       is_encrypted = false
///       is_optional  = false
///       type         = "bool"
///     }
///     "myStringField" = {
///       is_encrypted = false
///       is_optional  = false
///       type         = "string"
///     }
///     "myStringFieldEncrypted" = {
///       is_encrypted = true
///       is_optional  = false
///       type         = "string"
///     }
///   }
///   is_global           = false
///   name                = "myCT"
///   resource_group_name = "rg"
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
/// import com.pulumi.azurenative.automation.ConnectionType;
/// import com.pulumi.azurenative.automation.ConnectionTypeArgs;
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
///         var connectionType = new ConnectionType("connectionType", ConnectionTypeArgs.builder()
///             .automationAccountName("myAutomationAccount22")
///             .connectionTypeName("myCT")
///             .fieldDefinitions(Map.ofEntries(
///                 Map.entry("myBoolField", FieldDefinitionArgs.builder()
///                     .isEncrypted(false)
///                     .isOptional(false)
///                     .type("bool")
///                     .build()),
///                 Map.entry("myStringField", FieldDefinitionArgs.builder()
///                     .isEncrypted(false)
///                     .isOptional(false)
///                     .type("string")
///                     .build()),
///                 Map.entry("myStringFieldEncrypted", FieldDefinitionArgs.builder()
///                     .isEncrypted(true)
///                     .isOptional(false)
///                     .type("string")
///                     .build())
///             ))
///             .isGlobal(false)
///             .name("myCT")
///             .resourceGroupName("rg")
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
/// const connectionType = new azure_native.automation.ConnectionType("connectionType", {
///     automationAccountName: "myAutomationAccount22",
///     connectionTypeName: "myCT",
///     fieldDefinitions: {
///         myBoolField: {
///             isEncrypted: false,
///             isOptional: false,
///             type: "bool",
///         },
///         myStringField: {
///             isEncrypted: false,
///             isOptional: false,
///             type: "string",
///         },
///         myStringFieldEncrypted: {
///             isEncrypted: true,
///             isOptional: false,
///             type: "string",
///         },
///     },
///     isGlobal: false,
///     name: "myCT",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_type = azure_native.automation.ConnectionType("connectionType",
///     automation_account_name="myAutomationAccount22",
///     connection_type_name="myCT",
///     field_definitions={
///         "myBoolField": {
///             "is_encrypted": False,
///             "is_optional": False,
///             "type": "bool",
///         },
///         "myStringField": {
///             "is_encrypted": False,
///             "is_optional": False,
///             "type": "string",
///         },
///         "myStringFieldEncrypted": {
///             "is_encrypted": True,
///             "is_optional": False,
///             "type": "string",
///         },
///     },
///     is_global=False,
///     name="myCT",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   connectionType:
///     type: azure-native:automation:ConnectionType
///     properties:
///       automationAccountName: myAutomationAccount22
///       connectionTypeName: myCT
///       fieldDefinitions:
///         myBoolField:
///           isEncrypted: false
///           isOptional: false
///           type: bool
///         myStringField:
///           isEncrypted: false
///           isOptional: false
///           type: string
///         myStringFieldEncrypted:
///           isEncrypted: true
///           isOptional: false
///           type: string
///       isGlobal: false
///       name: myCT
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:automation:ConnectionType myCT /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/connectionTypes/{connectionTypeName}
/// ```
class ConnectionType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the creation time.
  late final pulumi.Output<String> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets the field definitions of the connection type.
  late final pulumi.Output<Map<String, FieldDefinitionResponse>> fieldDefinitions;
  /// Gets or sets a Boolean value to indicate if the connection type is global.
  late final pulumi.Output<bool?> isGlobal;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionType]. {@macro pulumi_automation_connection_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionType(
    String name, {
    ConnectionTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:ConnectionType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    fieldDefinitions = registerOutput<Map<String, FieldDefinitionResponse>>('fieldDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<FieldDefinitionResponse>(guardedValue, (value) => FieldDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isGlobal = registerOutput<bool?>('isGlobal');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ConnectionType] resource.
  ConnectionType.reference(String urn)
    : super(
        'azure-native:automation:ConnectionType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    fieldDefinitions = registerOutput<Map<String, FieldDefinitionResponse>>('fieldDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<FieldDefinitionResponse>(guardedValue, (value) => FieldDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isGlobal = registerOutput<bool?>('isGlobal');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
