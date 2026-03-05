import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Cloud Firewall Instance resource.
///
/// For information about Cloud Firewall Instance and how to use it, see [What is Instance](https://www.alibabacloud.com/help/en/product/90174.htm).
///
/// &gt; **NOTE:** Available since v1.139.0.
///
/// &gt; **NOTE:** Deprecated since v1.269.0.
///
/// &gt; **DEPRECATED:** This resource has been deprecated from version `1.269.0`. Please use new resource alicloud_cloud_firewall_instance_v2.
///
/// ## Example Usage
///
/// Basic Usage
///
/// create a pay-as-you-go instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const payAsYouGo = new alicloud.cloudfirewall.Instance("PayAsYouGo", {paymentType: "PayAsYouGo"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// pay_as_you_go = alicloud.cloudfirewall.Instance("PayAsYouGo", payment_type="PayAsYouGo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var payAsYouGo = new AliCloud.CloudFirewall.Instance("PayAsYouGo", new()
///     {
///         PaymentType = "PayAsYouGo",
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
/// 		_, err := cloudfirewall.NewInstance(ctx, "PayAsYouGo", &cloudfirewall.InstanceArgs{
/// 			PaymentType: pulumi.String("PayAsYouGo"),
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
/// import com.pulumi.alicloud.cloudfirewall.Instance;
/// import com.pulumi.alicloud.cloudfirewall.InstanceArgs;
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
///         var payAsYouGo = new Instance("payAsYouGo", InstanceArgs.builder()
///             .paymentType("PayAsYouGo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   payAsYouGo:
///     type: alicloud:cloudfirewall:Instance
///     name: PayAsYouGo
///     properties:
///       paymentType: PayAsYouGo
/// ```
///
///
/// create a subscription instance
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const subscription = new alicloud.cloudfirewall.Instance("Subscription", {
///     paymentType: "Subscription",
///     spec: "premium_version",
///     ipNumber: 20,
///     bandWidth: 10,
///     cfwLog: false,
///     period: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// subscription = alicloud.cloudfirewall.Instance("Subscription",
///     payment_type="Subscription",
///     spec="premium_version",
///     ip_number=20,
///     band_width=10,
///     cfw_log=False,
///     period=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscription = new AliCloud.CloudFirewall.Instance("Subscription", new()
///     {
///         PaymentType = "Subscription",
///         Spec = "premium_version",
///         IpNumber = 20,
///         BandWidth = 10,
///         CfwLog = false,
///         Period = 1,
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
/// 		_, err := cloudfirewall.NewInstance(ctx, "Subscription", &cloudfirewall.InstanceArgs{
/// 			PaymentType: pulumi.String("Subscription"),
/// 			Spec:        pulumi.String("premium_version"),
/// 			IpNumber:    pulumi.Int(20),
/// 			BandWidth:   pulumi.Int(10),
/// 			CfwLog:      pulumi.Bool(false),
/// 			Period:      pulumi.Int(1),
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
/// import com.pulumi.alicloud.cloudfirewall.Instance;
/// import com.pulumi.alicloud.cloudfirewall.InstanceArgs;
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
///         var subscription = new Instance("subscription", InstanceArgs.builder()
///             .paymentType("Subscription")
///             .spec("premium_version")
///             .ipNumber(20)
///             .bandWidth(10)
///             .cfwLog(false)
///             .period(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription:
///     type: alicloud:cloudfirewall:Instance
///     name: Subscription
///     properties:
///       paymentType: Subscription
///       spec: premium_version
///       ipNumber: 20
///       bandWidth: 10
///       cfwLog: false
///       period: 1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// The number of multi account. It will be ignored when `cfw_account = false`.
  late final pulumi.Output<int?> accountNumber;
  /// Public network processing capability. Valid values: 10 to 15000. Unit: Mbps.
  late final pulumi.Output<int?> bandWidth;
  /// Whether to use multi-account. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> cfwAccount;
  /// Whether to use log audit. Valid values: `true`, `false`. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, `cfw_log` can only be set to `true`, `cfw_log` cannot be modified to `false`.
  late final pulumi.Output<bool?> cfwLog;
  /// The log storage capacity. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, or `cfw_log` is set to `false`, `cfw_log_storage` will be ignored.
  late final pulumi.Output<int?> cfwLogStorage;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// The end time.
  late final pulumi.Output<String> endTime;
  /// The number of protected VPCs. It will be ignored when `spec = "premium_version"`. Valid values between 2 and 500.
  late final pulumi.Output<int> fwVpcNumber;
  /// The number of assets.
  late final pulumi.Output<int?> instanceCount;
  /// The number of public IPs that can be protected. Valid values: 20 to 4000.
  late final pulumi.Output<int> ipNumber;
  /// The logistics.
  late final pulumi.Output<String?> logistics;
  /// The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  late final pulumi.Output<String?> modifyType;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`. **NOTE:** From version 1.220.0, `payment_type` can be set to `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The prepaid period. Valid values: `1`, `3`, `6`, `12`, `24`, `36`. **NOTE:** 1 and 3 available since 1.204.1. If `payment_type` is set to `Subscription`, `period` is required. Otherwise, it will be ignored.
  late final pulumi.Output<int?> period;
  /// The release time.
  late final pulumi.Output<String> releaseTime;
  /// Automatic renewal period. Attribute `renew_period` has been deprecated since 1.209.1. Using `renewal_duration` instead.
  late final pulumi.Output<int> renewPeriod;
  /// Auto-Renewal Duration. It is required under the condition that `renewal_status` is `AutoRenewal`. Valid values: `1`, `2`, `3`, `6`, `12`.
  /// **NOTE:** `renewal_duration` takes effect only if `payment_type` is set to `Subscription`, and `renewal_status` is set to `AutoRenewal`.
  late final pulumi.Output<int> renewalDuration;
  /// Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years. Valid values: `Month`, `Year`.
  late final pulumi.Output<String?> renewalDurationUnit;
  /// Whether to renew an instance automatically or not. Default value: `ManualRenewal`.
  /// - `AutoRenewal`: Auto renewal.
  /// - `ManualRenewal`: Manual renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  /// **NOTE:** `renewal_status` takes effect only if `payment_type` is set to `Subscription`.
  late final pulumi.Output<String> renewalStatus;
  /// Current version. Valid values: `premium_version`, `enterprise_version`,`ultimate_version`.
  late final pulumi.Output<String> spec;
  /// The status of Cloud Firewall Instance.
  late final pulumi.Output<String> status;
  /// (Available since v1.232.0) The user status of Cloud Firewall Instance.
  late final pulumi.Output<bool> userStatus;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_cloudfirewall_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountNumber = registerOutput<int?>('accountNumber');
    bandWidth = registerOutput<int?>('bandWidth');
    cfwAccount = registerOutput<bool?>('cfwAccount');
    cfwLog = registerOutput<bool?>('cfwLog');
    cfwLogStorage = registerOutput<int?>('cfwLogStorage');
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    fwVpcNumber = registerOutput<int>('fwVpcNumber');
    instanceCount = registerOutput<int?>('instanceCount');
    ipNumber = registerOutput<int>('ipNumber');
    logistics = registerOutput<String?>('logistics');
    modifyType = registerOutput<String?>('modifyType');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    releaseTime = registerOutput<String>('releaseTime');
    renewPeriod = registerOutput<int>('renewPeriod');
    renewalDuration = registerOutput<int>('renewalDuration');
    renewalDurationUnit = registerOutput<String?>('renewalDurationUnit');
    renewalStatus = registerOutput<String>('renewalStatus');
    spec = registerOutput<String>('spec');
    status = registerOutput<String>('status');
    userStatus = registerOutput<bool>('userStatus');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountNumber = registerOutput<int?>('accountNumber');
    bandWidth = registerOutput<int?>('bandWidth');
    cfwAccount = registerOutput<bool?>('cfwAccount');
    cfwLog = registerOutput<bool?>('cfwLog');
    cfwLogStorage = registerOutput<int?>('cfwLogStorage');
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    fwVpcNumber = registerOutput<int>('fwVpcNumber');
    instanceCount = registerOutput<int?>('instanceCount');
    ipNumber = registerOutput<int>('ipNumber');
    logistics = registerOutput<String?>('logistics');
    modifyType = registerOutput<String?>('modifyType');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    releaseTime = registerOutput<String>('releaseTime');
    renewPeriod = registerOutput<int>('renewPeriod');
    renewalDuration = registerOutput<int>('renewalDuration');
    renewalDurationUnit = registerOutput<String?>('renewalDurationUnit');
    renewalStatus = registerOutput<String>('renewalStatus');
    spec = registerOutput<String>('spec');
    status = registerOutput<String>('status');
    userStatus = registerOutput<bool>('userStatus');
  }
}
