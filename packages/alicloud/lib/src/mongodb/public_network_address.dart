import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_network_address_args.dart';
import 'public_network_address_replica_set.dart';

/// Provides an Alicloud MongoDB public network address resource.
///
/// For information about MongoDB public network address and how to use it, see [Allocate Public Network Address for MongoDB](https://www.alibabacloud.com/help/en/mongodb/getting-started/apply-for-a-public-endpoint-for-an-apsaradb-for-mongodb-instance-optional).
///
/// > **NOTE:** Available since v1.248.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.mongodb.getZones({});
/// const index = _default.then(_default => _default.zones).length.apply(length => length - 1);
/// const zoneId = _default.then(_default => _default.zones[index].id);
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     cidrBlock: "10.0.0.0/8",
///     vpcName: name,
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     zoneId: zoneId,
///     cidrBlock: "10.0.0.0/24",
/// });
/// const defaultInstance = new alicloud.mongodb.Instance("default", {
///     engineVersion: "4.4",
///     storageType: "cloud_essd1",
///     vswitchId: defaultSwitch.id,
///     dbInstanceStorage: 20,
///     vpcId: defaultNetwork.id,
///     dbInstanceClass: "mdb.shard.4x.large.d",
///     storageEngine: "WiredTiger",
///     networkType: "VPC",
///     zoneId: zoneId,
/// });
/// const defaultPublicNetworkAddress = new alicloud.mongodb.PublicNetworkAddress("default", {dbInstanceId: defaultInstance.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.mongodb.get_zones()
/// index = len(default.zones).apply(lambda length: length - 1)
/// zone_id = default.zones[index].id
/// default_network = alicloud.vpc.Network("default",
///     cidr_block="10.0.0.0/8",
///     vpc_name=name)
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     zone_id=zone_id,
///     cidr_block="10.0.0.0/24")
/// default_instance = alicloud.mongodb.Instance("default",
///     engine_version="4.4",
///     storage_type="cloud_essd1",
///     vswitch_id=default_switch.id,
///     db_instance_storage=20,
///     vpc_id=default_network.id,
///     db_instance_class="mdb.shard.4x.large.d",
///     storage_engine="WiredTiger",
///     network_type="VPC",
///     zone_id=zone_id)
/// default_public_network_address = alicloud.mongodb.PublicNetworkAddress("default", db_instance_id=default_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.MongoDB.GetZones.Invoke();
///
///     var index = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)).Length.Apply(length => length - 1);
///
///     var zoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[index].Id);
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "10.0.0.0/8",
///         VpcName = name,
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         ZoneId = zoneId,
///         CidrBlock = "10.0.0.0/24",
///     });
///
///     var defaultInstance = new AliCloud.MongoDB.Instance("default", new()
///     {
///         EngineVersion = "4.4",
///         StorageType = "cloud_essd1",
///         VswitchId = defaultSwitch.Id,
///         DbInstanceStorage = 20,
///         VpcId = defaultNetwork.Id,
///         DbInstanceClass = "mdb.shard.4x.large.d",
///         StorageEngine = "WiredTiger",
///         NetworkType = "VPC",
///         ZoneId = zoneId,
///     });
///
///     var defaultPublicNetworkAddress = new AliCloud.MongoDB.PublicNetworkAddress("default", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := mongodb.GetZones(ctx, &mongodb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		index := len(_default.Zones).ApplyT(func(length int) (float64, error) {
/// 			return float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output)), nil
/// 		}).(pulumi.Float64Output)
/// 		zoneId := _default.Zones[index].Id
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:     defaultNetwork.ID(),
/// 			ZoneId:    pulumi.String(zoneId),
/// 			CidrBlock: pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := mongodb.NewInstance(ctx, "default", &mongodb.InstanceArgs{
/// 			EngineVersion:     pulumi.String("4.4"),
/// 			StorageType:       pulumi.String("cloud_essd1"),
/// 			VswitchId:         defaultSwitch.ID(),
/// 			DbInstanceStorage: pulumi.Int(20),
/// 			VpcId:             defaultNetwork.ID(),
/// 			DbInstanceClass:   pulumi.String("mdb.shard.4x.large.d"),
/// 			StorageEngine:     pulumi.String("WiredTiger"),
/// 			NetworkType:       pulumi.String("VPC"),
/// 			ZoneId:            pulumi.String(zoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongodb.NewPublicNetworkAddress(ctx, "default", &mongodb.PublicNetworkAddressArgs{
/// 			DbInstanceId: defaultInstance.ID(),
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.mongodb.Instance;
/// import com.pulumi.alicloud.mongodb.InstanceArgs;
/// import com.pulumi.alicloud.mongodb.PublicNetworkAddress;
/// import com.pulumi.alicloud.mongodb.PublicNetworkAddressArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = MongodbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var index = default_.zones().length().applyValue(_length -> _length - 1);
///
///         final var zoneId = default_.zones()[index].id();
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .cidrBlock("10.0.0.0/8")
///             .vpcName(name)
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .zoneId(zoneId)
///             .cidrBlock("10.0.0.0/24")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engineVersion("4.4")
///             .storageType("cloud_essd1")
///             .vswitchId(defaultSwitch.id())
///             .dbInstanceStorage(20)
///             .vpcId(defaultNetwork.id())
///             .dbInstanceClass("mdb.shard.4x.large.d")
///             .storageEngine("WiredTiger")
///             .networkType("VPC")
///             .zoneId(zoneId)
///             .build());
///
///         var defaultPublicNetworkAddress = new PublicNetworkAddress("defaultPublicNetworkAddress", PublicNetworkAddressArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MongoDB public network address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/publicNetworkAddress:PublicNetworkAddress example <id>
/// ```
class PublicNetworkAddress extends pulumi.CustomResource {
  /// The instance ID.
  late final pulumi.Output<String> dbInstanceId;
  /// Replica set instance information.
  late final pulumi.Output<List<PublicNetworkAddressReplicaSet>> replicaSets;

  /// Creates a new [PublicNetworkAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicNetworkAddress]. {@macro pulumi_mongodb_public_network_address_public_network_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicNetworkAddress(
    String name, {
    PublicNetworkAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/publicNetworkAddress:PublicNetworkAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.replicaSets = registerOutput<List<PublicNetworkAddressReplicaSet>>('replicaSets');
  }
}
