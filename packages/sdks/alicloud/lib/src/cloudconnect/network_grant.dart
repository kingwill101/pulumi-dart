import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_grant_args.dart';
import 'network_grant_state.dart';

/// Provides a Cloud Connect Network Grant resource. If the CEN instance to be attached belongs to another account, authorization by the CEN instance is required.
///
/// For information about Cloud Connect Network Grant and how to use it, see [What is Cloud Connect Network Grant](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/grantinstancetocbn).
///
/// &gt; **NOTE:** Available since v1.63.0.
///
/// &gt; **NOTE:** Only the following regions support create Cloud Connect Network Grant. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const anotherUid = config.getNumber("anotherUid") || 123456789;
/// // Method 2: Use the target cen account's access_key, secret_key
/// // provider "alicloud" {
/// //   region     = "cn-hangzhou"
/// //   access_key = "access_key"
/// //   secret_key = "secret_key"
/// //   alias      = "cen_account"
/// // }
/// const _default = new alicloud.cloudconnect.Network("default", {
///     name: name,
///     description: name,
///     cidrBlock: "192.168.0.0/24",
///     isDefault: true,
/// });
/// const cen = new alicloud.cen.Instance("cen", {cenInstanceName: name});
/// const defaultNetworkGrant = new alicloud.cloudconnect.NetworkGrant("default", {
///     ccnId: _default.id,
///     cenId: cen.id,
///     cenUid: anotherUid,
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
/// another_uid = config.get_float("anotherUid")
/// if another_uid is None:
///     another_uid = 123456789
/// # Method 2: Use the target cen account's access_key, secret_key
/// # provider "alicloud" {
/// #   region     = "cn-hangzhou"
/// #   access_key = "access_key"
/// #   secret_key = "secret_key"
/// #   alias      = "cen_account"
/// # }
/// default = alicloud.cloudconnect.Network("default",
///     name=name,
///     description=name,
///     cidr_block="192.168.0.0/24",
///     is_default=True)
/// cen = alicloud.cen.Instance("cen", cen_instance_name=name)
/// default_network_grant = alicloud.cloudconnect.NetworkGrant("default",
///     ccn_id=default.id,
///     cen_id=cen.id,
///     cen_uid=another_uid)
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
///     var anotherUid = config.GetDouble("anotherUid") ?? 123456789;
///     // Method 2: Use the target cen account's access_key, secret_key
///     // provider "alicloud" {
///     //   region     = "cn-hangzhou"
///     //   access_key = "access_key"
///     //   secret_key = "secret_key"
///     //   alias      = "cen_account"
///     // }
///     var @default = new AliCloud.CloudConnect.Network("default", new()
///     {
///         Name = name,
///         Description = name,
///         CidrBlock = "192.168.0.0/24",
///         IsDefault = true,
///     });
///
///     var cen = new AliCloud.Cen.Instance("cen", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultNetworkGrant = new AliCloud.CloudConnect.NetworkGrant("default", new()
///     {
///         CcnId = @default.Id,
///         CenId = cen.Id,
///         CenUid = anotherUid,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudconnect"
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
/// 		anotherUid := float64(123456789)
/// 		if param := cfg.GetFloat64("anotherUid"); param != 0 {
/// 			anotherUid = param
/// 		}
/// 		// Method 2: Use the target cen account's access_key, secret_key
/// 		//
/// 		//	provider "alicloud" {
/// 		//	  region     = "cn-hangzhou"
/// 		//	  access_key = "access_key"
/// 		//	  secret_key = "secret_key"
/// 		//	  alias      = "cen_account"
/// 		//	}
/// 		_default, err := cloudconnect.NewNetwork(ctx, "default", &cloudconnect.NetworkArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			IsDefault:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cen, err := cen.NewInstance(ctx, "cen", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudconnect.NewNetworkGrant(ctx, "default", &cloudconnect.NetworkGrantArgs{
/// 			CcnId:  _default.ID(),
/// 			CenId:  cen.ID(),
/// 			CenUid: pulumi.Float64(anotherUid),
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
/// import com.pulumi.alicloud.cloudconnect.Network;
/// import com.pulumi.alicloud.cloudconnect.NetworkArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cloudconnect.NetworkGrant;
/// import com.pulumi.alicloud.cloudconnect.NetworkGrantArgs;
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
///         final var anotherUid = config.get("anotherUid").orElse(123456789);
///         // Method 2: Use the target cen account's access_key, secret_key
///         // provider "alicloud" {
///         //   region     = "cn-hangzhou"
///         //   access_key = "access_key"
///         //   secret_key = "secret_key"
///         //   alias      = "cen_account"
///         // }
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name(name)
///             .description(name)
///             .cidrBlock("192.168.0.0/24")
///             .isDefault(true)
///             .build());
///
///         var cen = new Instance("cen", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultNetworkGrant = new NetworkGrant("defaultNetworkGrant", NetworkGrantArgs.builder()
///             .ccnId(default_.id())
///             .cenId(cen.id())
///             .cenUid(anotherUid)
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
///   anotherUid:
///     type: number
///     default: 1.23456789e+08
/// resources:
///   # Method 2: Use the target cen account's access_key, secret_key
///   # provider "alicloud" {
///   #   region     = "cn-hangzhou"
///   #   access_key = "access_key"
///   #   secret_key = "secret_key"
///   #   alias      = "cen_account"
///   # }
///   default:
///     type: alicloud:cloudconnect:Network
///     properties:
///       name: ${name}
///       description: ${name}
///       cidrBlock: 192.168.0.0/24
///       isDefault: true
///   cen:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///   defaultNetworkGrant:
///     type: alicloud:cloudconnect:NetworkGrant
///     name: default
///     properties:
///       ccnId: ${default.id}
///       cenId: ${cen.id}
///       cenUid: ${anotherUid}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Cloud Connect Network Grant can be imported using the instance_id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudconnect/networkGrant:NetworkGrant example ccn-abc123456:cen-abc123456
/// ```
class NetworkGrant extends pulumi.CustomResource {
  /// The ID of the CCN instance.
  late final pulumi.Output<String> ccnId;
  /// The ID of the CEN instance.
  late final pulumi.Output<String> cenId;
  /// The ID of the account to which the CEN instance belongs.
  late final pulumi.Output<String> cenUid;

  /// Creates a new [NetworkGrant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkGrant]. {@macro pulumi_cloudconnect_network_grant_network_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkGrant(
    String name, {
    NetworkGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudconnect/networkGrant:NetworkGrant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ccnId = registerOutput<String>('ccnId');
    cenId = registerOutput<String>('cenId');
    cenUid = registerOutput<String>('cenUid');
  }

  /// Gets an existing [NetworkGrant] resource's state with the given [name] and [id].
  static NetworkGrant get(
    String name,
    pulumi.Input<String> id, {
    NetworkGrantState? state,
  }) {
    return NetworkGrant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkGrant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudconnect/networkGrant:NetworkGrant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ccnId = registerOutput<String>('ccnId');
    cenId = registerOutput<String>('cenId');
    cenUid = registerOutput<String>('cenUid');
  }
}
