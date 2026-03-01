import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';

/// Represents a Configuration.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
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
///     var configuration = new AzureNative.DBforMariaDB.Configuration("configuration", new()
///     {
///         ConfigurationName = "event_scheduler",
///         ResourceGroupName = "TestGroup",
///         ServerName = "testserver",
///         Source = "user-override",
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
/// 	dbformariadb "github.com/pulumi/pulumi-azure-native-sdk/dbformariadb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformariadb.NewConfiguration(ctx, "configuration", &dbformariadb.ConfigurationArgs{
/// 			ConfigurationName: pulumi.String("event_scheduler"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			ServerName:        pulumi.String("testserver"),
/// 			Source:            pulumi.String("user-override"),
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
/// import com.pulumi.azurenative.dbformariadb.Configuration;
/// import com.pulumi.azurenative.dbformariadb.ConfigurationArgs;
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
/// const configuration = new azure_native.dbformariadb.Configuration("configuration", {
///     configurationName: "event_scheduler",
///     resourceGroupName: "TestGroup",
///     serverName: "testserver",
///     source: "user-override",
///     value: "off",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration = azure_native.dbformariadb.Configuration("configuration",
///     configuration_name="event_scheduler",
///     resource_group_name="TestGroup",
///     server_name="testserver",
///     source="user-override",
///     value="off")
///
/// ```
///
/// ```yaml
/// resources:
///   configuration:
///     type: azure-native:dbformariadb:Configuration
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
/// $ pulumi import azure-native:dbformariadb:Configuration event_scheduler /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMariaDB/servers/{serverName}/configurations/{configurationName}
/// ```
class Configuration extends pulumi.CustomResource {
  /// Allowed values of the configuration.
  late final pulumi.Output<String> allowedValues;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Data type of the configuration.
  late final pulumi.Output<String> dataType;
  /// Default value of the configuration.
  late final pulumi.Output<String> defaultValue;
  /// Description of the configuration.
  late final pulumi.Output<String> description;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Source of the configuration.
  late final pulumi.Output<String?> source;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Value of the configuration.
  late final pulumi.Output<String?> value;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_dbformariadb_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformariadb:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedValues = registerOutput<String>('allowedValues');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.dataType = registerOutput<String>('dataType');
    this.defaultValue = registerOutput<String>('defaultValue');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.source = registerOutput<String?>('source');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String?>('value');
  }
}
