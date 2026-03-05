import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_accelerate_ip_args.dart';
import 'basic_accelerate_ip_state.dart';

/// Provides a Global Accelerator (GA) Basic Accelerate IP resource.
///
/// For information about Global Accelerator (GA) Basic Accelerate IP and how to use it, see [What is Basic Accelerate IP](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createbasicaccelerateip).
///
/// &gt; **NOTE:** Available since v1.194.0.
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
///     basicAcceleratorName: "terraform-example",
///     description: "terraform-example",
///     bandwidthBillingType: "CDT",
///     autoUseCoupon: "true",
///     autoPay: true,
/// });
/// const defaultBasicIpSet = new alicloud.ga.BasicIpSet("default", {
///     acceleratorId: _default.id,
///     accelerateRegionId: region,
///     ispType: "BGP",
///     bandwidth: 5,
/// });
/// const defaultBasicAccelerateIp = new alicloud.ga.BasicAccelerateIp("default", {
///     acceleratorId: _default.id,
///     ipSetId: defaultBasicIpSet.id,
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
///     basic_accelerator_name="terraform-example",
///     description="terraform-example",
///     bandwidth_billing_type="CDT",
///     auto_use_coupon="true",
///     auto_pay=True)
/// default_basic_ip_set = alicloud.ga.BasicIpSet("default",
///     accelerator_id=default.id,
///     accelerate_region_id=region,
///     isp_type="BGP",
///     bandwidth=5)
/// default_basic_accelerate_ip = alicloud.ga.BasicAccelerateIp("default",
///     accelerator_id=default.id,
///     ip_set_id=default_basic_ip_set.id)
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
///         BasicAcceleratorName = "terraform-example",
///         Description = "terraform-example",
///         BandwidthBillingType = "CDT",
///         AutoUseCoupon = "true",
///         AutoPay = true,
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
///     var defaultBasicAccelerateIp = new AliCloud.Ga.BasicAccelerateIp("default", new()
///     {
///         AcceleratorId = @default.Id,
///         IpSetId = defaultBasicIpSet.Id,
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
/// 			BasicAcceleratorName: pulumi.String("terraform-example"),
/// 			Description:          pulumi.String("terraform-example"),
/// 			BandwidthBillingType: pulumi.String("CDT"),
/// 			AutoUseCoupon:        pulumi.String("true"),
/// 			AutoPay:              pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBasicIpSet, err := ga.NewBasicIpSet(ctx, "default", &ga.BasicIpSetArgs{
/// 			AcceleratorId:      _default.ID(),
/// 			AccelerateRegionId: pulumi.String(region),
/// 			IspType:            pulumi.String("BGP"),
/// 			Bandwidth:          pulumi.Int(5),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewBasicAccelerateIp(ctx, "default", &ga.BasicAccelerateIpArgs{
/// 			AcceleratorId: _default.ID(),
/// 			IpSetId:       defaultBasicIpSet.ID(),
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
/// import com.pulumi.alicloud.ga.BasicAccelerateIp;
/// import com.pulumi.alicloud.ga.BasicAccelerateIpArgs;
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
///             .basicAcceleratorName("terraform-example")
///             .description("terraform-example")
///             .bandwidthBillingType("CDT")
///             .autoUseCoupon("true")
///             .autoPay(true)
///             .build());
///
///         var defaultBasicIpSet = new BasicIpSet("defaultBasicIpSet", BasicIpSetArgs.builder()
///             .acceleratorId(default_.id())
///             .accelerateRegionId(region)
///             .ispType("BGP")
///             .bandwidth(5)
///             .build());
///
///         var defaultBasicAccelerateIp = new BasicAccelerateIp("defaultBasicAccelerateIp", BasicAccelerateIpArgs.builder()
///             .acceleratorId(default_.id())
///             .ipSetId(defaultBasicIpSet.id())
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
///       basicAcceleratorName: terraform-example
///       description: terraform-example
///       bandwidthBillingType: CDT
///       autoUseCoupon: 'true'
///       autoPay: true
///   defaultBasicIpSet:
///     type: alicloud:ga:BasicIpSet
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       accelerateRegionId: ${region}
///       ispType: BGP
///       bandwidth: '5'
///   defaultBasicAccelerateIp:
///     type: alicloud:ga:BasicAccelerateIp
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       ipSetId: ${defaultBasicIpSet.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Basic Accelerate IP can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/basicAccelerateIp:BasicAccelerateIp example <id>
/// ```
class BasicAccelerateIp extends pulumi.CustomResource {
  /// The address of the Basic Accelerate IP.
  late final pulumi.Output<String> accelerateIpAddress;
  /// The ID of the Basic GA instance.
  late final pulumi.Output<String> acceleratorId;
  /// The ID of the Basic Ip Set.
  late final pulumi.Output<String> ipSetId;
  /// The status of the Basic Accelerate IP instance.
  late final pulumi.Output<String> status;

  /// Creates a new [BasicAccelerateIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BasicAccelerateIp]. {@macro pulumi_ga_basic_accelerate_ip_basic_accelerate_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BasicAccelerateIp(
    String name, {
    BasicAccelerateIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/basicAccelerateIp:BasicAccelerateIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accelerateIpAddress = registerOutput<String>('accelerateIpAddress');
    acceleratorId = registerOutput<String>('acceleratorId');
    ipSetId = registerOutput<String>('ipSetId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BasicAccelerateIp] resource's state with the given [name] and [id].
  static BasicAccelerateIp get(
    String name,
    pulumi.Input<String> id, {
    BasicAccelerateIpState? state,
  }) {
    return BasicAccelerateIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BasicAccelerateIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/basicAccelerateIp:BasicAccelerateIp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accelerateIpAddress = registerOutput<String>('accelerateIpAddress');
    acceleratorId = registerOutput<String>('acceleratorId');
    ipSetId = registerOutput<String>('ipSetId');
    status = registerOutput<String>('status');
  }
}
