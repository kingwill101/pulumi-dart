import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'system_data_response.dart';

/// Represents a Configuration.
///
/// Uses Azure REST API version 2023-12-30. In version 2.x of the Azure Native provider, it used API version 2022-01-01.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configuration = new AzureNative.DBforMySQL.Configuration("configuration", new()
///     {
///         ConfigurationName = "event_scheduler",
///         ResourceGroupName = "TestGroup",
///         ServerName = "testserver",
///         Source = AzureNative.DBforMySQL.ConfigurationSource.User_override,
///         Value = "off",
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
/// 	dbformysql "github.com/pulumi/pulumi-azure-native-sdk/dbformysql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformysql.NewConfiguration(ctx, "configuration", &dbformysql.ConfigurationArgs{
/// 			ConfigurationName: pulumi.String("event_scheduler"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			ServerName:        pulumi.String("testserver"),
/// 			Source:            pulumi.String(dbformysql.ConfigurationSource_User_Override),
/// 			Value:             pulumi.String("off"),
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
/// import com.pulumi.azurenative.dbformysql.Configuration;
/// import com.pulumi.azurenative.dbformysql.ConfigurationArgs;
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
///             .configurationName("event_scheduler")
///             .resourceGroupName("TestGroup")
///             .serverName("testserver")
///             .source("user-override")
///             .value("off")
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
/// const configuration = new azure_native.dbformysql.Configuration("configuration", {
///     configurationName: "event_scheduler",
///     resourceGroupName: "TestGroup",
///     serverName: "testserver",
///     source: azure_native.dbformysql.ConfigurationSource.User_override,
///     value: "off",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration = azure_native.dbformysql.Configuration("configuration",
///     configuration_name="event_scheduler",
///     resource_group_name="TestGroup",
///     server_name="testserver",
///     source=azure_native.dbformysql.ConfigurationSource.USER_OVERRIDE,
///     value="off")
///
/// ```
///
/// ```yaml
/// resources:
///   configuration:
///     type: azure-native:dbformysql:Configuration
///     properties:
///       configurationName: event_scheduler
///       resourceGroupName: TestGroup
///       serverName: testserver
///       source: user-override
///       value: off
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
/// $ pulumi import azure-native:dbformysql:Configuration event_scheduler /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/configurations/{configurationName}
/// ```
class Configuration extends pulumi.CustomResource {
  /// Allowed values of the configuration.
  late final pulumi.Output<String> allowedValues;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Current value of the configuration.
  late final pulumi.Output<String?> currentValue;

  /// Data type of the configuration.
  late final pulumi.Output<String> dataType;

  /// Default value of the configuration.
  late final pulumi.Output<String> defaultValue;

  /// Description of the configuration.
  late final pulumi.Output<String> description;

  /// The link used to get the document from community or Azure site.
  late final pulumi.Output<String> documentationLink;

  /// If is the configuration pending restart or not.
  late final pulumi.Output<String> isConfigPendingRestart;

  /// If is the configuration dynamic.
  late final pulumi.Output<String> isDynamicConfig;

  /// If is the configuration read only.
  late final pulumi.Output<String> isReadOnly;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Source of the configuration.
  late final pulumi.Output<String?> source;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Value of the configuration.
  late final pulumi.Output<String?> value;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_dbformysql_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dbformysql:Configuration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedValues = registerOutput<String>('allowedValues');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    currentValue = registerOutput<String?>('currentValue');
    dataType = registerOutput<String>('dataType');
    defaultValue = registerOutput<String>('defaultValue');
    description = registerOutput<String>('description');
    documentationLink = registerOutput<String>('documentationLink');
    isConfigPendingRestart = registerOutput<String>('isConfigPendingRestart');
    isDynamicConfig = registerOutput<String>('isDynamicConfig');
    isReadOnly = registerOutput<String>('isReadOnly');
    this.name = registerOutput<String>('name');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
