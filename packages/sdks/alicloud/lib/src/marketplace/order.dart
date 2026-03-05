import 'package:pulumi/pulumi.dart' as pulumi;
import 'order_args.dart';
import 'order_state.dart';

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
/// const order = new alicloud.marketplace.Order("order", {
///     productCode: "cmapi033136",
///     payType: "PrePaid",
///     quantity: 1,
///     duration: 1,
///     pricingCycle: "Month",
///     packageVersion: "yuncode2713600001",
///     couponId: "",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// order = alicloud.marketplace.Order("order",
///     product_code="cmapi033136",
///     pay_type="PrePaid",
///     quantity=1,
///     duration=1,
///     pricing_cycle="Month",
///     package_version="yuncode2713600001",
///     coupon_id="")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var order = new AliCloud.MarketPlace.Order("order", new()
///     {
///         ProductCode = "cmapi033136",
///         PayType = "PrePaid",
///         Quantity = 1,
///         Duration = 1,
///         PricingCycle = "Month",
///         PackageVersion = "yuncode2713600001",
///         CouponId = "",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/marketplace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := marketplace.NewOrder(ctx, "order", &marketplace.OrderArgs{
/// 			ProductCode:    pulumi.String("cmapi033136"),
/// 			PayType:        pulumi.String("PrePaid"),
/// 			Quantity:       pulumi.Int(1),
/// 			Duration:       pulumi.Int(1),
/// 			PricingCycle:   pulumi.String("Month"),
/// 			PackageVersion: pulumi.String("yuncode2713600001"),
/// 			CouponId:       pulumi.String(""),
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
/// import com.pulumi.alicloud.marketplace.Order;
/// import com.pulumi.alicloud.marketplace.OrderArgs;
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
///         var order = new Order("order", OrderArgs.builder()
///             .productCode("cmapi033136")
///             .payType("PrePaid")
///             .quantity(1)
///             .duration(1)
///             .pricingCycle("Month")
///             .packageVersion("yuncode2713600001")
///             .couponId("")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   order:
///     type: alicloud:marketplace:Order
///     properties:
///       productCode: cmapi033136
///       payType: PrePaid
///       quantity: 1
///       duration: 1
///       pricingCycle: Month
///       packageVersion: yuncode2713600001
///       couponId: ""
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Market order can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:marketplace/order:Order order your-order-id
/// ```
class Order extends pulumi.CustomResource {
  /// Service providers customize additional components.
  late final pulumi.Output<Map<String, String>?> components;
  /// The coupon id of the market product.
  late final pulumi.Output<String?> couponId;
  /// The number of purchase cycles.
  late final pulumi.Output<int?> duration;
  /// The package version of the market product.
  late final pulumi.Output<String> packageVersion;
  /// Valid values are `PrePaid`, `PostPaid`,System default to `PostPaid`.
  late final pulumi.Output<String?> payType;
  /// The purchase cycle of the product, valid values are `Day`, `Month` and `Year`.
  late final pulumi.Output<String> pricingCycle;
  /// The product_code of market place product.
  late final pulumi.Output<String> productCode;
  /// The quantity of the market product will be purchased.
  late final pulumi.Output<int?> quantity;

  /// Creates a new [Order].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Order]. {@macro pulumi_marketplace_order_order_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Order(
    String name, {
    OrderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:marketplace/order:Order',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    components = registerOutput<Map<String, String>?>('components');
    couponId = registerOutput<String?>('couponId');
    duration = registerOutput<int?>('duration');
    packageVersion = registerOutput<String>('packageVersion');
    payType = registerOutput<String?>('payType');
    pricingCycle = registerOutput<String>('pricingCycle');
    productCode = registerOutput<String>('productCode');
    quantity = registerOutput<int?>('quantity');
  }

  /// Gets an existing [Order] resource's state with the given [name] and [id].
  static Order get(
    String name,
    pulumi.Input<String> id, {
    OrderState? state,
  }) {
    return Order._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Order._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:marketplace/order:Order',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    components = registerOutput<Map<String, String>?>('components');
    couponId = registerOutput<String?>('couponId');
    duration = registerOutput<int?>('duration');
    packageVersion = registerOutput<String>('packageVersion');
    payType = registerOutput<String?>('payType');
    pricingCycle = registerOutput<String>('pricingCycle');
    productCode = registerOutput<String>('productCode');
    quantity = registerOutput<int?>('quantity');
  }
}
