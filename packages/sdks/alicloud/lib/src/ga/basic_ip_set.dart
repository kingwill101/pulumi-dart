import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_ip_set_args.dart';
import 'basic_ip_set_state.dart';

/// Provides a Global Accelerator (GA) Basic Ip Set resource.
///
/// For information about Global Accelerator (GA) Basic Ip Set and how to use it, see [What is Basic Ip Set](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createbasicipset).
///
/// > **NOTE:** Available since v1.194.0.
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
/// const _default = new alicloud.ga.BasicAccelerator("default", {
///     duration: 1,
///     pricingCycle: "Month",
///     bandwidthBillingType: "CDT",
///     autoPay: true,
///     autoUseCoupon: "true",
///     autoRenew: false,
///     autoRenewDuration: 1,
/// });
/// const defaultBasicIpSet = new alicloud.ga.BasicIpSet("default", {
///     acceleratorId: _default.id,
///     accelerateRegionId: region,
///     ispType: "BGP",
///     bandwidth: 5,
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
/// default = alicloud.ga.BasicAccelerator("default",
///     duration=1,
///     pricing_cycle="Month",
///     bandwidth_billing_type="CDT",
///     auto_pay=True,
///     auto_use_coupon="true",
///     auto_renew=False,
///     auto_renew_duration=1)
/// default_basic_ip_set = alicloud.ga.BasicIpSet("default",
///     accelerator_id=default.id,
///     accelerate_region_id=region,
///     isp_type="BGP",
///     bandwidth=5)
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
///     var @default = new AliCloud.Ga.BasicAccelerator("default", new()
///     {
///         Duration = 1,
///         PricingCycle = "Month",
///         BandwidthBillingType = "CDT",
///         AutoPay = true,
///         AutoUseCoupon = "true",
///         AutoRenew = false,
///         AutoRenewDuration = 1,
///     });
///
///     var defaultBasicIpSet = new AliCloud.Ga.BasicIpSet("default", new()
///     {
///         AcceleratorId = @default.Id,
///         AccelerateRegionId = region,
///         IspType = "BGP",
///         Bandwidth = 5,
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
/// 		_default, err := ga.NewBasicAccelerator(ctx, "default", &ga.BasicAcceleratorArgs{
/// 			Duration:             pulumi.Int(1),
/// 			PricingCycle:         pulumi.String("Month"),
/// 			BandwidthBillingType: pulumi.String("CDT"),
/// 			AutoPay:              pulumi.Bool(true),
/// 			AutoUseCoupon:        pulumi.String("true"),
/// 			AutoRenew:            pulumi.Bool(false),
/// 			AutoRenewDuration:    pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewBasicIpSet(ctx, "default", &ga.BasicIpSetArgs{
/// 			AcceleratorId:      _default.ID(),
/// 			AccelerateRegionId: pulumi.String(region),
/// 			IspType:            pulumi.String("BGP"),
/// 			Bandwidth:          pulumi.Int(5),
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
/// import com.pulumi.alicloud.ga.BasicAccelerator;
/// import com.pulumi.alicloud.ga.BasicAcceleratorArgs;
/// import com.pulumi.alicloud.ga.BasicIpSet;
/// import com.pulumi.alicloud.ga.BasicIpSetArgs;
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
///         var default_ = new BasicAccelerator("default", BasicAcceleratorArgs.builder()
///             .duration(1)
///             .pricingCycle("Month")
///             .bandwidthBillingType("CDT")
///             .autoPay(true)
///             .autoUseCoupon("true")
///             .autoRenew(false)
///             .autoRenewDuration(1)
///             .build());
///
///         var defaultBasicIpSet = new BasicIpSet("defaultBasicIpSet", BasicIpSetArgs.builder()
///             .acceleratorId(default_.id())
///             .accelerateRegionId(region)
///             .ispType("BGP")
///             .bandwidth(5)
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
///     type: alicloud:ga:BasicAccelerator
///     properties:
///       duration: 1
///       pricingCycle: Month
///       bandwidthBillingType: CDT
///       autoPay: true
///       autoUseCoupon: 'true'
///       autoRenew: false
///       autoRenewDuration: 1
///   defaultBasicIpSet:
///     type: alicloud:ga:BasicIpSet
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       accelerateRegionId: ${region}
///       ispType: BGP
///       bandwidth: '5'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Basic Ip Set can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/basicIpSet:BasicIpSet example <id>
/// ```
class BasicIpSet extends pulumi.CustomResource {
  /// The ID of the acceleration region.
  late final pulumi.Output<String> accelerateRegionId;
  /// The ID of the basic GA instance.
  late final pulumi.Output<String> acceleratorId;
  /// The bandwidth of the acceleration region. Unit: Mbit/s.
  late final pulumi.Output<int> bandwidth;
  /// The line type of the elastic IP address (EIP) in the acceleration region. Default value: `BGP`. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`.
  late final pulumi.Output<String> ispType;
  /// The status of the Basic Ip Set instance.
  late final pulumi.Output<String> status;

  /// Creates a new [BasicIpSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BasicIpSet]. {@macro pulumi_ga_basic_ip_set_basic_ip_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BasicIpSet(
    String name, {
    BasicIpSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/basicIpSet:BasicIpSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accelerateRegionId = registerOutput<String>('accelerateRegionId');
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.ispType = registerOutput<String>('ispType');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [BasicIpSet] resource's state with the given [name] and [id].
  static BasicIpSet get(
    String name,
    pulumi.Input<String> id, {
    BasicIpSetState? state,
  }) {
    return BasicIpSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BasicIpSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/basicIpSet:BasicIpSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accelerateRegionId = registerOutput<String>('accelerateRegionId');
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.ispType = registerOutput<String>('ispType');
    this.status = registerOutput<String>('status');
  }
}
