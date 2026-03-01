import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_pool_args.dart';
import 'elastic_pool_per_database_settings.dart';
import 'elastic_pool_sku.dart';

/// Allows you to manage an Azure SQL Elastic Pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "my-resource-group",
///     location: "West Europe",
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "my-sql-server",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
/// });
/// const exampleElasticPool = new azure.mssql.ElasticPool("example", {
///     name: "test-epool",
///     resourceGroupName: example.name,
///     location: example.location,
///     serverName: exampleServer.name,
///     licenseType: "LicenseIncluded",
///     maxSizeGb: 756,
///     sku: {
///         name: "BasicPool",
///         tier: "Basic",
///         family: "Gen4",
///         capacity: 4,
///     },
///     perDatabaseSettings: {
///         minCapacity: 0.25,
///         maxCapacity: 4,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="my-resource-group",
///     location="West Europe")
/// example_server = azure.mssql.Server("example",
///     name="my-sql-server",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="4dm1n157r470r",
///     administrator_login_password="4-v3ry-53cr37-p455w0rd")
/// example_elastic_pool = azure.mssql.ElasticPool("example",
///     name="test-epool",
///     resource_group_name=example.name,
///     location=example.location,
///     server_name=example_server.name,
///     license_type="LicenseIncluded",
///     max_size_gb=756,
///     sku={
///         "name": "BasicPool",
///         "tier": "Basic",
///         "family": "Gen4",
///         "capacity": 4,
///     },
///     per_database_settings={
///         "min_capacity": 0.25,
///         "max_capacity": 4,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "my-resource-group",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "my-sql-server",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
///     });
///
///     var exampleElasticPool = new Azure.MSSql.ElasticPool("example", new()
///     {
///         Name = "test-epool",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServerName = exampleServer.Name,
///         LicenseType = "LicenseIncluded",
///         MaxSizeGb = 756,
///         Sku = new Azure.MSSql.Inputs.ElasticPoolSkuArgs
///         {
///             Name = "BasicPool",
///             Tier = "Basic",
///             Family = "Gen4",
///             Capacity = 4,
///         },
///         PerDatabaseSettings = new Azure.MSSql.Inputs.ElasticPoolPerDatabaseSettingsArgs
///         {
///             MinCapacity = 0.25,
///             MaxCapacity = 4,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("my-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("my-sql-server"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword: pulumi.String("4-v3ry-53cr37-p455w0rd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewElasticPool(ctx, "example", &mssql.ElasticPoolArgs{
/// 			Name:              pulumi.String("test-epool"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ServerName:        exampleServer.Name,
/// 			LicenseType:       pulumi.String("LicenseIncluded"),
/// 			MaxSizeGb:         pulumi.Float64(756),
/// 			Sku: &mssql.ElasticPoolSkuArgs{
/// 				Name:     pulumi.String("BasicPool"),
/// 				Tier:     pulumi.String("Basic"),
/// 				Family:   pulumi.String("Gen4"),
/// 				Capacity: pulumi.Int(4),
/// 			},
/// 			PerDatabaseSettings: &mssql.ElasticPoolPerDatabaseSettingsArgs{
/// 				MinCapacity: pulumi.Float64(0.25),
/// 				MaxCapacity: pulumi.Float64(4),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.ElasticPool;
/// import com.pulumi.azure.mssql.ElasticPoolArgs;
/// import com.pulumi.azure.mssql.inputs.ElasticPoolSkuArgs;
/// import com.pulumi.azure.mssql.inputs.ElasticPoolPerDatabaseSettingsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("my-resource-group")
///             .location("West Europe")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("my-sql-server")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
///             .build());
///
///         var exampleElasticPool = new ElasticPool("exampleElasticPool", ElasticPoolArgs.builder()
///             .name("test-epool")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .serverName(exampleServer.name())
///             .licenseType("LicenseIncluded")
///             .maxSizeGb(756.0)
///             .sku(ElasticPoolSkuArgs.builder()
///                 .name("BasicPool")
///                 .tier("Basic")
///                 .family("Gen4")
///                 .capacity(4)
///                 .build())
///             .perDatabaseSettings(ElasticPoolPerDatabaseSettingsArgs.builder()
///                 .minCapacity(0.25)
///                 .maxCapacity(4.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: my-resource-group
///       location: West Europe
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: my-sql-server
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
///   exampleElasticPool:
///     type: azure:mssql:ElasticPool
///     name: example
///     properties:
///       name: test-epool
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       serverName: ${exampleServer.name}
///       licenseType: LicenseIncluded
///       maxSizeGb: 756
///       sku:
///         name: BasicPool
///         tier: Basic
///         family: Gen4
///         capacity: 4
///       perDatabaseSettings:
///         minCapacity: 0.25
///         maxCapacity: 4
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// SQL Elastic Pool can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/elasticPool:ElasticPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Sql/servers/myserver/elasticPools/myelasticpoolname
/// ```
class ElasticPool extends pulumi.CustomResource {
  /// Specifies the type of enclave to be used by the elastic pool. When `enclave_type` is not specified (e.g., the default) enclaves are not enabled on the elastic pool. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclave_type` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  ///
  /// > **Note:** All databases that are added to the elastic pool must have the same `enclave_type` as the elastic pool.
  ///
  /// > **Note:** `enclave_type` is not supported for DC-series SKUs.
  ///
  /// > **Note:** The default value for `enclave_type` field is unset not `Default`.
  late final pulumi.Output<String> enclaveType;
  /// Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  late final pulumi.Output<String> licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Public Maintenance Configuration window to apply to the elastic pool. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  late final pulumi.Output<String?> maintenanceConfigurationName;
  /// The max data size of the elastic pool in bytes. Conflicts with `max_size_gb`.
  ///
  /// > **Note:** One of either `max_size_gb` or `max_size_bytes` must be specified.
  late final pulumi.Output<int> maxSizeBytes;
  /// The max data size of the elastic pool in gigabytes. Conflicts with `max_size_bytes`.
  late final pulumi.Output<double> maxSizeGb;
  /// The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `per_database_settings` block as defined below.
  late final pulumi.Output<ElasticPoolPerDatabaseSettings> perDatabaseSettings;
  /// The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// A `sku` block as defined below.
  late final pulumi.Output<ElasticPoolSku> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether or not this elastic pool is zone redundant. `tier` needs to be `Premium` for `DTU` based or `BusinessCritical` for `vCore` based `sku`.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [ElasticPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticPool]. {@macro pulumi_mssql_elastic_pool_elastic_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticPool(
    String name, {
    ElasticPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/elasticPool:ElasticPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enclaveType = registerOutput<String>('enclaveType');
    this.licenseType = registerOutput<String>('licenseType');
    this.location = registerOutput<String>('location');
    this.maintenanceConfigurationName = registerOutput<String?>('maintenanceConfigurationName');
    this.maxSizeBytes = registerOutput<int>('maxSizeBytes');
    this.maxSizeGb = registerOutput<double>('maxSizeGb');
    this.name = registerOutput<String>('name');
    this.perDatabaseSettings = registerOutput<ElasticPoolPerDatabaseSettings>('perDatabaseSettings');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.sku = registerOutput<ElasticPoolSku>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
