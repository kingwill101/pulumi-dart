import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Dts Instance resource.
///
/// For information about Dts Instance and how to use it, see [What is Instance](https://www.alibabacloud.com/help/en/data-transmission-service/latest/createdtsinstance).
///
/// &gt; **NOTE:** Available since v1.198.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInstance = new alicloud.dts.Instance("default", {
///     type: "sync",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     paymentType: "Subscription",
///     instanceClass: "large",
///     sourceEndpointEngineName: "MySQL",
///     sourceRegion: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///     destinationEndpointEngineName: "MySQL",
///     destinationRegion: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_regions = alicloud.get_regions(current=True)
/// default_instance = alicloud.dts.Instance("default",
///     type="sync",
///     resource_group_id=default.ids[0],
///     payment_type="Subscription",
///     instance_class="large",
///     source_endpoint_engine_name="MySQL",
///     source_region=default_get_regions.regions[0].id,
///     destination_endpoint_engine_name="MySQL",
///     destination_region=default_get_regions.regions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInstance = new AliCloud.Dts.Instance("default", new()
///     {
///         Type = "sync",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         PaymentType = "Subscription",
///         InstanceClass = "large",
///         SourceEndpointEngineName = "MySQL",
///         SourceRegion = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         DestinationEndpointEngineName = "MySQL",
///         DestinationRegion = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dts.NewInstance(ctx, "default", &dts.InstanceArgs{
/// 			Type:                          pulumi.String("sync"),
/// 			ResourceGroupId:               pulumi.String(_default.Ids[0]),
/// 			PaymentType:                   pulumi.String("Subscription"),
/// 			InstanceClass:                 pulumi.String("large"),
/// 			SourceEndpointEngineName:      pulumi.String("MySQL"),
/// 			SourceRegion:                  pulumi.String(defaultGetRegions.Regions[0].Id),
/// 			DestinationEndpointEngineName: pulumi.String("MySQL"),
/// 			DestinationRegion:             pulumi.String(defaultGetRegions.Regions[0].Id),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.dts.Instance;
/// import com.pulumi.alicloud.dts.InstanceArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .type("sync")
///             .resourceGroupId(default_.ids()[0])
///             .paymentType("Subscription")
///             .instanceClass("large")
///             .sourceEndpointEngineName("MySQL")
///             .sourceRegion(defaultGetRegions.regions()[0].id())
///             .destinationEndpointEngineName("MySQL")
///             .destinationRegion(defaultGetRegions.regions()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInstance:
///     type: alicloud:dts:Instance
///     name: default
///     properties:
///       type: sync
///       resourceGroupId: ${default.ids[0]}
///       paymentType: Subscription
///       instanceClass: large
///       sourceEndpointEngineName: MySQL
///       sourceRegion: ${defaultGetRegions.regions[0].id}
///       destinationEndpointEngineName: MySQL
///       destinationRegion: ${defaultGetRegions.regions[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Dts Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dts/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Whether to automatically renew the fee when it expires. Valid values:
  /// - **false**: No, the default value.
  /// - **true**: Yes.
  late final pulumi.Output<bool?> autoPay;
  /// Whether to start the task automatically after the purchase is completed. Value:
  /// - **false**: No, the default value.
  /// - **true**: Yes.
  late final pulumi.Output<bool?> autoStart;
  /// Specifications of ETL. The unit is compute unit (CU),1CU = 1vCPU +4GB of memory. The value range is an integer greater than or equal to 2. **NOTE:** Enter this parameter and enable ETL to clean and convert data.
  late final pulumi.Output<int?> computeUnit;
  /// Instance creation time
  late final pulumi.Output<String> createTime;
  /// The number of private custom RDS instances in the PolarDB-X. The default value is **1**. **NOTE:** This parameter is required only when **source_endpoint_engine_name** is **DRDS**.
  late final pulumi.Output<int> databaseCount;
  /// The target database engine type.
  /// - **MySQL**:MySQL databases (including RDS MySQL and self-built MySQL).
  /// - **PolarDB**:PolarDB MySQL.
  /// - **polardb_o**:PolarDB O engine.
  /// - **polardb_pg**:PolarDB PostgreSQL.
  /// - **Redis**:Redis databases (including apsaradb for Redis and user-created Redis).
  /// - **DRDS**: cloud-native distributed database PolarDB-X 1.0 and 2.0.
  /// - **PostgreSQL**: User-created PostgreSQL.
  /// - **odps**: MaxCompute project.
  /// - **oracle**: self-built Oracle.
  /// - **mongodb**:MongoDB databases (including apsaradb for MongoDB and user-created MongoDB).
  /// - **tidb**:TiDB database.
  /// - **ADS**: Cloud native data warehouse AnalyticDB MySQL 2.0.
  /// - **ADB30**: Cloud native data warehouse AnalyticDB MySQL 3.0.
  /// - **Greenplum**: Cloud native data warehouse AnalyticDB PostgreSQL.
  /// - **MSSQL**:SQL Server databases (including RDS SQL Server and self-built SQL Server).
  /// - **kafka**:Kafka databases (including Kafka and self-built Kafka).
  /// - **DataHub**: DataHub, an Alibaba cloud streaming data service.
  /// - **clickhouse**: ClickHouse.
  /// - **DB2**: self-built DB2 LUW.
  /// - **as400**:AS/400.
  /// - **Tablestore**: Tablestore.
  /// - **NOTE:**
  /// - The default value is **MySQL**.
  /// - For more information about the supported source and destination databases, see [Database, Synchronization Initialization Type, and Synchronization Topology](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-synchronization-scenarios-1) and [Supported Database and Migration Type](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-migration-scenarios).
  /// - This parameter or **job_id** must be passed in.
  late final pulumi.Output<String> destinationEndpointEngineName;
  /// The target instance region. For more information, see [List of supported regions](https://www.alibabacloud.com/help/en/data-transmission-service/latest/list-of-supported-regions). **NOTE:** This parameter or **job_id** must be passed in.
  late final pulumi.Output<String?> destinationRegion;
  /// The ID of the subscription instance.
  late final pulumi.Output<String> dtsInstanceId;
  /// Assign a specified number of DU resources to DTS tasks in the DTS exclusive cluster. Valid values: **1** ~ **100**. **NOTE:** The value of this parameter must be within the range of the number of DUs available for the DTS dedicated cluster.
  late final pulumi.Output<int?> du;
  /// Subscription billing type, Valid values: `ONLY_CONFIGURATION_FEE`: charges only configuration fees; `CONFIGURATION_FEE_AND_DATA_FEE`: charges configuration fees and data traffic fees.
  late final pulumi.Output<String?> feeType;
  /// The type of the migration or synchronization instance.
  /// - The specifications of the migration instance: **xxlarge**, **xlarge**, **large**, **medium**, **small**.
  /// - The types of synchronization instances: **large**, **medium**, **small**, **micro**.
  /// - **NOTE:** For performance descriptions of different specifications, see [Data Migration Link Specifications](https://www.alibabacloud.com/help/en/data-transmission-service/latest/cd773b) and [Data Synchronization Link Specifications](https://www.alibabacloud.com/help/en/data-transmission-service/latest/6bce7c).
  late final pulumi.Output<String?> instanceClass;
  /// The name of Dts instance.
  late final pulumi.Output<String> instanceName;
  /// The ID of the task obtained by calling the **ConfigureDtsJob** operation (**DtsJobId**).&gt; After you pass in this parameter, you do not need to pass the **source_region**, **destination_region**, **type**, **source_endpoint_engine_name**, or **destination_endpoint_engine_name** parameters. Even if the input is passed in, the configuration in **job_id** shall prevail.
  late final pulumi.Output<String?> jobId;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  late final pulumi.Output<String?> paymentType;
  /// The billing method of the subscription instance. Value: `Year`, `Month`. **NOTE:** This parameter is valid and must be passed in only when `payment_type` is `Subscription`.
  late final pulumi.Output<String?> period;
  /// Resource Group ID.
  late final pulumi.Output<String> resourceGroupId;
  /// Source instance database engine type.
  /// - **MySQL**:MySQL databases (including RDS MySQL and self-built MySQL).
  /// - **PolarDB**:PolarDB MySQL.
  /// - **polardb_o**:PolarDB O engine.
  /// - **polardb_pg**:PolarDB PostgreSQL.
  /// - **Redis**:Redis databases (including apsaradb for Redis and user-created Redis).
  /// - **DRDS**: cloud-native distributed database PolarDB-X 1.0 and 2.0.
  /// - **PostgreSQL**: User-created PostgreSQL.
  /// - **odps**: MaxCompute project.
  /// - **oracle**: self-built Oracle.
  /// - **mongodb**:MongoDB databases (including apsaradb for MongoDB and user-created MongoDB).
  /// - **tidb**:TiDB database.
  /// - **ADS**: Cloud native data warehouse AnalyticDB MySQL 2.0.
  /// - **ADB30**: Cloud native data warehouse AnalyticDB MySQL 3.0.
  /// - **Greenplum**: Cloud native data warehouse AnalyticDB PostgreSQL.
  /// - **MSSQL**:SQL Server databases (including RDS SQL Server and self-built SQL Server).
  /// - **kafka**:Kafka databases (including Kafka and self-built Kafka).
  /// - **DataHub**: DataHub, an Alibaba cloud streaming data service.
  /// - **clickhouse**: ClickHouse.
  /// - **DB2**: self-built DB2 LUW.
  /// - **as400**:AS/400.
  /// - **Tablestore**: Tablestore.
  /// - **NOTE:**
  /// - The default value is **MySQL**.
  /// - For more information about the supported source and destination databases, see [Database, Synchronization Initialization Type, and Synchronization Topology](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-synchronization-scenarios-1) and [Supported Database and Migration Type](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-migration-scenarios).
  /// - This parameter or **job_id** must be passed in.
  late final pulumi.Output<String> sourceEndpointEngineName;
  /// The source instance region. For more information, see [List of supported regions](https://www.alibabacloud.com/help/en/data-transmission-service/latest/list-of-supported-regions). **NOTE:** This parameter or **job_id** must be passed in.
  late final pulumi.Output<String?> sourceRegion;
  /// Instance status.
  late final pulumi.Output<String> status;
  /// Synchronization topology, value:
  /// - **oneway**: one-way synchronization, the default value.
  /// - **bidirectional**: two-way synchronization.
  late final pulumi.Output<String?> syncArchitecture;
  /// The synchronization direction. Default value: `Forward`. Valid values:
  /// - `Forward`: Data is synchronized from the source database to the destination database.
  /// - `Reverse`: Data is synchronized from the destination database to the source database.
  /// - **NOTE:** You can set this parameter to Reverse to delete the reverse synchronization task only if the topology is two-way synchronization.
  late final pulumi.Output<String?> synchronizationDirection;
  /// The tag value corresponding to the tag key.See the following `Block Tags`.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The instance type. Valid values:
  /// - **migration**: MIGRATION.
  /// - **sync**: synchronization.
  /// - **subscribe**: SUBSCRIBE.
  /// - **NOTE:** This parameter or **job_id** must be passed in.
  late final pulumi.Output<String?> type;
  /// Prepaid instance purchase duration.
  /// - When **period** is **Month**, the values are: 1, 2, 3, 4, 5, 6, 7, 8, and 9.
  /// - When **Period** is **Year**, the values are 1, 2, 3, and 5.
  /// - **NOTE:**
  /// - This parameter is valid and must be passed in only when **payment_type** is `Subscription`.
  /// - The billing method of the subscription instance. You can set the parameter `period`.
  late final pulumi.Output<int?> usedTime;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_dts_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoStart = registerOutput<bool?>('autoStart');
    computeUnit = registerOutput<int?>('computeUnit');
    createTime = registerOutput<String>('createTime');
    databaseCount = registerOutput<int>('databaseCount');
    destinationEndpointEngineName = registerOutput<String>('destinationEndpointEngineName');
    destinationRegion = registerOutput<String?>('destinationRegion');
    dtsInstanceId = registerOutput<String>('dtsInstanceId');
    du = registerOutput<int?>('du');
    feeType = registerOutput<String?>('feeType');
    instanceClass = registerOutput<String?>('instanceClass');
    instanceName = registerOutput<String>('instanceName');
    jobId = registerOutput<String?>('jobId');
    paymentType = registerOutput<String?>('paymentType');
    period = registerOutput<String?>('period');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    sourceEndpointEngineName = registerOutput<String>('sourceEndpointEngineName');
    sourceRegion = registerOutput<String?>('sourceRegion');
    status = registerOutput<String>('status');
    syncArchitecture = registerOutput<String?>('syncArchitecture');
    synchronizationDirection = registerOutput<String?>('synchronizationDirection');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String?>('type');
    usedTime = registerOutput<int?>('usedTime');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoStart = registerOutput<bool?>('autoStart');
    computeUnit = registerOutput<int?>('computeUnit');
    createTime = registerOutput<String>('createTime');
    databaseCount = registerOutput<int>('databaseCount');
    destinationEndpointEngineName = registerOutput<String>('destinationEndpointEngineName');
    destinationRegion = registerOutput<String?>('destinationRegion');
    dtsInstanceId = registerOutput<String>('dtsInstanceId');
    du = registerOutput<int?>('du');
    feeType = registerOutput<String?>('feeType');
    instanceClass = registerOutput<String?>('instanceClass');
    instanceName = registerOutput<String>('instanceName');
    jobId = registerOutput<String?>('jobId');
    paymentType = registerOutput<String?>('paymentType');
    period = registerOutput<String?>('period');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    sourceEndpointEngineName = registerOutput<String>('sourceEndpointEngineName');
    sourceRegion = registerOutput<String?>('sourceRegion');
    status = registerOutput<String>('status');
    syncArchitecture = registerOutput<String?>('syncArchitecture');
    synchronizationDirection = registerOutput<String?>('synchronizationDirection');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String?>('type');
    usedTime = registerOutput<int?>('usedTime');
  }
}
