import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_plan_instance_args.dart';
import 'rate_plan_instance_state.dart';

/// Provides a ESA Rate Plan Instance resource.
///
///
///
/// For information about ESA Rate Plan Instance and how to use it, see [What is Rate Plan Instance](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/product-overview/query-package-information).
///
/// &gt; **NOTE:** Available since v1.234.0.
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
/// const _default = new alicloud.esa.RatePlanInstance("default", {
///     type: "NS",
///     autoRenew: true,
///     period: 1,
///     paymentType: "Subscription",
///     coverage: "overseas",
///     planName: "basic",
///     autoPay: true,
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
/// default = alicloud.esa.RatePlanInstance("default",
///     type="NS",
///     auto_renew=True,
///     period=1,
///     payment_type="Subscription",
///     coverage="overseas",
///     plan_name="basic",
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
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Esa.RatePlanInstance("default", new()
///     {
///         Type = "NS",
///         AutoRenew = true,
///         Period = 1,
///         PaymentType = "Subscription",
///         Coverage = "overseas",
///         PlanName = "basic",
///         AutoPay = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
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
/// 		_, err := esa.NewRatePlanInstance(ctx, "default", &esa.RatePlanInstanceArgs{
/// 			Type:        pulumi.String("NS"),
/// 			AutoRenew:   pulumi.Bool(true),
/// 			Period:      pulumi.Int(1),
/// 			PaymentType: pulumi.String("Subscription"),
/// 			Coverage:    pulumi.String("overseas"),
/// 			PlanName:    pulumi.String("basic"),
/// 			AutoPay:     pulumi.Bool(true),
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
/// import com.pulumi.alicloud.esa.RatePlanInstance;
/// import com.pulumi.alicloud.esa.RatePlanInstanceArgs;
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
///         var default_ = new RatePlanInstance("default", RatePlanInstanceArgs.builder()
///             .type("NS")
///             .autoRenew(true)
///             .period(1)
///             .paymentType("Subscription")
///             .coverage("overseas")
///             .planName("basic")
///             .autoPay(true)
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
///     type: alicloud:esa:RatePlanInstance
///     properties:
///       type: NS
///       autoRenew: true
///       period: '1'
///       paymentType: Subscription
///       coverage: overseas
///       planName: basic
///       autoPay: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Rate Plan Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/ratePlanInstance:RatePlanInstance example <id>
/// ```
class RatePlanInstance extends pulumi.CustomResource {
  late final pulumi.Output<bool?> autoPay;

  /// Auto-renewal:
  late final pulumi.Output<bool?> autoRenew;

  /// The service locations for the websites that can be associated with the plan. Multiple values are separated by commas (,). Valid values:
  late final pulumi.Output<String?> coverage;

  /// The time when the plan was purchased.
  late final pulumi.Output<String> createTime;

  /// The instance status.
  late final pulumi.Output<String> instanceStatus;

  /// The billing method. Valid values:
  /// - `Subscription`: subscription.
  late final pulumi.Output<String> paymentType;

  /// Subscription period (in months).
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> period;

  /// Package name.
  ///
  /// Chinese website account:
  late final pulumi.Output<String?> planName;

  /// The plan status. , the plan is unavailable.
  late final pulumi.Output<String> status;

  /// The DNS setup option for the website. Valid values:
  /// - `NS`
  /// - `CNAME`
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> type;

  /// Creates a new [RatePlanInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RatePlanInstance]. {@macro pulumi_esa_rate_plan_instance_rate_plan_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RatePlanInstance(
    String name, {
    RatePlanInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/ratePlanInstance:RatePlanInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    coverage = registerOutput<String?>('coverage');
    createTime = registerOutput<String>('createTime');
    instanceStatus = registerOutput<String>('instanceStatus');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    planName = registerOutput<String?>('planName');
    status = registerOutput<String>('status');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [RatePlanInstance] resource's state with the given [name] and [id].
  static RatePlanInstance get(
    String name,
    pulumi.Input<String> id, {
    RatePlanInstanceState? state,
  }) {
    return RatePlanInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RatePlanInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/ratePlanInstance:RatePlanInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    coverage = registerOutput<String?>('coverage');
    createTime = registerOutput<String>('createTime');
    instanceStatus = registerOutput<String>('instanceStatus');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    planName = registerOutput<String?>('planName');
    status = registerOutput<String>('status');
    type = registerOutput<String?>('type');
  }
}
