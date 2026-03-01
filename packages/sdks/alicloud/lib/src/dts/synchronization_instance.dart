import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_instance_args.dart';
import 'synchronization_instance_state.dart';

/// Provides a DTS Synchronization Instance resource.
///
/// For information about DTS Synchronization Instance and how to use it, see [What is Synchronization Instance](https://www.alibabacloud.com/help/en/doc-detail/130744.html).
///
/// > **NOTE:** Available since v1.138.0.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultSynchronizationInstance = new alicloud.dts.SynchronizationInstance("default", {
///     paymentType: "PayAsYouGo",
///     sourceEndpointEngineName: "MySQL",
///     sourceEndpointRegion: _default.then(_default => _default.regions?.[0]?.id),
///     destinationEndpointEngineName: "MySQL",
///     destinationEndpointRegion: _default.then(_default => _default.regions?.[0]?.id),
///     instanceClass: "small",
///     syncArchitecture: "oneway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_regions(current=True)
/// default_synchronization_instance = alicloud.dts.SynchronizationInstance("default",
///     payment_type="PayAsYouGo",
///     source_endpoint_engine_name="MySQL",
///     source_endpoint_region=default.regions[0].id,
///     destination_endpoint_engine_name="MySQL",
///     destination_endpoint_region=default.regions[0].id,
///     instance_class="small",
///     sync_architecture="oneway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultSynchronizationInstance = new AliCloud.Dts.SynchronizationInstance("default", new()
///     {
///         PaymentType = "PayAsYouGo",
///         SourceEndpointEngineName = "MySQL",
///         SourceEndpointRegion = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         DestinationEndpointEngineName = "MySQL",
///         DestinationEndpointRegion = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         InstanceClass = "small",
///         SyncArchitecture = "oneway",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dts.NewSynchronizationInstance(ctx, "default", &dts.SynchronizationInstanceArgs{
/// 			PaymentType:                   pulumi.String("PayAsYouGo"),
/// 			SourceEndpointEngineName:      pulumi.String("MySQL"),
/// 			SourceEndpointRegion:          pulumi.String(_default.Regions[0].Id),
/// 			DestinationEndpointEngineName: pulumi.String("MySQL"),
/// 			DestinationEndpointRegion:     pulumi.String(_default.Regions[0].Id),
/// 			InstanceClass:                 pulumi.String("small"),
/// 			SyncArchitecture:              pulumi.String("oneway"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.dts.SynchronizationInstance;
/// import com.pulumi.alicloud.dts.SynchronizationInstanceArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultSynchronizationInstance = new SynchronizationInstance("defaultSynchronizationInstance", SynchronizationInstanceArgs.builder()
///             .paymentType("PayAsYouGo")
///             .sourceEndpointEngineName("MySQL")
///             .sourceEndpointRegion(default_.regions()[0].id())
///             .destinationEndpointEngineName("MySQL")
///             .destinationEndpointRegion(default_.regions()[0].id())
///             .instanceClass("small")
///             .syncArchitecture("oneway")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSynchronizationInstance:
///     type: alicloud:dts:SynchronizationInstance
///     name: default
///     properties:
///       paymentType: PayAsYouGo
///       sourceEndpointEngineName: MySQL
///       sourceEndpointRegion: ${default.regions[0].id}
///       destinationEndpointEngineName: MySQL
///       destinationEndpointRegion: ${default.regions[0].id}
///       instanceClass: small
///       syncArchitecture: oneway
/// variables:
///   default:
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
/// DTS Synchronization Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dts/synchronizationInstance:SynchronizationInstance example <id>
/// ```
class SynchronizationInstance extends pulumi.CustomResource {
  /// Whether to automatically renew when it expires. Valid values: `true`, `false`.
  late final pulumi.Output<String?> autoPay;
  /// Whether to automatically start the task after the purchase completed. Valid values: `true`, `false`.
  late final pulumi.Output<String?> autoStart;
  /// [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  late final pulumi.Output<int?> computeUnit;
  /// The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  late final pulumi.Output<int?> databaseCount;
  /// The type of destination engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  late final pulumi.Output<String> destinationEndpointEngineName;
  /// The region of destination instance. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  late final pulumi.Output<String> destinationEndpointRegion;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`. You can only upgrade the configuration, not downgrade the configuration. If you downgrade the instance, you need to [submit a ticket](https://selfservice.console.aliyun.com/ticket/category/dts/today).
  late final pulumi.Output<String> instanceClass;
  /// The duration of prepaid instance purchase. this parameter is required When `payment_type` equals `Subscription`.
  late final pulumi.Output<int?> paymentDuration;
  /// The payment duration unit. Valid values: `Month`, `Year`. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  late final pulumi.Output<String?> paymentDurationUnit;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The number of instances purchased.
  late final pulumi.Output<int?> quantity;
  /// The type of source endpoint engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  late final pulumi.Output<String> sourceEndpointEngineName;
  /// The region of source instance.
  late final pulumi.Output<String> sourceEndpointRegion;
  /// The status.
  late final pulumi.Output<String> status;
  /// The sync architecture. Valid values: `oneway`, `bidirectional`.
  late final pulumi.Output<String?> syncArchitecture;

  /// Creates a new [SynchronizationInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SynchronizationInstance]. {@macro pulumi_dts_synchronization_instance_synchronization_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SynchronizationInstance(
    String name, {
    SynchronizationInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/synchronizationInstance:SynchronizationInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPay = registerOutput<String?>('autoPay');
    this.autoStart = registerOutput<String?>('autoStart');
    this.computeUnit = registerOutput<int?>('computeUnit');
    this.databaseCount = registerOutput<int?>('databaseCount');
    this.destinationEndpointEngineName = registerOutput<String>('destinationEndpointEngineName');
    this.destinationEndpointRegion = registerOutput<String>('destinationEndpointRegion');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    this.paymentType = registerOutput<String>('paymentType');
    this.quantity = registerOutput<int?>('quantity');
    this.sourceEndpointEngineName = registerOutput<String>('sourceEndpointEngineName');
    this.sourceEndpointRegion = registerOutput<String>('sourceEndpointRegion');
    this.status = registerOutput<String>('status');
    this.syncArchitecture = registerOutput<String?>('syncArchitecture');
  }

  /// Gets an existing [SynchronizationInstance] resource's state with the given [name] and [id].
  static SynchronizationInstance get(
    String name,
    pulumi.Input<String> id, {
    SynchronizationInstanceState? state,
  }) {
    return SynchronizationInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SynchronizationInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/synchronizationInstance:SynchronizationInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPay = registerOutput<String?>('autoPay');
    this.autoStart = registerOutput<String?>('autoStart');
    this.computeUnit = registerOutput<int?>('computeUnit');
    this.databaseCount = registerOutput<int?>('databaseCount');
    this.destinationEndpointEngineName = registerOutput<String>('destinationEndpointEngineName');
    this.destinationEndpointRegion = registerOutput<String>('destinationEndpointRegion');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    this.paymentType = registerOutput<String>('paymentType');
    this.quantity = registerOutput<int?>('quantity');
    this.sourceEndpointEngineName = registerOutput<String>('sourceEndpointEngineName');
    this.sourceEndpointRegion = registerOutput<String>('sourceEndpointRegion');
    this.status = registerOutput<String>('status');
    this.syncArchitecture = registerOutput<String?>('syncArchitecture');
  }
}
