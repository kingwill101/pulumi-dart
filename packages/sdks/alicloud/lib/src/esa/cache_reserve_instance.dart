import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_reserve_instance_args.dart';
import 'cache_reserve_instance_state.dart';

/// Provides a ESA Cache Reserve Instance resource.
///
///
///
/// For information about ESA Cache Reserve Instance and how to use it, see [What is Cache Reserve Instance](https://next.api.alibabacloud.com/document/ESA/2024-09-10/PurchaseCacheReserve).
///
/// > **NOTE:** Available since v1.247.0.
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
/// const _default = new alicloud.esa.CacheReserveInstance("default", {
///     quotaGb: 10240,
///     crRegion: "CN-beijing",
///     autoRenew: true,
///     period: 1,
///     paymentType: "Subscription",
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
/// default = alicloud.esa.CacheReserveInstance("default",
///     quota_gb=10240,
///     cr_region="CN-beijing",
///     auto_renew=True,
///     period=1,
///     payment_type="Subscription",
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
///     var @default = new AliCloud.Esa.CacheReserveInstance("default", new()
///     {
///         QuotaGb = 10240,
///         CrRegion = "CN-beijing",
///         AutoRenew = true,
///         Period = 1,
///         PaymentType = "Subscription",
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
/// 		_, err := esa.NewCacheReserveInstance(ctx, "default", &esa.CacheReserveInstanceArgs{
/// 			QuotaGb:     pulumi.Int(10240),
/// 			CrRegion:    pulumi.String("CN-beijing"),
/// 			AutoRenew:   pulumi.Bool(true),
/// 			Period:      pulumi.Int(1),
/// 			PaymentType: pulumi.String("Subscription"),
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
/// import com.pulumi.alicloud.esa.CacheReserveInstance;
/// import com.pulumi.alicloud.esa.CacheReserveInstanceArgs;
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
///         var default_ = new CacheReserveInstance("default", CacheReserveInstanceArgs.builder()
///             .quotaGb(10240)
///             .crRegion("CN-beijing")
///             .autoRenew(true)
///             .period(1)
///             .paymentType("Subscription")
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
///     type: alicloud:esa:CacheReserveInstance
///     properties:
///       quotaGb: '10240'
///       crRegion: CN-beijing
///       autoRenew: true
///       period: '1'
///       paymentType: Subscription
///       autoPay: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Cache Reserve Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/cacheReserveInstance:CacheReserveInstance example <id>
/// ```
class CacheReserveInstance extends pulumi.CustomResource {
  /// Automatic payment.
  late final pulumi.Output<bool?> autoPay;
  /// Whether to auto-renew:
  late final pulumi.Output<bool?> autoRenew;
  /// Cache holding area
  /// - `HK`: Hong Kong, China
  /// - `CN`: Mainland China
  late final pulumi.Output<String?> crRegion;
  /// Instance purchase time.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to enable auto payment.
  late final pulumi.Output<String> paymentType;
  /// Purchase period (unit: month).
  late final pulumi.Output<int?> period;
  /// Cache retention specification (unit: GB).
  late final pulumi.Output<int?> quotaGb;
  /// The status of the cache reserve instance. , it is unavailable.
  late final pulumi.Output<String> status;

  /// Creates a new [CacheReserveInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheReserveInstance]. {@macro pulumi_esa_cache_reserve_instance_cache_reserve_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheReserveInstance(
    String name, {
    CacheReserveInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/cacheReserveInstance:CacheReserveInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPay = registerOutput<bool?>('autoPay');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.crRegion = registerOutput<String?>('crRegion');
    this.createTime = registerOutput<String>('createTime');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.quotaGb = registerOutput<int?>('quotaGb');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [CacheReserveInstance] resource's state with the given [name] and [id].
  static CacheReserveInstance get(
    String name,
    pulumi.Input<String> id, {
    CacheReserveInstanceState? state,
  }) {
    return CacheReserveInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CacheReserveInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/cacheReserveInstance:CacheReserveInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPay = registerOutput<bool?>('autoPay');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.crRegion = registerOutput<String?>('crRegion');
    this.createTime = registerOutput<String>('createTime');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.quotaGb = registerOutput<int?>('quotaGb');
    this.status = registerOutput<String>('status');
  }
}
