import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_physical_connection_args.dart';
import 'virtual_physical_connection_state.dart';

/// Provides a Express Connect Virtual Physical Connection resource.
///
/// For information about Express Connect Virtual Physical Connection and how to use it, see [What is Virtual Physical Connection](https://www.alibabacloud.com/help/en/express-connect/latest/createvirtualphysicalconnection#doc-api-Vpc-CreateVirtualPhysicalConnection).
///
/// &gt; **NOTE:** Available since v1.196.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const example = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const vlanId = new random.index.Integer("vlan_id", {
///     max: 2999,
///     min: 1,
/// });
/// const _default = alicloud.getAccount({});
/// const exampleVirtualPhysicalConnection = new alicloud.expressconnect.VirtualPhysicalConnection("example", {
///     virtualPhysicalConnectionName: name,
///     description: name,
///     orderMode: "PayByPhysicalConnectionOwner",
///     parentPhysicalConnectionId: example.then(example => example.ids?.[0]),
///     spec: "50M",
///     vlanId: vlanId.id,
///     vpconnAliUid: _default.then(_default => _default.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// example = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// vlan_id = random.index.Integer("vlan_id",
///     max=2999,
///     min=1)
/// default = alicloud.get_account()
/// example_virtual_physical_connection = alicloud.expressconnect.VirtualPhysicalConnection("example",
///     virtual_physical_connection_name=name,
///     description=name,
///     order_mode="PayByPhysicalConnectionOwner",
///     parent_physical_connection_id=example.ids[0],
///     spec="50M",
///     vlan_id=vlan_id["id"],
///     vpconn_ali_uid=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var example = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var vlanId = new Random.Index.Integer("vlan_id", new()
///     {
///         Max = 2999,
///         Min = 1,
///     });
///
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var exampleVirtualPhysicalConnection = new AliCloud.ExpressConnect.VirtualPhysicalConnection("example", new()
///     {
///         VirtualPhysicalConnectionName = name,
///         Description = name,
///         OrderMode = "PayByPhysicalConnectionOwner",
///         ParentPhysicalConnectionId = example.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Ids[0]),
///         Spec = "50M",
///         VlanId = vlanId.Id,
///         VpconnAliUid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		example, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vlanId, err := random.NewInteger(ctx, "vlan_id", &random.IntegerArgs{
/// 			Max: 2999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewVirtualPhysicalConnection(ctx, "example", &expressconnect.VirtualPhysicalConnectionArgs{
/// 			VirtualPhysicalConnectionName: pulumi.String(name),
/// 			Description:                   pulumi.String(name),
/// 			OrderMode:                     pulumi.String("PayByPhysicalConnectionOwner"),
/// 			ParentPhysicalConnectionId:    pulumi.String(example.Ids[0]),
/// 			Spec:                          pulumi.String("50M"),
/// 			VlanId:                        vlanId.Id,
/// 			VpconnAliUid:                  pulumi.String(_default.Id),
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.expressconnect.VirtualPhysicalConnection;
/// import com.pulumi.alicloud.expressconnect.VirtualPhysicalConnectionArgs;
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
///         final var example = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var vlanId = new Integer("vlanId", IntegerArgs.builder()
///             .max(2999)
///             .min(1)
///             .build());
///
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleVirtualPhysicalConnection = new VirtualPhysicalConnection("exampleVirtualPhysicalConnection", VirtualPhysicalConnectionArgs.builder()
///             .virtualPhysicalConnectionName(name)
///             .description(name)
///             .orderMode("PayByPhysicalConnectionOwner")
///             .parentPhysicalConnectionId(example.ids()[0])
///             .spec("50M")
///             .vlanId(vlanId.id())
///             .vpconnAliUid(default_.id())
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
///   vlanId:
///     type: random:Integer
///     name: vlan_id
///     properties:
///       max: 2999
///       min: 1
///   exampleVirtualPhysicalConnection:
///     type: alicloud:expressconnect:VirtualPhysicalConnection
///     name: example
///     properties:
///       virtualPhysicalConnectionName: ${name}
///       description: ${name}
///       orderMode: PayByPhysicalConnectionOwner
///       parentPhysicalConnectionId: ${example.ids[0]}
///       spec: 50M
///       vlanId: ${vlanId.id}
///       vpconnAliUid: ${default.id}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Virtual Physical Connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/virtualPhysicalConnection:VirtualPhysicalConnection example <id>
/// ```
class VirtualPhysicalConnection extends pulumi.CustomResource {
  /// The ID of the access point of the physical connection.
  late final pulumi.Output<String> accessPointId;

  /// The physical location where the physical connection access device is located.
  late final pulumi.Output<String> adLocation;

  /// The bandwidth of the physical connection. Unit: Mbps.
  late final pulumi.Output<String> bandwidth;

  /// The commercial status of the physical line. Value:-**Normal**: activated.-**Financialized**: Arrears locked.-**SecurityLocked**: locked for security reasons.
  late final pulumi.Output<String> businessStatus;

  /// The circuit code provided by the operator for the physical connection.
  late final pulumi.Output<String> circuitCode;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The description of the physical connection.
  late final pulumi.Output<String?> description;

  /// Specifies whether to precheck the API request. Valid values: `true` and `false`.
  late final pulumi.Output<bool?> dryRun;

  /// The opening time of the physical connection.
  late final pulumi.Output<String> enabledTime;

  /// The expiration time of the shared line.Time is expressed according to ISO8601 standard and UTC time is used. The format is: YYYY-MM-DDThh:mm:ssZ.
  late final pulumi.Output<String> endTime;

  /// The estimated bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  late final pulumi.Output<String?> expectSpec;

  /// Operators that provide access to physical lines. Value:-**CT**: China Telecom.-**CU**: China Unicom.-**CM**: China Mobile.-**CO**: China Other.-**Equinix**:Equinix.-**Other**: Other abroad.
  late final pulumi.Output<String> lineOperator;

  /// The state of LOA. Value:-**Applying**:LOA application.-**Accept**:LOA application passed.-**Available**:LOA is Available.-**Rejected**:LOA application Rejected.-**Completing**: The dedicated line is under construction.-**Complete**: The construction of the dedicated line is completed.-**Deleted**:LOA has been Deleted.
  late final pulumi.Output<String> loaStatus;

  /// The payment method of shared dedicated line. Value:
  /// - **PayByPhysicalConnectionOwner**: indicates that the owner of the physical line associated with the shared line pays.
  /// - **PayByVirtualPhysicalConnectionOwner**: indicates that the owner of the shared line pays.
  late final pulumi.Output<String> orderMode;

  /// The ID of the Alibaba Cloud account (primary account) to which the physical connection belongs.
  late final pulumi.Output<String> parentPhysicalConnectionAliUid;

  /// The ID of the instance of the physical connection.
  late final pulumi.Output<String> parentPhysicalConnectionId;

  /// The geographic location of the local data center.
  late final pulumi.Output<String> peerLocation;

  /// The port number of the physical connection device.
  late final pulumi.Output<String> portNumber;

  /// Physical connection port type. Value:-**100Base-T**: 100 megabytes port.-**1000Base-T**: Gigabit port.-**1000Base-LX**: Gigabit single mode optical port (10km).-**10GBase-T**: 10 Gigabit port.-**10GBase-LR**: 10 Gigabit single mode optical port (10km).-**40GBase-LR**: 40 megabytes single-mode optical port.-**100GBase-LR**: 100,000 megabytes single-mode optical port.
  late final pulumi.Output<String> portType;

  /// The ID of the redundant physical connection.
  late final pulumi.Output<String> redundantPhysicalConnectionId;

  /// The resource group id.
  late final pulumi.Output<String> resourceGroupId;

  /// The bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  late final pulumi.Output<String> spec;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// The name of the physical connection.
  late final pulumi.Output<String?> virtualPhysicalConnectionName;

  /// The business status of the shared line. Value:-**Confirmed**: The shared line has been Confirmed to receive.-**UnConfirmed**: The shared line has not been confirmed to be received.-**Deleted**: The shared line has been Deleted.
  late final pulumi.Output<String> virtualPhysicalConnectionStatus;

  /// The VLAN ID of the shared leased line. Valid values: `0` to `2999`.
  late final pulumi.Output<int> vlanId;

  /// The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  late final pulumi.Output<String> vpconnAliUid;

  /// Creates a new [VirtualPhysicalConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualPhysicalConnection]. {@macro pulumi_expressconnect_virtual_physical_connection_virtual_physical_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualPhysicalConnection(
    String name, {
    VirtualPhysicalConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/virtualPhysicalConnection:VirtualPhysicalConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPointId = registerOutput<String>('accessPointId');
    adLocation = registerOutput<String>('adLocation');
    bandwidth = registerOutput<String>('bandwidth');
    businessStatus = registerOutput<String>('businessStatus');
    circuitCode = registerOutput<String>('circuitCode');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    enabledTime = registerOutput<String>('enabledTime');
    endTime = registerOutput<String>('endTime');
    expectSpec = registerOutput<String?>('expectSpec');
    lineOperator = registerOutput<String>('lineOperator');
    loaStatus = registerOutput<String>('loaStatus');
    orderMode = registerOutput<String>('orderMode');
    parentPhysicalConnectionAliUid = registerOutput<String>(
      'parentPhysicalConnectionAliUid',
    );
    parentPhysicalConnectionId = registerOutput<String>(
      'parentPhysicalConnectionId',
    );
    peerLocation = registerOutput<String>('peerLocation');
    portNumber = registerOutput<String>('portNumber');
    portType = registerOutput<String>('portType');
    redundantPhysicalConnectionId = registerOutput<String>(
      'redundantPhysicalConnectionId',
    );
    resourceGroupId = registerOutput<String>('resourceGroupId');
    spec = registerOutput<String>('spec');
    status = registerOutput<String>('status');
    virtualPhysicalConnectionName = registerOutput<String?>(
      'virtualPhysicalConnectionName',
    );
    virtualPhysicalConnectionStatus = registerOutput<String>(
      'virtualPhysicalConnectionStatus',
    );
    vlanId = registerOutput<int>('vlanId');
    vpconnAliUid = registerOutput<String>('vpconnAliUid');
  }

  /// Gets an existing [VirtualPhysicalConnection] resource's state with the given [name] and [id].
  static VirtualPhysicalConnection get(
    String name,
    pulumi.Input<String> id, {
    VirtualPhysicalConnectionState? state,
  }) {
    return VirtualPhysicalConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualPhysicalConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/virtualPhysicalConnection:VirtualPhysicalConnection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPointId = registerOutput<String>('accessPointId');
    adLocation = registerOutput<String>('adLocation');
    bandwidth = registerOutput<String>('bandwidth');
    businessStatus = registerOutput<String>('businessStatus');
    circuitCode = registerOutput<String>('circuitCode');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    enabledTime = registerOutput<String>('enabledTime');
    endTime = registerOutput<String>('endTime');
    expectSpec = registerOutput<String?>('expectSpec');
    lineOperator = registerOutput<String>('lineOperator');
    loaStatus = registerOutput<String>('loaStatus');
    orderMode = registerOutput<String>('orderMode');
    parentPhysicalConnectionAliUid = registerOutput<String>(
      'parentPhysicalConnectionAliUid',
    );
    parentPhysicalConnectionId = registerOutput<String>(
      'parentPhysicalConnectionId',
    );
    peerLocation = registerOutput<String>('peerLocation');
    portNumber = registerOutput<String>('portNumber');
    portType = registerOutput<String>('portType');
    redundantPhysicalConnectionId = registerOutput<String>(
      'redundantPhysicalConnectionId',
    );
    resourceGroupId = registerOutput<String>('resourceGroupId');
    spec = registerOutput<String>('spec');
    status = registerOutput<String>('status');
    virtualPhysicalConnectionName = registerOutput<String?>(
      'virtualPhysicalConnectionName',
    );
    virtualPhysicalConnectionStatus = registerOutput<String>(
      'virtualPhysicalConnectionStatus',
    );
    vlanId = registerOutput<int>('vlanId');
    vpconnAliUid = registerOutput<String>('vpconnAliUid');
  }
}
