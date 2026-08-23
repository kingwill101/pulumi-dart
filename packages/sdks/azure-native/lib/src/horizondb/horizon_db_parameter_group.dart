import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_parameter_group_args.dart';
import 'horizon_db_parameter_group_properties_response.dart';
import 'system_data_response.dart';

/// Represents the HorizonDB parameter group.
///
/// Uses Azure REST API version 2026-01-20-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a HorizonDB parameter group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var horizonDbParameterGroup = new AzureNative.HorizonDb.HorizonDbParameterGroup("horizonDbParameterGroup", new()
///     {
///         Location = "westus2",
///         ParameterGroupName = "exampleparametergroup",
///         Properties = new AzureNative.HorizonDb.Inputs.HorizonDbParameterGroupPropertiesArgs
///         {
///             ApplyImmediately = true,
///             Description = "Parameter group for high-throughput workloads",
///             Parameters = new[]
///             {
///                 new AzureNative.HorizonDb.Inputs.ParameterPropertiesArgs
///                 {
///                     Name = "max_connections",
///                     Value = "200",
///                 },
///                 new AzureNative.HorizonDb.Inputs.ParameterPropertiesArgs
///                 {
///                     Name = "log_min_error_statement",
///                     Value = "error",
///                 },
///                 new AzureNative.HorizonDb.Inputs.ParameterPropertiesArgs
///                 {
///                     Name = "shared_buffers",
///                     Value = "2000",
///                 },
///             },
///             PgVersion = 17,
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         Tags =
///         {
///             { "env", "dev" },
///             { "team", "data-platform" },
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
/// 	horizondb "github.com/pulumi/pulumi-azure-native-sdk/horizondb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := horizondb.NewHorizonDbParameterGroup(ctx, "horizonDbParameterGroup", &horizondb.HorizonDbParameterGroupArgs{
/// 			Location:           pulumi.String("westus2"),
/// 			ParameterGroupName: pulumi.String("exampleparametergroup"),
/// 			Properties: &horizondb.HorizonDbParameterGroupPropertiesArgs{
/// 				ApplyImmediately: pulumi.Bool(true),
/// 				Description:      pulumi.String("Parameter group for high-throughput workloads"),
/// 				Parameters: horizondb.ParameterPropertiesArray{
/// 					&horizondb.ParameterPropertiesArgs{
/// 						Name:  pulumi.String("max_connections"),
/// 						Value: pulumi.String("200"),
/// 					},
/// 					&horizondb.ParameterPropertiesArgs{
/// 						Name:  pulumi.String("log_min_error_statement"),
/// 						Value: pulumi.String("error"),
/// 					},
/// 					&horizondb.ParameterPropertiesArgs{
/// 						Name:  pulumi.String("shared_buffers"),
/// 						Value: pulumi.String("2000"),
/// 					},
/// 				},
/// 				PgVersion: pulumi.Int(17),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			Tags: pulumi.StringMap{
/// 				"env":  pulumi.String("dev"),
/// 				"team": pulumi.String("data-platform"),
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
/// resource "azure-native_horizondb_horizondbparametergroup" "horizonDbParameterGroup" {
///   location             = "westus2"
///   parameter_group_name = "exampleparametergroup"
///   properties = {
///     apply_immediately = true
///     description       = "Parameter group for high-throughput workloads"
///     parameters = [{
///       "name"  = "max_connections"
///       "value" = "200"
///       }, {
///       "name"  = "log_min_error_statement"
///       "value" = "error"
///       }, {
///       "name"  = "shared_buffers"
///       "value" = "2000"
///     }]
///     pg_version = 17
///   }
///   resource_group_name = "exampleresourcegroup"
///   tags = {
///     "env"  = "dev"
///     "team" = "data-platform"
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
/// import com.pulumi.azurenative.horizondb.HorizonDbParameterGroup;
/// import com.pulumi.azurenative.horizondb.HorizonDbParameterGroupArgs;
/// import com.pulumi.azurenative.horizondb.inputs.HorizonDbParameterGroupPropertiesArgs;
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
///         var horizonDbParameterGroup = new HorizonDbParameterGroup("horizonDbParameterGroup", HorizonDbParameterGroupArgs.builder()
///             .location("westus2")
///             .parameterGroupName("exampleparametergroup")
///             .properties(HorizonDbParameterGroupPropertiesArgs.builder()
///                 .applyImmediately(true)
///                 .description("Parameter group for high-throughput workloads")
///                 .parameters(
///                     ParameterPropertiesArgs.builder()
///                         .name("max_connections")
///                         .value("200")
///                         .build(),
///                     ParameterPropertiesArgs.builder()
///                         .name("log_min_error_statement")
///                         .value("error")
///                         .build(),
///                     ParameterPropertiesArgs.builder()
///                         .name("shared_buffers")
///                         .value("2000")
///                         .build())
///                 .pgVersion(17)
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .tags(Map.ofEntries(
///                 Map.entry("env", "dev"),
///                 Map.entry("team", "data-platform")
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
/// const horizonDbParameterGroup = new azure_native.horizondb.HorizonDbParameterGroup("horizonDbParameterGroup", {
///     location: "westus2",
///     parameterGroupName: "exampleparametergroup",
///     properties: {
///         applyImmediately: true,
///         description: "Parameter group for high-throughput workloads",
///         parameters: [
///             {
///                 name: "max_connections",
///                 value: "200",
///             },
///             {
///                 name: "log_min_error_statement",
///                 value: "error",
///             },
///             {
///                 name: "shared_buffers",
///                 value: "2000",
///             },
///         ],
///         pgVersion: 17,
///     },
///     resourceGroupName: "exampleresourcegroup",
///     tags: {
///         env: "dev",
///         team: "data-platform",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// horizon_db_parameter_group = azure_native.horizondb.HorizonDbParameterGroup("horizonDbParameterGroup",
///     location="westus2",
///     parameter_group_name="exampleparametergroup",
///     properties={
///         "apply_immediately": True,
///         "description": "Parameter group for high-throughput workloads",
///         "parameters": [
///             {
///                 "name": "max_connections",
///                 "value": "200",
///             },
///             {
///                 "name": "log_min_error_statement",
///                 "value": "error",
///             },
///             {
///                 "name": "shared_buffers",
///                 "value": "2000",
///             },
///         ],
///         "pg_version": 17,
///     },
///     resource_group_name="exampleresourcegroup",
///     tags={
///         "env": "dev",
///         "team": "data-platform",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   horizonDbParameterGroup:
///     type: azure-native:horizondb:HorizonDbParameterGroup
///     properties:
///       location: westus2
///       parameterGroupName: exampleparametergroup
///       properties:
///         applyImmediately: true
///         description: Parameter group for high-throughput workloads
///         parameters:
///           - name: max_connections
///             value: '200'
///           - name: log_min_error_statement
///             value: error
///           - name: shared_buffers
///             value: '2000'
///         pgVersion: 17
///       resourceGroupName: exampleresourcegroup
///       tags:
///         env: dev
///         team: data-platform
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
/// $ pulumi import azure-native:horizondb:HorizonDbParameterGroup exampleparametergroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HorizonDb/parameterGroups/{parameterGroupName}
/// ```
class HorizonDbParameterGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<HorizonDbParameterGroupPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HorizonDbParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizonDbParameterGroup]. {@macro pulumi_horizondb_horizon_db_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizonDbParameterGroup(
    String name, {
    HorizonDbParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:horizondb:HorizonDbParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HorizonDbParameterGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizonDbParameterGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
