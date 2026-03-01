import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_args.dart';

/// Provides a Global Accelerator (GA) Ip Set resource.
///
/// For information about Global Accelerator (GA) Ip Set and how to use it, see [What is Ip Set](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createipsets).
///
/// > **NOTE:** Available since v1.113.0.
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
/// const region = config.get("region") || "cn-hangzhou";
/// const _default = new alicloud.ga.Accelerator("default", {
///     duration: 1,
///     autoUseCoupon: true,
///     spec: "1",
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: _default.id,
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const example = new alicloud.ga.IpSet("example", {
///     accelerateRegionId: region,
///     bandwidth: 5,
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// default = alicloud.ga.Accelerator("default",
///     duration=1,
///     auto_use_coupon=True,
///     spec="1")
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default.id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// example = alicloud.ga.IpSet("example",
///     accelerate_region_id=region,
///     bandwidth=5,
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id)
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var @default = new AliCloud.Ga.Accelerator("default", new()
///     {
///         Duration = 1,
///         AutoUseCoupon = true,
///         Spec = "1",
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Ga.BandwidthPackage("default", new()
///     {
///         Bandwidth = 100,
///         Type = "Basic",
///         BandwidthType = "Basic",
///         PaymentType = "PayAsYouGo",
///         BillingType = "PayBy95",
///         Ratio = 30,
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = @default.Id,
///         BandwidthPackageId = defaultBandwidthPackage.Id,
///     });
///
///     var example = new AliCloud.Ga.IpSet("example", new()
///     {
///         AccelerateRegionId = region,
///         Bandwidth = 5,
///         AcceleratorId = defaultBandwidthPackageAttachment.AcceleratorId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		_default, err := ga.NewAccelerator(ctx, "default", &ga.AcceleratorArgs{
/// 			Duration:      pulumi.Int(1),
/// 			AutoUseCoupon: pulumi.Bool(true),
/// 			Spec:          pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "default", &ga.BandwidthPackageArgs{
/// 			Bandwidth:     pulumi.Int(100),
/// 			Type:          pulumi.String("Basic"),
/// 			BandwidthType: pulumi.String("Basic"),
/// 			PaymentType:   pulumi.String("PayAsYouGo"),
/// 			BillingType:   pulumi.String("PayBy95"),
/// 			Ratio:         pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "default", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      _default.ID(),
/// 			BandwidthPackageId: defaultBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewIpSet(ctx, "example", &ga.IpSetArgs{
/// 			AccelerateRegionId: pulumi.String(region),
/// 			Bandwidth:          pulumi.Int(5),
/// 			AcceleratorId:      defaultBandwidthPackageAttachment.AcceleratorId,
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
/// import com.pulumi.alicloud.ga.Accelerator;
/// import com.pulumi.alicloud.ga.AcceleratorArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.ga.IpSet;
/// import com.pulumi.alicloud.ga.IpSetArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         var default_ = new Accelerator("default", AcceleratorArgs.builder()
///             .duration(1)
///             .autoUseCoupon(true)
///             .spec("1")
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(100)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .paymentType("PayAsYouGo")
///             .billingType("PayBy95")
///             .ratio(30)
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(default_.id())
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var example = new IpSet("example", IpSetArgs.builder()
///             .accelerateRegionId(region)
///             .bandwidth(5)
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
/// resources:
///   default:
///     type: alicloud:ga:Accelerator
///     properties:
///       duration: 1
///       autoUseCoupon: true
///       spec: '1'
///   defaultBandwidthPackage:
///     type: alicloud:ga:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 100
///       type: Basic
///       bandwidthType: Basic
///       paymentType: PayAsYouGo
///       billingType: PayBy95
///       ratio: 30
///   defaultBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   example:
///     type: alicloud:ga:IpSet
///     properties:
///       accelerateRegionId: ${region}
///       bandwidth: '5'
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ga Ip Set can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/ipSet:IpSet example <id>
/// ```
class IpSet extends pulumi.CustomResource {
  /// The ID of an acceleration region.
  late final pulumi.Output<String> accelerateRegionId;
  /// The ID of the Global Accelerator (GA) instance.
  late final pulumi.Output<String> acceleratorId;
  /// The bandwidth allocated to the acceleration region.
  /// > **NOTE:** The minimum bandwidth of each accelerated region is 2Mbps. The total bandwidth of the acceleration region should be less than or equal to the bandwidth of the basic bandwidth package you purchased.
  late final pulumi.Output<int?> bandwidth;
  /// The list of accelerated IP addresses in the acceleration region.
  late final pulumi.Output<List<String>> ipAddressLists;
  /// The IP protocol used by the GA instance. Default value: `IPv4`. Valid values: `IPv4`, `IPv6`, `DUAL_STACK`. **NOTE:** From version 1.220.0, `ip_version` can be set to `DUAL_STACK`.
  late final pulumi.Output<String> ipVersion;
  /// The line type of the elastic IP address (EIP) in the acceleration region. Valid values: `BGP`, `BGP_PRO`.
  late final pulumi.Output<String?> ispType;
  /// The status of the acceleration region.
  late final pulumi.Output<String> status;

  /// Creates a new [IpSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpSet]. {@macro pulumi_ga_ip_set_ip_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpSet(
    String name, {
    IpSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accelerateRegionId = registerOutput<String>('accelerateRegionId');
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.bandwidth = registerOutput<int?>('bandwidth');
    this.ipAddressLists = registerOutput<List<String>>('ipAddressLists');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.ispType = registerOutput<String?>('ispType');
    this.status = registerOutput<String>('status');
  }
}
