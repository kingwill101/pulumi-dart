import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_args.dart';
import 'db_instance_state.dart';

/// Provides a Graph Database Db Instance resource.
///
/// For information about Graph Database Db Instance and how to use it, see [What is Db Instance](https://www.alibabacloud.com/help/en/graph-compute/latest/placeholder).
///
/// &gt; **NOTE:** Available since v1.136.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const example = new alicloud.graphdatabase.DbInstance("example", {
///     dbNodeClass: "gdb.r.2xlarge",
///     dbInstanceNetworkType: "vpc",
///     dbVersion: "1.0",
///     dbInstanceCategory: "HA",
///     dbInstanceStorageType: "cloud_ssd",
///     dbNodeStorage: 50,
///     paymentType: "PayAsYouGo",
///     dbInstanceDescription: name,
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
/// example = alicloud.graphdatabase.DbInstance("example",
///     db_node_class="gdb.r.2xlarge",
///     db_instance_network_type="vpc",
///     db_version="1.0",
///     db_instance_category="HA",
///     db_instance_storage_type="cloud_ssd",
///     db_node_storage=50,
///     payment_type="PayAsYouGo",
///     db_instance_description=name)
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
///     var example = new AliCloud.GraphDatabase.DbInstance("example", new()
///     {
///         DbNodeClass = "gdb.r.2xlarge",
///         DbInstanceNetworkType = "vpc",
///         DbVersion = "1.0",
///         DbInstanceCategory = "HA",
///         DbInstanceStorageType = "cloud_ssd",
///         DbNodeStorage = 50,
///         PaymentType = "PayAsYouGo",
///         DbInstanceDescription = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/graphdatabase"
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
/// 		_, err := graphdatabase.NewDbInstance(ctx, "example", &graphdatabase.DbInstanceArgs{
/// 			DbNodeClass:           pulumi.String("gdb.r.2xlarge"),
/// 			DbInstanceNetworkType: pulumi.String("vpc"),
/// 			DbVersion:             pulumi.String("1.0"),
/// 			DbInstanceCategory:    pulumi.String("HA"),
/// 			DbInstanceStorageType: pulumi.String("cloud_ssd"),
/// 			DbNodeStorage:         pulumi.Int(50),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
/// 			DbInstanceDescription: pulumi.String(name),
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
/// import com.pulumi.alicloud.graphdatabase.DbInstance;
/// import com.pulumi.alicloud.graphdatabase.DbInstanceArgs;
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
///         var example = new DbInstance("example", DbInstanceArgs.builder()
///             .dbNodeClass("gdb.r.2xlarge")
///             .dbInstanceNetworkType("vpc")
///             .dbVersion("1.0")
///             .dbInstanceCategory("HA")
///             .dbInstanceStorageType("cloud_ssd")
///             .dbNodeStorage(50)
///             .paymentType("PayAsYouGo")
///             .dbInstanceDescription(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:graphdatabase:DbInstance
///     properties:
///       dbNodeClass: gdb.r.2xlarge
///       dbInstanceNetworkType: vpc
///       dbVersion: '1.0'
///       dbInstanceCategory: HA
///       dbInstanceStorageType: cloud_ssd
///       dbNodeStorage: '50'
///       paymentType: PayAsYouGo
///       dbInstanceDescription: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Graph Database Db Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:graphdatabase/dbInstance:DbInstance example <id>
/// ```
class DbInstance extends pulumi.CustomResource {
  /// (Available in 1.196.0+)  The connection string of the instance.
  late final pulumi.Output<String> connectionString;
  /// The category of the db instance. Valid values: `HA`, `SINGLE`(Available in 1.173.0+).
  late final pulumi.Output<String> dbInstanceCategory;
  /// According to the practical example or notes.
  late final pulumi.Output<String?> dbInstanceDescription;
  /// IP ADDRESS whitelist for the instance group list. See `db_instance_ip_array` below.
  late final pulumi.Output<List<Map<String, dynamic>>> dbInstanceIpArrays;
  /// The network type of the db instance. Valid values: `vpc`.
  late final pulumi.Output<String> dbInstanceNetworkType;
  /// Disk storage type. Valid values: `cloud_essd`, `cloud_ssd`. Modification is not supported.
  late final pulumi.Output<String> dbInstanceStorageType;
  /// The class of the db node. Valid values: `gdb.r.xlarge`, `gdb.r.2xlarge`, `gdb.r.4xlarge`, `gdb.r.8xlarge`, `gdb.r.16xlarge`, `gdb.r.xlarge_basic`, `gdb.r.2xlarge_basic`, `gdb.r.4xlarge_basic`, `gdb.r.8xlarge_basic`, `gdb.r.16xlarge_basic`.
  late final pulumi.Output<String> dbNodeClass;
  /// Instance storage space, which is measured in GB.
  late final pulumi.Output<int> dbNodeStorage;
  /// Kernel Version. Valid values: `1.0` or `1.0-OpenCypher`. `1.0`: represented as gremlin, `1.0-OpenCypher`: said opencypher.
  late final pulumi.Output<String> dbVersion;
  /// The paymen type of the resource. Valid values: `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// (Available in 1.196.0+) The connection port of the instance.
  late final pulumi.Output<String> port;
  /// Instance status. Value range: `Creating`, `Running`, `Deleting`, `Rebooting`, `DBInstanceClassChanging`, `NetAddressCreating` and `NetAddressDeleting`.
  late final pulumi.Output<String> status;
  /// ID of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The ID of attaching vswitch to instance.
  late final pulumi.Output<String> vswitchId;
  /// The zone ID of the resource.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DbInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbInstance]. {@macro pulumi_graphdatabase_db_instance_db_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbInstance(
    String name, {
    DbInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:graphdatabase/dbInstance:DbInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionString = registerOutput<String>('connectionString');
    dbInstanceCategory = registerOutput<String>('dbInstanceCategory');
    dbInstanceDescription = registerOutput<String?>('dbInstanceDescription');
    dbInstanceIpArrays = registerOutput<List<Map<String, dynamic>>>('dbInstanceIpArrays');
    dbInstanceNetworkType = registerOutput<String>('dbInstanceNetworkType');
    dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    dbNodeClass = registerOutput<String>('dbNodeClass');
    dbNodeStorage = registerOutput<int>('dbNodeStorage');
    dbVersion = registerOutput<String>('dbVersion');
    paymentType = registerOutput<String>('paymentType');
    port = registerOutput<String>('port');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DbInstance] resource's state with the given [name] and [id].
  static DbInstance get(
    String name,
    pulumi.Input<String> id, {
    DbInstanceState? state,
  }) {
    return DbInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DbInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:graphdatabase/dbInstance:DbInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionString = registerOutput<String>('connectionString');
    dbInstanceCategory = registerOutput<String>('dbInstanceCategory');
    dbInstanceDescription = registerOutput<String?>('dbInstanceDescription');
    dbInstanceIpArrays = registerOutput<List<Map<String, dynamic>>>('dbInstanceIpArrays');
    dbInstanceNetworkType = registerOutput<String>('dbInstanceNetworkType');
    dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    dbNodeClass = registerOutput<String>('dbNodeClass');
    dbNodeStorage = registerOutput<int>('dbNodeStorage');
    dbVersion = registerOutput<String>('dbVersion');
    paymentType = registerOutput<String>('paymentType');
    port = registerOutput<String>('port');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
