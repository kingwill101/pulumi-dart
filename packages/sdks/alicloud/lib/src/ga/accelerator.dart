import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_args.dart';
import 'accelerator_state.dart';

/// Provides a Global Accelerator (GA) Accelerator resource.
///
/// For information about Global Accelerator (GA) Accelerator and how to use it, see [What is Accelerator](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createaccelerator).
///
/// > **NOTE:** Available since v1.111.0.
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
/// const example = new alicloud.ga.Accelerator("example", {
///     duration: 1,
///     autoUseCoupon: true,
///     spec: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ga.Accelerator("example",
///     duration=1,
///     auto_use_coupon=True,
///     spec="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ga.Accelerator("example", new()
///     {
///         Duration = 1,
///         AutoUseCoupon = true,
///         Spec = "1",
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
/// 		_, err := ga.NewAccelerator(ctx, "example", &ga.AcceleratorArgs{
/// 			Duration:      pulumi.Int(1),
/// 			AutoUseCoupon: pulumi.Bool(true),
/// 			Spec:          pulumi.String("1"),
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
///         var example = new Accelerator("example", AcceleratorArgs.builder()
///             .duration(1)
///             .autoUseCoupon(true)
///             .spec("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ga:Accelerator
///     properties:
///       duration: 1
///       autoUseCoupon: true
///       spec: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ga Accelerator can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/accelerator:Accelerator example <id>
/// ```
class Accelerator extends pulumi.CustomResource {
  /// The Name of the GA instance.
  late final pulumi.Output<String?> acceleratorName;
  /// Auto renewal period of an instance, in the unit of month. The value range is 1-12.
  late final pulumi.Output<int> autoRenewDuration;
  /// Use coupons to pay bills automatically. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> autoUseCoupon;
  /// The bandwidth billing method. Default value: `BandwidthPackage`. Valid values:
  /// - `BandwidthPackage`: billed based on bandwidth plans.
  /// - `CDT`: billed based on data transfer.
  late final pulumi.Output<String> bandwidthBillingType;
  /// The type of cross-border acceleration. Default value: `bgpPro`. Valid values: `bgpPro`, `private`. **NOTE:** `cross_border_mode` is valid only when `cross_border_status` is set to `true`.
  late final pulumi.Output<String> crossBorderMode;
  /// Indicates whether cross-border acceleration is enabled. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> crossBorderStatus;
  /// Descriptive information of the global acceleration instance.
  late final pulumi.Output<String?> description;
  /// The subscription duration.
  /// * If the `pricing_cycle` parameter is set to `Month`, the valid values for the `duration` parameter are 1 to 9.
  /// * If the `pricing_cycle` parameter is set to `Year`, the valid values for the `duration` parameter are 1 to 3.
  late final pulumi.Output<int?> duration;
  /// The payment type. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The billing cycle of the GA instance. Default value: `Month`. Valid values:
  /// - `Month`: billed on a monthly basis.
  /// - `Year`: billed on an annual basis.
  late final pulumi.Output<String?> pricingCycle;
  /// The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  late final pulumi.Output<String?> promotionOptionNo;
  /// Whether to renew an accelerator automatically or not. Default value: `Normal`. Valid values:
  /// - `AutoRenewal`: Enable auto renewal.
  /// - `Normal`: Disable auto renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  late final pulumi.Output<String> renewalStatus;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  late final pulumi.Output<String> resourceGroupId;
  /// The instance type of the GA instance. Specification of global acceleration instance. Valid values:
  late final pulumi.Output<String?> spec;
  /// The status of the GA instance.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Accelerator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Accelerator]. {@macro pulumi_ga_accelerator_accelerator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Accelerator(
    String name, {
    AcceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/accelerator:Accelerator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorName = registerOutput<String?>('acceleratorName');
    this.autoRenewDuration = registerOutput<int>('autoRenewDuration');
    this.autoUseCoupon = registerOutput<bool?>('autoUseCoupon');
    this.bandwidthBillingType = registerOutput<String>('bandwidthBillingType');
    this.crossBorderMode = registerOutput<String>('crossBorderMode');
    this.crossBorderStatus = registerOutput<bool?>('crossBorderStatus');
    this.description = registerOutput<String?>('description');
    this.duration = registerOutput<int?>('duration');
    this.paymentType = registerOutput<String>('paymentType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.spec = registerOutput<String?>('spec');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Accelerator] resource's state with the given [name] and [id].
  static Accelerator get(
    String name,
    pulumi.Input<String> id, {
    AcceleratorState? state,
  }) {
    return Accelerator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Accelerator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/accelerator:Accelerator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorName = registerOutput<String?>('acceleratorName');
    this.autoRenewDuration = registerOutput<int>('autoRenewDuration');
    this.autoUseCoupon = registerOutput<bool?>('autoUseCoupon');
    this.bandwidthBillingType = registerOutput<String>('bandwidthBillingType');
    this.crossBorderMode = registerOutput<String>('crossBorderMode');
    this.crossBorderStatus = registerOutput<bool?>('crossBorderStatus');
    this.description = registerOutput<String?>('description');
    this.duration = registerOutput<int?>('duration');
    this.paymentType = registerOutput<String>('paymentType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.spec = registerOutput<String?>('spec');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
