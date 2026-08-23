import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_server_configuration_args.dart';

/// Represents a Configuration.
///
/// Uses Azure REST API version 2017-12-01.
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
///     var singleServerConfiguration = new AzureNative.DBforPostgreSQL.SingleServerConfiguration("singleServerConfiguration", new()
///     {
///         ConfigurationName = "array_nulls",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServerConfiguration(ctx, "singleServerConfiguration", &dbforpostgresql.SingleServerConfigurationArgs{
/// 			ConfigurationName: pulumi.String("array_nulls"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_singleserverconfiguration" "singleServerConfiguration" {
///   configuration_name  = "array_nulls"
///   resource_group_name = "TestGroup"
///   server_name         = "testserver"
///   source              = "user-override"
///   value               = "off"
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerConfiguration;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerConfigurationArgs;
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
///         var singleServerConfiguration = new SingleServerConfiguration("singleServerConfiguration", SingleServerConfigurationArgs.builder()
///             .configurationName("array_nulls")
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
/// const singleServerConfiguration = new azure_native.dbforpostgresql.SingleServerConfiguration("singleServerConfiguration", {
///     configurationName: "array_nulls",
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
/// single_server_configuration = azure_native.dbforpostgresql.SingleServerConfiguration("singleServerConfiguration",
///     configuration_name="array_nulls",
///     resource_group_name="TestGroup",
///     server_name="testserver",
///     source="user-override",
///     value="off")
///
/// ```
///
/// ```yaml
/// resources:
///   singleServerConfiguration:
///     type: azure-native:dbforpostgresql:SingleServerConfiguration
///     properties:
///       configurationName: array_nulls
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
/// $ pulumi import azure-native:dbforpostgresql:SingleServerConfiguration array_nulls /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/servers/{serverName}/configurations/{configurationName}
/// ```
class SingleServerConfiguration extends pulumi.CustomResource {
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

  /// Creates a new [SingleServerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleServerConfiguration]. {@macro pulumi_dbforpostgresql_single_server_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleServerConfiguration(
    String name, {
    SingleServerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:SingleServerConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedValues = registerOutput<String>('allowedValues');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataType = registerOutput<String>('dataType');
    defaultValue = registerOutput<String>('defaultValue');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    source = registerOutput<String?>('source');
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
