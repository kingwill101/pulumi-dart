import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Time Series Database (TSDB) Instance resource.
///
/// For information about Time Series Database (TSDB) Instance and how to use it, see [What is Time Series Database (TSDB)](https://www.alibabacloud.com/help/en/doc-detail/55652.htm).
///
/// > **NOTE:** Available since v1.112.0.
///
/// > **DEPRECATED:**  This resource has been [deprecated](https://www.alibabacloud.com/en/notice/0313tsdb?_p_lc=1) from version `1.223.1`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.tsdb.getZones({});
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     cidrBlock: "192.168.0.0/16",
///     name: "tf-testaccTsdbInstance",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     availabilityZone: example.then(example => example.ids?.[0]),
///     cidrBlock: "192.168.1.0/24",
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.tsdb.Instance("example", {
///     paymentType: "PayAsYouGo",
///     vswitchId: exampleSwitch.id,
///     instanceStorage: "50",
///     instanceClass: "tsdb.1x.basic",
///     engineType: "tsdb_tsdb",
///     instanceAlias: "tf-testaccTsdbInstance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.tsdb.get_zones()
/// example_network = alicloud.vpc.Network("example",
///     cidr_block="192.168.0.0/16",
///     name="tf-testaccTsdbInstance")
/// example_switch = alicloud.vpc.Switch("example",
///     availability_zone=example.ids[0],
///     cidr_block="192.168.1.0/24",
///     vpc_id=example_network.id)
/// example_instance = alicloud.tsdb.Instance("example",
///     payment_type="PayAsYouGo",
///     vswitch_id=example_switch.id,
///     instance_storage="50",
///     instance_class="tsdb.1x.basic",
///     engine_type="tsdb_tsdb",
///     instance_alias="tf-testaccTsdbInstance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Tsdb.GetZones.Invoke();
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///         Name = "tf-testaccTsdbInstance",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Ids[0]),
///         CidrBlock = "192.168.1.0/24",
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Tsdb.Instance("example", new()
///     {
///         PaymentType = "PayAsYouGo",
///         VswitchId = exampleSwitch.Id,
///         InstanceStorage = "50",
///         InstanceClass = "tsdb.1x.basic",
///         EngineType = "tsdb_tsdb",
///         InstanceAlias = "tf-testaccTsdbInstance",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/tsdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := tsdb.GetZones(ctx, &tsdb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 			Name:      pulumi.String("tf-testaccTsdbInstance"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			AvailabilityZone: pulumi.String(example.Ids[0]),
/// 			CidrBlock:        pulumi.String("192.168.1.0/24"),
/// 			VpcId:            exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tsdb.NewInstance(ctx, "example", &tsdb.InstanceArgs{
/// 			PaymentType:     pulumi.String("PayAsYouGo"),
/// 			VswitchId:       exampleSwitch.ID(),
/// 			InstanceStorage: pulumi.String("50"),
/// 			InstanceClass:   pulumi.String("tsdb.1x.basic"),
/// 			EngineType:      pulumi.String("tsdb_tsdb"),
/// 			InstanceAlias:   pulumi.String("tf-testaccTsdbInstance"),
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
/// import com.pulumi.alicloud.tsdb.TsdbFunctions;
/// import com.pulumi.alicloud.tsdb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.tsdb.Instance;
/// import com.pulumi.alicloud.tsdb.InstanceArgs;
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
///         final var example = TsdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .name("tf-testaccTsdbInstance")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .availabilityZone(example.ids()[0])
///             .cidrBlock("192.168.1.0/24")
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .paymentType("PayAsYouGo")
///             .vswitchId(exampleSwitch.id())
///             .instanceStorage("50")
///             .instanceClass("tsdb.1x.basic")
///             .engineType("tsdb_tsdb")
///             .instanceAlias("tf-testaccTsdbInstance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       cidrBlock: 192.168.0.0/16
///       name: tf-testaccTsdbInstance
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       availabilityZone: ${example.ids[0]}
///       cidrBlock: 192.168.1.0/24
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:tsdb:Instance
///     name: example
///     properties:
///       paymentType: PayAsYouGo
///       vswitchId: ${exampleSwitch.id}
///       instanceStorage: '50'
///       instanceClass: tsdb.1x.basic
///       engineType: tsdb_tsdb
///       instanceAlias: tf-testaccTsdbInstance
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:tsdb:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// TSDB Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:tsdb/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// The app key.
  late final pulumi.Output<String?> appKey;
  /// The disk type of instance. Valid when the engine type is `tsdb_influxdb`. `cloud_ssd` refers to SSD disk, `cloud_efficiency` refers to efficiency disk, `cloud_essd` refers to ESSD PL1 disk. Valid values: `cloud_efficiency`, `cloud_essd`, `cloud_ssd`.
  late final pulumi.Output<String?> diskCategory;
  /// The duration.
  late final pulumi.Output<String?> duration;
  /// The engine type of instance Enumerative: `tsdb_tsdb` refers to TSDB, `tsdb_influxdb` refers to TSDB for InfluxDB️.
  late final pulumi.Output<String?> engineType;
  /// The alias of the instance.
  late final pulumi.Output<String?> instanceAlias;
  /// The specification of the instance.
  /// - Following enumerative value for TSDB for InfluxDB️ standart edition:
  /// - `influxdata.n1.mxlarge` refers to 2 CPU 8GB memory;
  /// - `influxdata.n1.xlarge` refers to 4 CPU 16GB memory;
  /// - `influxdata.n1.2xlarge` refers to 8 CPU 32 GB memory;
  /// - `influxdata.n1.4xlarge` refers to 16 CPU 64 GB memory;
  /// - `influxdata.n1.8xlarge` refers to 32 CPU 128 GB memory;
  /// - `influxdata.n1.16xlarge` refers to 64 CPU 256 GB memory.
  /// - Following enumerative value for TSDB for InfluxDB High-availability edition:
  /// - `influxdata.n1.mxlarge_ha` refers to 2 CPU 8GB memory;
  /// - `influxdata.n1.xlarge_ha` refers to 4 CPU 16GB memory;
  /// - `influxdata.n1.2xlarge_ha` refers to 8 CPU 32 GB memory;
  /// - `influxdata.n1.4xlarge_ha` refers to 16 CPU 64 GB memory;
  /// - `influxdata.n1.8xlarge_ha` refers to 32 CPU 128 GB memory;
  /// - `influxdata.n1.16xlarge_ha` refers to 64 CPU 256 GB memory.
  /// - Following enumerative value for TSDB:
  /// - `tsdb.1x.basic` refers to basic edition I;
  /// - `tsdb.3x.basic` refers to basic edition II;
  /// - `tsdb.4x.basic` refers to basic edtion III;
  /// - `tsdb.12x.standard` refers to standard edition I;
  /// - `tsdb.24x.standard` refers to standard edition II;
  /// - `tsdb.48x.large` refers to ultimate edition I;
  /// - `tsdb.96x.large` refers to ultimate edition II.
  late final pulumi.Output<String> instanceClass;
  /// The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB. Does not support shrink storage.
  late final pulumi.Output<String> instanceStorage;
  /// The billing method. Valid values: `PayAsYouGo` and `Subscription`. The `PayAsYouGo` value indicates the pay-as-you-go method, and the `Subscription` value indicates the subscription method.
  late final pulumi.Output<String> paymentType;
  /// Instance status, enumerative: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`.
  late final pulumi.Output<String> status;
  /// The vswitch id.
  late final pulumi.Output<String> vswitchId;
  /// The zone ID of the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_tsdb_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tsdb/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appKey = registerOutput<String?>('appKey');
    this.diskCategory = registerOutput<String?>('diskCategory');
    this.duration = registerOutput<String?>('duration');
    this.engineType = registerOutput<String?>('engineType');
    this.instanceAlias = registerOutput<String?>('instanceAlias');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.instanceStorage = registerOutput<String>('instanceStorage');
    this.paymentType = registerOutput<String>('paymentType');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
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
          'alicloud:tsdb/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appKey = registerOutput<String?>('appKey');
    this.diskCategory = registerOutput<String?>('diskCategory');
    this.duration = registerOutput<String?>('duration');
    this.engineType = registerOutput<String?>('engineType');
    this.instanceAlias = registerOutput<String?>('instanceAlias');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.instanceStorage = registerOutput<String>('instanceStorage');
    this.paymentType = registerOutput<String>('paymentType');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
