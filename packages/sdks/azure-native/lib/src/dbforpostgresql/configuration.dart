import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'system_data_response.dart';

/// Configuration (also known as server parameter).
///
/// Uses Azure REST API version 2025-08-01. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update, using Put verb, the value assigned to a specific modifiable configuration (also known as server parameter) of a server.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configuration = new AzureNative.DBforPostgreSQL.Configuration("configuration", new()
///     {
///         ConfigurationName = "constraint_exclusion",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         Source = "user-override",
///         Value = "on",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewConfiguration(ctx, "configuration", &dbforpostgresql.ConfigurationArgs{
/// 			ConfigurationName: pulumi.String("constraint_exclusion"),
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			Source:            pulumi.String("user-override"),
/// 			Value:             pulumi.String("on"),
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
/// import com.pulumi.azurenative.dbforpostgresql.Configuration;
/// import com.pulumi.azurenative.dbforpostgresql.ConfigurationArgs;
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
///         var configuration = new Configuration("configuration", ConfigurationArgs.builder()
///             .configurationName("constraint_exclusion")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .source("user-override")
///             .value("on")
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
/// const configuration = new azure_native.dbforpostgresql.Configuration("configuration", {
///     configurationName: "constraint_exclusion",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     source: "user-override",
///     value: "on",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration = azure_native.dbforpostgresql.Configuration("configuration",
///     configuration_name="constraint_exclusion",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     source="user-override",
///     value="on")
///
/// ```
///
/// ```yaml
/// resources:
///   configuration:
///     type: azure-native:dbforpostgresql:Configuration
///     properties:
///       configurationName: constraint_exclusion
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       source: user-override
///       value: on
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
/// $ pulumi import azure-native:dbforpostgresql:Configuration myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/configurations/{configurationName}
/// ```
class Configuration extends pulumi.CustomResource {
  /// Allowed values of the configuration (also known as server parameter).
  late final pulumi.Output<String> allowedValues;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Data type of the configuration (also known as server parameter).
  late final pulumi.Output<String> dataType;
  /// Value assigned by default to the configuration (also known as server parameter).
  late final pulumi.Output<String> defaultValue;
  /// Description of the configuration (also known as server parameter).
  late final pulumi.Output<String> description;
  /// Link pointing to the documentation of the configuration (also known as server parameter).
  late final pulumi.Output<String> documentationLink;
  /// Indicates if the value assigned to the configuration (also known as server parameter) is pending a server restart for it to take effect.
  late final pulumi.Output<bool> isConfigPendingRestart;
  /// Indicates if it's a dynamic (true) or static (false) configuration (also known as server parameter). Static server parameters require a server restart after changing the value assigned to them, for the change to take effect. Dynamic server parameters do not require a server restart after changing the value assigned to them, for the change to take effect.
  late final pulumi.Output<bool> isDynamicConfig;
  /// Indicates if it's a read-only (true) or modifiable (false) configuration (also known as server parameter).
  late final pulumi.Output<bool> isReadOnly;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Source of the value assigned to the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  late final pulumi.Output<String?> source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Units in which the configuration (also known as server parameter) value is expressed.
  late final pulumi.Output<String> unit;
  /// Value of the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  late final pulumi.Output<String?> value;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_dbforpostgresql_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedValues = registerOutput<String>('allowedValues');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataType = registerOutput<String>('dataType');
    defaultValue = registerOutput<String>('defaultValue');
    description = registerOutput<String>('description');
    documentationLink = registerOutput<String>('documentationLink');
    isConfigPendingRestart = registerOutput<bool>('isConfigPendingRestart');
    isDynamicConfig = registerOutput<bool>('isDynamicConfig');
    isReadOnly = registerOutput<bool>('isReadOnly');
    this.name = registerOutput<String>('name');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    unit = registerOutput<String>('unit');
    value = registerOutput<String?>('value');
  }
}
