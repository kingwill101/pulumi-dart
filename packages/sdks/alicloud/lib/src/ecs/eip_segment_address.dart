import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_segment_address_args.dart';
import 'eip_segment_address_state.dart';

/// Provides a EIP Segment Address resource.
///
/// For information about EIP Segment Address and how to use it, see [What is Segment Address](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/allocateeipsegmentaddress).
///
/// &gt; **NOTE:** Available since v1.207.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.ecs.EipSegmentAddress("default", {
///     eipMask: "28",
///     bandwidth: "5",
///     isp: "BGP",
///     internetChargeType: "PayByBandwidth",
///     netmode: "public",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ecs.EipSegmentAddress("default",
///     eip_mask="28",
///     bandwidth="5",
///     isp="BGP",
///     internet_charge_type="PayByBandwidth",
///     netmode="public")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Ecs.EipSegmentAddress("default", new()
///     {
///         EipMask = "28",
///         Bandwidth = "5",
///         Isp = "BGP",
///         InternetChargeType = "PayByBandwidth",
///         Netmode = "public",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := ecs.NewEipSegmentAddress(ctx, "default", &ecs.EipSegmentAddressArgs{
/// 			EipMask:            pulumi.String("28"),
/// 			Bandwidth:          pulumi.String("5"),
/// 			Isp:                pulumi.String("BGP"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			Netmode:            pulumi.String("public"),
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
/// import com.pulumi.alicloud.ecs.EipSegmentAddress;
/// import com.pulumi.alicloud.ecs.EipSegmentAddressArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new EipSegmentAddress("default", EipSegmentAddressArgs.builder()
///             .eipMask("28")
///             .bandwidth("5")
///             .isp("BGP")
///             .internetChargeType("PayByBandwidth")
///             .netmode("public")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:ecs:EipSegmentAddress
///     properties:
///       eipMask: '28'
///       bandwidth: '5'
///       isp: BGP
///       internetChargeType: PayByBandwidth
///       netmode: public
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EIP Segment Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/eipSegmentAddress:EipSegmentAddress example <id>
/// ```
class EipSegmentAddress extends pulumi.CustomResource {
  /// The maximum bandwidth of the contiguous EIP group. Unit: Mbit/s.
  /// - Valid values when `InstanceChargeType` is set to `PostPaid` and `InternetChargeType` is set to `PayByBandwidth`: `1` to `500`.****
  /// - Valid values when `InstanceChargeType` is set to `PostPaid` and `InternetChargeType` is set to `PayByTraffic`: `1` to `200`.****
  /// - Valid values when `InstanceChargeType` is set to `PrePaid`: `1` to `1000`.****
  ///
  /// Default value: `5`. Unit: Mbit/s.
  late final pulumi.Output<String?> bandwidth;
  /// The time when the contiguous Elastic IP address group was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// The subnet mask of the contiguous EIP group. Valid values:
  late final pulumi.Output<String> eipMask;
  /// The metering method of the contiguous EIP group. Valid values:
  /// - `PayByBandwidth` (default)
  /// - `PayByTraffic`
  late final pulumi.Output<String?> internetChargeType;
  /// The line type. Valid values:
  /// - `BGP` (default): BGP (Multi-ISP) line The BGP (Multi-ISP) line is supported in all regions.
  /// - `BGP_PRO`: BGP (Multi-ISP) Pro line BGP (Multi-ISP) Pro line is supported only in the China (Hong Kong), Singapore, Japan (Tokyo), Malaysia (Kuala Lumpur), Philippines (Manila), Indonesia (Jakarta), and Thailand (Bangkok) regions.
  ///
  /// For more information about the BGP (Multi-ISP) line and BGP (Multi-ISP) Pro line, see [EIP line types](https://www.alibabacloud.com/help/en/doc-detail/32321.html).
  ///
  /// If you are allowed to use single-ISP bandwidth, you can also use one of the following values:
  /// - `ChinaTelecom`
  /// - `ChinaUnicom`
  /// - `ChinaMobile`
  /// - `ChinaTelecom_L2`
  /// - `ChinaUnicom_L2`
  /// - `ChinaMobile_L2`
  ///
  /// If your services are deployed in China East 1 Finance, this parameter is required and you must set the parameter to `BGP_FinanceCloud`.
  late final pulumi.Output<String?> isp;
  /// The network type. Set the value to `public`, which specifies the public network type.
  late final pulumi.Output<String?> netmode;
  /// The resource group ID.
  late final pulumi.Output<String?> resourceGroupId;
  /// The name of the contiguous Elastic IP address group.
  late final pulumi.Output<String> segmentAddressName;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The zone of the contiguous EIP group.
  late final pulumi.Output<String> zone;

  /// Creates a new [EipSegmentAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EipSegmentAddress]. {@macro pulumi_ecs_eip_segment_address_eip_segment_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EipSegmentAddress(
    String name, {
    EipSegmentAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/eipSegmentAddress:EipSegmentAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<String?>('bandwidth');
    createTime = registerOutput<String>('createTime');
    eipMask = registerOutput<String>('eipMask');
    internetChargeType = registerOutput<String?>('internetChargeType');
    isp = registerOutput<String?>('isp');
    netmode = registerOutput<String?>('netmode');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    segmentAddressName = registerOutput<String>('segmentAddressName');
    status = registerOutput<String>('status');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [EipSegmentAddress] resource's state with the given [name] and [id].
  static EipSegmentAddress get(
    String name,
    pulumi.Input<String> id, {
    EipSegmentAddressState? state,
  }) {
    return EipSegmentAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EipSegmentAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/eipSegmentAddress:EipSegmentAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<String?>('bandwidth');
    createTime = registerOutput<String>('createTime');
    eipMask = registerOutput<String>('eipMask');
    internetChargeType = registerOutput<String?>('internetChargeType');
    isp = registerOutput<String?>('isp');
    netmode = registerOutput<String?>('netmode');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    segmentAddressName = registerOutput<String>('segmentAddressName');
    status = registerOutput<String>('status');
    zone = registerOutput<String>('zone');
  }
}
