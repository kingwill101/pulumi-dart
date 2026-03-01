import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_package_args.dart';

/// Provides a Global Accelerator (GA) Bandwidth Package resource.
///
/// For information about Global Accelerator (GA) Bandwidth Package and how to use it, see [What is Bandwidth Package](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createbandwidthpackage).
///
/// > **NOTE:** At present, The `alicloud.ga.BandwidthPackage` created with `Subscription` cannot be deleted. you need to wait until the resource is outdated and released automatically.
///
/// > **NOTE:** Available since v1.112.0.
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
/// const example = new alicloud.ga.BandwidthPackage("example", {
///     bandwidth: 20,
///     type: "Basic",
///     bandwidthType: "Basic",
///     duration: "1",
///     autoPay: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ga.BandwidthPackage("example",
///     bandwidth=20,
///     type="Basic",
///     bandwidth_type="Basic",
///     duration="1",
///     auto_pay=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ga.BandwidthPackage("example", new()
///     {
///         Bandwidth = 20,
///         Type = "Basic",
///         BandwidthType = "Basic",
///         Duration = "1",
///         AutoPay = true,
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
/// 		_, err := ga.NewBandwidthPackage(ctx, "example", &ga.BandwidthPackageArgs{
/// 			Bandwidth:     pulumi.Int(20),
/// 			Type:          pulumi.String("Basic"),
/// 			BandwidthType: pulumi.String("Basic"),
/// 			Duration:      pulumi.String("1"),
/// 			AutoPay:       pulumi.Bool(true),
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
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
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
///         var example = new BandwidthPackage("example", BandwidthPackageArgs.builder()
///             .bandwidth(20)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .duration("1")
///             .autoPay(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ga:BandwidthPackage
///     properties:
///       bandwidth: 20
///       type: Basic
///       bandwidthType: Basic
///       duration: 1
///       autoPay: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ga Bandwidth Package can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/bandwidthPackage:BandwidthPackage example <id>
/// ```
class BandwidthPackage extends pulumi.CustomResource {
  /// Whether to pay automatically. Valid values:
  late final pulumi.Output<bool?> autoPay;
  /// Auto renewal period of a bandwidth packet, in the unit of month. Valid values: `1` to `12`.
  late final pulumi.Output<int> autoRenewDuration;
  /// Whether use vouchers. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> autoUseCoupon;
  /// The bandwidth value of bandwidth packet.
  late final pulumi.Output<int> bandwidth;
  /// The name of the bandwidth packet.
  late final pulumi.Output<String?> bandwidthPackageName;
  /// The bandwidth type of the bandwidth. Valid values: `Advanced`, `Basic`, `Enhanced`. If `type` is set to `Basic`, this parameter is required.
  /// > **NOTE:** At present, only basic can be configured to enhanced, but not enhanced and advanced to other types of accelerated bandwidth.
  late final pulumi.Output<String?> bandwidthType;
  /// The billing type. Valid values: `PayBy95`, `PayByTraffic`. **NOTE:** `billing_type` is valid only when `payment_type` is set to `PayAsYouGo`.
  late final pulumi.Output<String?> billingType;
  /// Interworking area A of cross domain acceleration package. Only international stations support returning this parameter. Default value: `China-mainland`.
  late final pulumi.Output<String> cbnGeographicRegionIda;
  /// Interworking area B of cross domain acceleration package. Only international stations support returning this parameter. Default value: `Global`.
  late final pulumi.Output<String> cbnGeographicRegionIdb;
  /// The description of bandwidth package.
  late final pulumi.Output<String?> description;
  /// The subscription duration. **NOTE:** The ForceNew attribute has be removed from version 1.148.0. If `payment_type` is set to `Subscription`, this parameter is required.
  late final pulumi.Output<String?> duration;
  /// The payment type of the bandwidth. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  late final pulumi.Output<String?> paymentType;
  /// The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  late final pulumi.Output<String?> promotionOptionNo;
  /// The minimum percentage for the pay-by-95th-percentile metering method. Valid values: `30` to `100`. **NOTE:** `ratio` is valid only when `billing_type` is set to `PayBy95`.
  late final pulumi.Output<int?> ratio;
  /// Whether to renew a bandwidth packet. automatically or not. Valid values:
  /// - `AutoRenewal`: Enable auto renewal.
  /// - `Normal`: Disable auto renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  late final pulumi.Output<String> renewalStatus;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the Bandwidth Package.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the bandwidth packet. China station only supports return to basic. Valid values: `Basic`, `CrossDomain`.
  late final pulumi.Output<String> type;

  /// Creates a new [BandwidthPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BandwidthPackage]. {@macro pulumi_ga_bandwidth_package_bandwidth_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BandwidthPackage(
    String name, {
    BandwidthPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/bandwidthPackage:BandwidthPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPay = registerOutput<bool?>('autoPay');
    this.autoRenewDuration = registerOutput<int>('autoRenewDuration');
    this.autoUseCoupon = registerOutput<bool?>('autoUseCoupon');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.bandwidthPackageName = registerOutput<String?>('bandwidthPackageName');
    this.bandwidthType = registerOutput<String?>('bandwidthType');
    this.billingType = registerOutput<String?>('billingType');
    this.cbnGeographicRegionIda = registerOutput<String>('cbnGeographicRegionIda');
    this.cbnGeographicRegionIdb = registerOutput<String>('cbnGeographicRegionIdb');
    this.description = registerOutput<String?>('description');
    this.duration = registerOutput<String?>('duration');
    this.paymentType = registerOutput<String?>('paymentType');
    this.promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    this.ratio = registerOutput<int?>('ratio');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
