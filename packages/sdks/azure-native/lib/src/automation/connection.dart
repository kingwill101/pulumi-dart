import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_type_association_property_response.dart';

/// Definition of the connection.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new AzureNative.Automation.Connection("connection", new()
///     {
///         AutomationAccountName = "myAutomationAccount28",
///         ConnectionName = "mysConnection",
///         ConnectionType = new AzureNative.Automation.Inputs.ConnectionTypeAssociationPropertyArgs
///         {
///             Name = "Azure",
///         },
///         Description = "my description goes here",
///         FieldDefinitionValues =
///         {
///             { "AutomationCertificateName", "mysCertificateName" },
///             { "SubscriptionID", "subid" },
///         },
///         Name = "mysConnection",
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
/// 		_, err := automation.NewConnection(ctx, "connection", &automation.ConnectionArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount28"),
/// 			ConnectionName:        pulumi.String("mysConnection"),
/// 			ConnectionType: &automation.ConnectionTypeAssociationPropertyArgs{
/// 				Name: pulumi.String("Azure"),
/// 			},
/// 			Description: pulumi.String("my description goes here"),
/// 			FieldDefinitionValues: pulumi.StringMap{
/// 				"AutomationCertificateName": pulumi.String("mysCertificateName"),
/// 				"SubscriptionID":            pulumi.String("subid"),
/// 			},
/// 			Name:              pulumi.String("mysConnection"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.automation.Connection;
/// import com.pulumi.azurenative.automation.ConnectionArgs;
/// import com.pulumi.azurenative.automation.inputs.ConnectionTypeAssociationPropertyArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .automationAccountName("myAutomationAccount28")
///             .connectionName("mysConnection")
///             .connectionType(ConnectionTypeAssociationPropertyArgs.builder()
///                 .name("Azure")
///                 .build())
///             .description("my description goes here")
///             .fieldDefinitionValues(Map.ofEntries(
///                 Map.entry("AutomationCertificateName", "mysCertificateName"),
///                 Map.entry("SubscriptionID", "subid")
///             ))
///             .name("mysConnection")
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
/// const connection = new azure_native.automation.Connection("connection", {
///     automationAccountName: "myAutomationAccount28",
///     connectionName: "mysConnection",
///     connectionType: {
///         name: "Azure",
///     },
///     description: "my description goes here",
///     fieldDefinitionValues: {
///         AutomationCertificateName: "mysCertificateName",
///         SubscriptionID: "subid",
///     },
///     name: "mysConnection",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection = azure_native.automation.Connection("connection",
///     automation_account_name="myAutomationAccount28",
///     connection_name="mysConnection",
///     connection_type={
///         "name": "Azure",
///     },
///     description="my description goes here",
///     field_definition_values={
///         "AutomationCertificateName": "mysCertificateName",
///         "SubscriptionID": "subid",
///     },
///     name="mysConnection",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   connection:
///     type: azure-native:automation:Connection
///     properties:
///       automationAccountName: myAutomationAccount28
///       connectionName: mysConnection
///       connectionType:
///         name: Azure
///       description: my description goes here
///       fieldDefinitionValues:
///         AutomationCertificateName: mysCertificateName
///         SubscriptionID: subid
///       name: mysConnection
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
/// $ pulumi import azure-native:automation:Connection mysConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/connections/{connectionName}
/// ```
class Connection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the connectionType of the connection.
  late final pulumi.Output<ConnectionTypeAssociationPropertyResponse?> connectionType;
  /// Gets the creation time.
  late final pulumi.Output<String> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets the field definition values of the connection.
  late final pulumi.Output<Map<String, String>> fieldDefinitionValues;
  /// Gets the last modified time.
  late final pulumi.Output<String> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_automation_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionType = registerOutput<ConnectionTypeAssociationPropertyResponse?>('connectionType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionTypeAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    fieldDefinitionValues = registerOutput<Map<String, String>>('fieldDefinitionValues');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
