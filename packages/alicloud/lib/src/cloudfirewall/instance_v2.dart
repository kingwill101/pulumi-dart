import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_v2_args.dart';

/// Provides a Cloud Firewall Instance V2 resource.
///
/// Cloud Firewall instance.
///
/// For information about Cloud Firewall Instance V2 and how to use it, see [What is Instance V2](https://www.alibabacloud.com/help/en/product/90174.htm).
///
/// > **NOTE:** Available since v1.269.0.
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
/// const _default = new alicloud.cloudfirewall.InstanceV2("default", {
///     paymentType: "PayAsYouGo",
///     productCode: "cfw",
///     productType: "cfw_elasticity_public_cn",
///     spec: "payg_version",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cloudfirewall.InstanceV2("default",
///     payment_type="PayAsYouGo",
///     product_code="cfw",
///     product_type="cfw_elasticity_public_cn",
///     spec="payg_version")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.CloudFirewall.InstanceV2("default", new()
///     {
///         PaymentType = "PayAsYouGo",
///         ProductCode = "cfw",
///         ProductType = "cfw_elasticity_public_cn",
///         Spec = "payg_version",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfirewall.NewInstanceV2(ctx, "default", &cloudfirewall.InstanceV2Args{
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 			ProductCode: pulumi.String("cfw"),
/// 			ProductType: pulumi.String("cfw_elasticity_public_cn"),
/// 			Spec:        pulumi.String("payg_version"),
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
/// import com.pulumi.alicloud.cloudfirewall.InstanceV2;
/// import com.pulumi.alicloud.cloudfirewall.InstanceV2Args;
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
///         var default_ = new InstanceV2("default", InstanceV2Args.builder()
///             .paymentType("PayAsYouGo")
///             .productCode("cfw")
///             .productType("cfw_elasticity_public_cn")
///             .spec("payg_version")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:cloudfirewall:InstanceV2
///     properties:
///       paymentType: PayAsYouGo
///       productCode: cfw
///       productType: cfw_elasticity_public_cn
///       spec: payg_version
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Instance V2 can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/instanceV2:InstanceV2 example <id>
/// ```
class InstanceV2 extends pulumi.CustomResource {
  /// Whether to use log audit. Valid values:
  late final pulumi.Output<bool> cfwLog;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// The end time.
  late final pulumi.Output<String> endTime;
  /// The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  late final pulumi.Output<String?> modifyType;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The prepaid period. **NOTE:** If `payment_type` is set to `Subscription`, `period` is required.
  late final pulumi.Output<int?> period;
  /// The product code. Valid values: `cfw`.
  late final pulumi.Output<String> productCode;
  /// The product type. Valid values: `cfw_elasticity_public_cn`, `cfw_elasticity_public_intl`, `cfw_sub_public_cn`, `cfw_sub_public_intl`.
  late final pulumi.Output<String> productType;
  /// The release time.
  late final pulumi.Output<String> releaseTime;
  /// The auto-renewal duration. **NOTE:** `renewal_duration` takes effect only if `payment_type` is set to `Subscription`, and `renewal_status` is set to `AutoRenewal`.
  late final pulumi.Output<int?> renewalDuration;
  /// The unit of the auto-renewal period. Valid values:
  /// - `M`: Month.
  /// - `Y`: Year.
  late final pulumi.Output<String> renewalDurationUnit;
  /// Whether to renew an instance automatically or not.
  /// - `AutoRenewal`: Auto renewal.
  /// - `ManualRenewal`: Manual renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  late final pulumi.Output<String> renewalStatus;
  /// Data leakage protection status. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> sdl;
  /// The edition of the Cloud Firewall instance. Valid values: `payg_version`, `premium_version`, `enterprise_version`,`ultimate_version`.
  late final pulumi.Output<String> spec;
  /// The status of Cloud Firewall Instance.
  late final pulumi.Output<String> status;
  /// The user status of Cloud Firewall Instance.
  late final pulumi.Output<String> userStatus;

  /// Creates a new [InstanceV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceV2]. {@macro pulumi_cloudfirewall_instance_v2_instance_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceV2(
    String name, {
    InstanceV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/instanceV2:InstanceV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cfwLog = registerOutput<bool>('cfwLog');
    this.createTime = registerOutput<String>('createTime');
    this.endTime = registerOutput<String>('endTime');
    this.modifyType = registerOutput<String?>('modifyType');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.productCode = registerOutput<String>('productCode');
    this.productType = registerOutput<String>('productType');
    this.releaseTime = registerOutput<String>('releaseTime');
    this.renewalDuration = registerOutput<int?>('renewalDuration');
    this.renewalDurationUnit = registerOutput<String>('renewalDurationUnit');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.sdl = registerOutput<bool?>('sdl');
    this.spec = registerOutput<String>('spec');
    this.status = registerOutput<String>('status');
    this.userStatus = registerOutput<String>('userStatus');
  }
}
