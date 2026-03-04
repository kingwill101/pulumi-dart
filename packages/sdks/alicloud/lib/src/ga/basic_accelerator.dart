import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_accelerator_args.dart';
import 'basic_accelerator_state.dart';

/// Provides a Global Accelerator (GA) Basic Accelerator resource.
///
/// For information about Global Accelerator (GA) Basic Accelerator and how to use it, see [What is Basic Accelerator](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createbasicaccelerator).
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
/// const _default = new alicloud.ga.BasicAccelerator("default", {
///     duration: 1,
///     pricingCycle: "Month",
///     basicAcceleratorName: "tf-example-value",
///     description: "tf-example-value",
///     bandwidthBillingType: "BandwidthPackage",
///     autoPay: true,
///     autoUseCoupon: "true",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.BasicAccelerator("default",
///     duration=1,
///     pricing_cycle="Month",
///     basic_accelerator_name="tf-example-value",
///     description="tf-example-value",
///     bandwidth_billing_type="BandwidthPackage",
///     auto_pay=True,
///     auto_use_coupon="true")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ga.BasicAccelerator("default", new()
///     {
///         Duration = 1,
///         PricingCycle = "Month",
///         BasicAcceleratorName = "tf-example-value",
///         Description = "tf-example-value",
///         BandwidthBillingType = "BandwidthPackage",
///         AutoPay = true,
///         AutoUseCoupon = "true",
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ga.NewBasicAccelerator(ctx, "default", &ga.BasicAcceleratorArgs{
/// 			Duration:             pulumi.Int(1),
/// 			PricingCycle:         pulumi.String("Month"),
/// 			BasicAcceleratorName: pulumi.String("tf-example-value"),
/// 			Description:          pulumi.String("tf-example-value"),
/// 			BandwidthBillingType: pulumi.String("BandwidthPackage"),
/// 			AutoPay:              pulumi.Bool(true),
/// 			AutoUseCoupon:        pulumi.String("true"),
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
///         var default_ = new BasicAccelerator("default", BasicAcceleratorArgs.builder()
///             .duration(1)
///             .pricingCycle("Month")
///             .basicAcceleratorName("tf-example-value")
///             .description("tf-example-value")
///             .bandwidthBillingType("BandwidthPackage")
///             .autoPay(true)
///             .autoUseCoupon("true")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ga:BasicAccelerator
///     properties:
///       duration: 1
///       pricingCycle: Month
///       basicAcceleratorName: tf-example-value
///       description: tf-example-value
///       bandwidthBillingType: BandwidthPackage
///       autoPay: true
///       autoUseCoupon: 'true'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Basic Accelerator can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/basicAccelerator:BasicAccelerator example <id>
/// ```
class BasicAccelerator extends pulumi.CustomResource {
  /// Specifies whether to enable automatic payment. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> autoPay;

  /// Specifies whether to enable auto-renewal for the GA Basic Accelerator instance. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> autoRenew;

  /// The auto-renewal period. Unit: months. Default value: `1`. Valid values: `1` to `12`. **NOTE:** This parameter is required only if `auto_renew` is set to `true`.
  late final pulumi.Output<int?> autoRenewDuration;

  /// Specifies whether to automatically pay bills by using coupons. Default value: `false`. **NOTE:** This parameter is required only if `auto_pay` is set to `true`.
  late final pulumi.Output<String?> autoUseCoupon;

  /// The bandwidth billing method. Valid values: `BandwidthPackage`, `CDT`, `CDT95`.
  late final pulumi.Output<String?> bandwidthBillingType;

  /// The name of the Global Accelerator Basic Accelerator instance.
  late final pulumi.Output<String?> basicAcceleratorName;

  /// Indicates whether cross-border acceleration is enabled. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> crossBorderStatus;

  /// The description of the Global Accelerator Basic Accelerator instance.
  late final pulumi.Output<String?> description;

  /// The subscription duration. Default value: `1`.
  /// * If the `pricing_cycle` parameter is set to `Month`, the valid values for the `duration` parameter are `1` to `9`.
  /// * If the `pricing_cycle` parameter is set to `Year`, the valid values for the `duration` parameter are `1` to `3`.
  late final pulumi.Output<int?> duration;

  /// The payment type. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  late final pulumi.Output<String> paymentType;

  /// The billing cycle. Default value: `Month`. Valid values: `Month`, `Year`.
  late final pulumi.Output<String?> pricingCycle;

  /// The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  late final pulumi.Output<String?> promotionOptionNo;

  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the Basic Accelerator instance.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [BasicAccelerator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BasicAccelerator]. {@macro pulumi_ga_basic_accelerator_basic_accelerator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BasicAccelerator(
    String name, {
    BasicAcceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/basicAccelerator:BasicAccelerator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewDuration = registerOutput<int?>('autoRenewDuration');
    autoUseCoupon = registerOutput<String?>('autoUseCoupon');
    bandwidthBillingType = registerOutput<String?>('bandwidthBillingType');
    basicAcceleratorName = registerOutput<String?>('basicAcceleratorName');
    crossBorderStatus = registerOutput<bool?>('crossBorderStatus');
    description = registerOutput<String?>('description');
    duration = registerOutput<int?>('duration');
    paymentType = registerOutput<String>('paymentType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [BasicAccelerator] resource's state with the given [name] and [id].
  static BasicAccelerator get(
    String name,
    pulumi.Input<String> id, {
    BasicAcceleratorState? state,
  }) {
    return BasicAccelerator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BasicAccelerator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/basicAccelerator:BasicAccelerator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewDuration = registerOutput<int?>('autoRenewDuration');
    autoUseCoupon = registerOutput<String?>('autoUseCoupon');
    bandwidthBillingType = registerOutput<String?>('bandwidthBillingType');
    basicAcceleratorName = registerOutput<String?>('basicAcceleratorName');
    crossBorderStatus = registerOutput<bool?>('crossBorderStatus');
    description = registerOutput<String?>('description');
    duration = registerOutput<int?>('duration');
    paymentType = registerOutput<String>('paymentType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
