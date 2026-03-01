import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_set_role_args.dart';
import 'replica_set_role_state.dart';

/// Provides an Alicloud MongoDB replica set role resource to modify the connection string of the replica set.
///
/// For information about how to modify connection string of MongoDB, see [Modify Connection String](https://alibabacloud.com/help/en/mongodb/user-guide/change-the-endpoint-and-port-of-an-instance).
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
/// // modify private network address.
/// const _private = new alicloud.mongodb.ReplicaSetRole("private", {
///     dbInstanceId: defaultInstance.id,
///     roleId: defaultInstance.replicaSets.apply(replicaSets => replicaSets[0].roleId),
///     connectionPrefix: "test-tf-private-change",
///     connectionPort: 3718,
///     networkType: "VPC",
/// });
/// // modify public network address.
/// const _public = new alicloud.mongodb.ReplicaSetRole("public", {
///     dbInstanceId: defaultInstance.id,
///     roleId: defaultPublicNetworkAddress.replicaSets.apply(replicaSets => replicaSets[0].roleId),
///     connectionPrefix: "test-tf-public-0",
///     connectionPort: 3719,
///     networkType: "Public",
/// });
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
/// # modify private network address.
/// private = alicloud.mongodb.ReplicaSetRole("private",
///     db_instance_id=default_instance.id,
///     role_id=default_instance.replica_sets[0].role_id,
///     connection_prefix="test-tf-private-change",
///     connection_port=3718,
///     network_type="VPC")
/// # modify public network address.
/// public = alicloud.mongodb.ReplicaSetRole("public",
///     db_instance_id=default_instance.id,
///     role_id=default_public_network_address.replica_sets[0].role_id,
///     connection_prefix="test-tf-public-0",
///     connection_port=3719,
///     network_type="Public")
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
///     // modify private network address.
///     var @private = new AliCloud.MongoDB.ReplicaSetRole("private", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         RoleId = defaultInstance.ReplicaSets.Apply(replicaSets => replicaSets[0].RoleId),
///         ConnectionPrefix = "test-tf-private-change",
///         ConnectionPort = 3718,
///         NetworkType = "VPC",
///     });
///
///     // modify public network address.
///     var @public = new AliCloud.MongoDB.ReplicaSetRole("public", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         RoleId = defaultPublicNetworkAddress.ReplicaSets.Apply(replicaSets => replicaSets[0].RoleId),
///         ConnectionPrefix = "test-tf-public-0",
///         ConnectionPort = 3719,
///         NetworkType = "Public",
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
/// 		defaultPublicNetworkAddress, err := mongodb.NewPublicNetworkAddress(ctx, "default", &mongodb.PublicNetworkAddressArgs{
/// 			DbInstanceId: defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// modify private network address.
/// 		_, err = mongodb.NewReplicaSetRole(ctx, "private", &mongodb.ReplicaSetRoleArgs{
/// 			DbInstanceId: defaultInstance.ID(),
/// 			RoleId: pulumi.String(defaultInstance.ReplicaSets.ApplyT(func(replicaSets []mongodb.InstanceReplicaSet) (*string, error) {
/// 				return &replicaSets[0].RoleId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ConnectionPrefix: pulumi.String("test-tf-private-change"),
/// 			ConnectionPort:   pulumi.Int(3718),
/// 			NetworkType:      pulumi.String("VPC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// modify public network address.
/// 		_, err = mongodb.NewReplicaSetRole(ctx, "public", &mongodb.ReplicaSetRoleArgs{
/// 			DbInstanceId: defaultInstance.ID(),
/// 			RoleId: pulumi.String(defaultPublicNetworkAddress.ReplicaSets.ApplyT(func(replicaSets []mongodb.PublicNetworkAddressReplicaSet) (*string, error) {
/// 				return &replicaSets[0].RoleId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ConnectionPrefix: pulumi.String("test-tf-public-0"),
/// 			ConnectionPort:   pulumi.Int(3719),
/// 			NetworkType:      pulumi.String("Public"),
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
/// import com.pulumi.alicloud.mongodb.ReplicaSetRole;
/// import com.pulumi.alicloud.mongodb.ReplicaSetRoleArgs;
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
///         // modify private network address.
///         var private_ = new ReplicaSetRole("private", ReplicaSetRoleArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .roleId(defaultInstance.replicaSets().applyValue(_replicaSets -> _replicaSets[0].roleId()))
///             .connectionPrefix("test-tf-private-change")
///             .connectionPort(3718)
///             .networkType("VPC")
///             .build());
///
///         // modify public network address.
///         var public_ = new ReplicaSetRole("public", ReplicaSetRoleArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .roleId(defaultPublicNetworkAddress.replicaSets().applyValue(_replicaSets -> _replicaSets[0].roleId()))
///             .connectionPrefix("test-tf-public-0")
///             .connectionPort(3719)
///             .networkType("Public")
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
/// MongoDB replica set role can be imported using the id, e.g. Composed of instance ID, network type and role ID with format `<db_instance_id>:<network_type>:<role_id>`.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/replicaSetRole:ReplicaSetRole example <id>
/// ```
class ReplicaSetRole extends pulumi.CustomResource {
  /// The connection address of the role.
  late final pulumi.Output<String> connectionDomain;
  /// The port of the connection string, will be computed if not specified.`
  late final pulumi.Output<int> connectionPort;
  /// The prefix of the connection string, will be computed if not specified.
  late final pulumi.Output<String> connectionPrefix;
  /// The instance ID.
  late final pulumi.Output<String> dbInstanceId;
  /// The network type of the connection string. Valid values:
  /// - `VPC`: private network address.
  /// - `Public`: public network address.
  late final pulumi.Output<String> networkType;
  /// The role of the related connection string.
  late final pulumi.Output<String> replicaSetRole;
  /// The role ID in the replica set.
  late final pulumi.Output<String> roleId;

  /// Creates a new [ReplicaSetRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaSetRole]. {@macro pulumi_mongodb_replica_set_role_replica_set_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaSetRole(
    String name, {
    ReplicaSetRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/replicaSetRole:ReplicaSetRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionDomain = registerOutput<String>('connectionDomain');
    this.connectionPort = registerOutput<int>('connectionPort');
    this.connectionPrefix = registerOutput<String>('connectionPrefix');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.networkType = registerOutput<String>('networkType');
    this.replicaSetRole = registerOutput<String>('replicaSetRole');
    this.roleId = registerOutput<String>('roleId');
  }

  /// Gets an existing [ReplicaSetRole] resource's state with the given [name] and [id].
  static ReplicaSetRole get(
    String name,
    pulumi.Input<String> id, {
    ReplicaSetRoleState? state,
  }) {
    return ReplicaSetRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicaSetRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/replicaSetRole:ReplicaSetRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionDomain = registerOutput<String>('connectionDomain');
    this.connectionPort = registerOutput<int>('connectionPort');
    this.connectionPrefix = registerOutput<String>('connectionPrefix');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.networkType = registerOutput<String>('networkType');
    this.replicaSetRole = registerOutput<String>('replicaSetRole');
    this.roleId = registerOutput<String>('roleId');
  }
}
