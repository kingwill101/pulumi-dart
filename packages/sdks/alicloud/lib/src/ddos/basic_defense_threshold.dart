import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_defense_threshold_args.dart';
import 'basic_defense_threshold_state.dart';

/// Provides a Ddos Basic defense threshold resource.
///
/// For information about Ddos Basic Antiddos and how to use it, see [What is Defense Threshold](https://www.alibabacloud.com/help/en/ddos-protection/latest/modifydefensethreshold).
///
/// &gt; **NOTE:** Available since v1.168.0.
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
/// const _default = new alicloud.ecs.EipAddress("default", {
///     addressName: name,
///     isp: "BGP",
///     internetChargeType: "PayByBandwidth",
///     paymentType: "PayAsYouGo",
/// });
/// const defaultBasicDefenseThreshold = new alicloud.ddos.BasicDefenseThreshold("default", {
///     instanceId: _default.id,
///     ddosType: "defense",
///     instanceType: "eip",
///     bps: 390,
///     pps: 90000,
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
/// default = alicloud.ecs.EipAddress("default",
///     address_name=name,
///     isp="BGP",
///     internet_charge_type="PayByBandwidth",
///     payment_type="PayAsYouGo")
/// default_basic_defense_threshold = alicloud.ddos.BasicDefenseThreshold("default",
///     instance_id=default.id,
///     ddos_type="defense",
///     instance_type="eip",
///     bps=390,
///     pps=90000)
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
///     var @default = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         AddressName = name,
///         Isp = "BGP",
///         InternetChargeType = "PayByBandwidth",
///         PaymentType = "PayAsYouGo",
///     });
///
///     var defaultBasicDefenseThreshold = new AliCloud.Ddos.BasicDefenseThreshold("default", new()
///     {
///         InstanceId = @default.Id,
///         DdosType = "defense",
///         InstanceType = "eip",
///         Bps = 390,
///         Pps = 90000,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		_default, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			AddressName:        pulumi.String(name),
/// 			Isp:                pulumi.String("BGP"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			PaymentType:        pulumi.String("PayAsYouGo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ddos.NewBasicDefenseThreshold(ctx, "default", &ddos.BasicDefenseThresholdArgs{
/// 			InstanceId:   _default.ID(),
/// 			DdosType:     pulumi.String("defense"),
/// 			InstanceType: pulumi.String("eip"),
/// 			Bps:          pulumi.Int(390),
/// 			Pps:          pulumi.Int(90000),
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
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ddos.BasicDefenseThreshold;
/// import com.pulumi.alicloud.ddos.BasicDefenseThresholdArgs;
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
///         var default_ = new EipAddress("default", EipAddressArgs.builder()
///             .addressName(name)
///             .isp("BGP")
///             .internetChargeType("PayByBandwidth")
///             .paymentType("PayAsYouGo")
///             .build());
///
///         var defaultBasicDefenseThreshold = new BasicDefenseThreshold("defaultBasicDefenseThreshold", BasicDefenseThresholdArgs.builder()
///             .instanceId(default_.id())
///             .ddosType("defense")
///             .instanceType("eip")
///             .bps(390)
///             .pps(90000)
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
///   default:
///     type: alicloud:ecs:EipAddress
///     properties:
///       addressName: ${name}
///       isp: BGP
///       internetChargeType: PayByBandwidth
///       paymentType: PayAsYouGo
///   defaultBasicDefenseThreshold:
///     type: alicloud:ddos:BasicDefenseThreshold
///     name: default
///     properties:
///       instanceId: ${default.id}
///       ddosType: defense
///       instanceType: eip
///       bps: 390
///       pps: 90000
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ddos Basic Antiddos can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/basicDefenseThreshold:BasicDefenseThreshold example <instance_id>:<instance_type>:<ddos_type>
/// ```
class BasicDefenseThreshold extends pulumi.CustomResource {
  /// Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  late final pulumi.Output<int> bps;

  /// The type of the threshold to query. Valid values: `defense`,`blackhole`.
  late final pulumi.Output<String> ddosType;

  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// The instance type of the public IP address asset. Value: `ecs`,`slb`,`eip`.
  late final pulumi.Output<String> instanceType;

  /// The Internet IP address.
  late final pulumi.Output<String> internetIp;

  /// Whether it is the system default threshold. Value:
  late final pulumi.Output<bool> isAuto;

  /// The maximum traffic scrubbing threshold. Unit: Mbit/s.
  late final pulumi.Output<int> maxBps;

  /// The maximum packet scrubbing threshold. Unit: pps.
  late final pulumi.Output<int> maxPps;

  /// The current message number cleaning threshold. Unit: pps.
  late final pulumi.Output<int> pps;

  /// Creates a new [BasicDefenseThreshold].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BasicDefenseThreshold]. {@macro pulumi_ddos_basic_defense_threshold_basic_defense_threshold_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BasicDefenseThreshold(
    String name, {
    BasicDefenseThresholdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/basicDefenseThreshold:BasicDefenseThreshold',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bps = registerOutput<int>('bps');
    ddosType = registerOutput<String>('ddosType');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    internetIp = registerOutput<String>('internetIp');
    isAuto = registerOutput<bool>('isAuto');
    maxBps = registerOutput<int>('maxBps');
    maxPps = registerOutput<int>('maxPps');
    pps = registerOutput<int>('pps');
  }

  /// Gets an existing [BasicDefenseThreshold] resource's state with the given [name] and [id].
  static BasicDefenseThreshold get(
    String name,
    pulumi.Input<String> id, {
    BasicDefenseThresholdState? state,
  }) {
    return BasicDefenseThreshold._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BasicDefenseThreshold._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/basicDefenseThreshold:BasicDefenseThreshold',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bps = registerOutput<int>('bps');
    ddosType = registerOutput<String>('ddosType');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    internetIp = registerOutput<String>('internetIp');
    isAuto = registerOutput<bool>('isAuto');
    maxBps = registerOutput<int>('maxBps');
    maxPps = registerOutput<int>('maxPps');
    pps = registerOutput<int>('pps');
  }
}
