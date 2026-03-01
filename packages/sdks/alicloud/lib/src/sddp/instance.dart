import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Data Security Center Instance resource.
///
/// For information about Data Security Center Instance and how to use it, see [What is Instance](https://help.aliyun.com/product/88674.html).
///
/// > **NOTE:** Available in v1.136.0+.
///
/// > **NOTE:** The Data Security Center Instance is not support in the international site.
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
/// const _default = new alicloud.sddp.Instance("default", {
///     paymentType: "Subscription",
///     sddpVersion: "version_company",
///     sdCbool: "yes",
///     period: 1,
///     sdc: "3",
///     udCbool: "yes",
///     udc: "2000",
///     dataphin: "yes",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.sddp.Instance("default",
///     payment_type="Subscription",
///     sddp_version="version_company",
///     sd_cbool="yes",
///     period=1,
///     sdc="3",
///     ud_cbool="yes",
///     udc="2000",
///     dataphin="yes")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Sddp.Instance("default", new()
///     {
///         PaymentType = "Subscription",
///         SddpVersion = "version_company",
///         SdCbool = "yes",
///         Period = 1,
///         Sdc = "3",
///         UdCbool = "yes",
///         Udc = "2000",
///         Dataphin = "yes",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sddp.NewInstance(ctx, "default", &sddp.InstanceArgs{
/// 			PaymentType: pulumi.String("Subscription"),
/// 			SddpVersion: pulumi.String("version_company"),
/// 			SdCbool:     pulumi.String("yes"),
/// 			Period:      pulumi.Int(1),
/// 			Sdc:         pulumi.String("3"),
/// 			UdCbool:     pulumi.String("yes"),
/// 			Udc:         pulumi.String("2000"),
/// 			Dataphin:    pulumi.String("yes"),
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
/// import com.pulumi.alicloud.sddp.Instance;
/// import com.pulumi.alicloud.sddp.InstanceArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .paymentType("Subscription")
///             .sddpVersion("version_company")
///             .sdCbool("yes")
///             .period(1)
///             .sdc("3")
///             .udCbool("yes")
///             .udc("2000")
///             .dataphin("yes")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:sddp:Instance
///     properties:
///       paymentType: Subscription
///       sddpVersion: version_company
///       sdCbool: yes
///       period: '1'
///       sdc: '3'
///       udCbool: yes
///       udc: '2000'
///       dataphin: yes
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Security Center Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sddp/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Whether the required RAM authorization is configured.
  late final pulumi.Output<bool> authed;
  /// The dataphin. Valid values: `yes`,`no`.
  late final pulumi.Output<String?> dataphin;
  /// The dataphin count. Valid values: 1 to 20.
  late final pulumi.Output<String?> dataphinCount;
  /// The number of instances.
  late final pulumi.Output<String> instanceNum;
  /// The logistics.
  late final pulumi.Output<String?> logistics;
  /// The modify type. Valid values: `Upgrade`, `Downgrade`.  **NOTE:** The `modify_type` is required when you execute a update operation.
  late final pulumi.Output<String?> modifyType;
  /// Whether the authorized MaxCompute (ODPS) assets.
  late final pulumi.Output<bool> odpsSet;
  /// Whether the authorized oss assets.
  late final pulumi.Output<bool> ossBucketSet;
  /// The OSS storage capacity.
  late final pulumi.Output<String> ossSize;
  /// The payment type of the resource. Valid values: `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The Prepaid period. Valid values: `1`, `2`, `3`, `6`,`12`,`24`.
  late final pulumi.Output<int> period;
  /// Whether the authorized rds assets.
  late final pulumi.Output<bool> rdsSet;
  /// The remaining days of the protection period of the assets in the current login account.
  late final pulumi.Output<String> remainDays;
  /// Automatic renewal period. **NOTE:** The `renew_period` is required under the condition that renewal_status is `AutoRenewal`,
  late final pulumi.Output<int?> renewPeriod;
  /// Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  late final pulumi.Output<String> renewalStatus;
  /// Whether to use the database. Valid values:`yes`,`no`.
  late final pulumi.Output<String> sdCbool;
  /// The number of instances.
  late final pulumi.Output<String> sdc;
  /// The sddp version. Valid values: `version_audit`,`version_company`,`version_dlp`.
  late final pulumi.Output<String> sddpVersion;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// Whether to use OSS. Valid values: `yes`,`no`.
  late final pulumi.Output<String> udCbool;
  /// OSS Size.
  late final pulumi.Output<String> udc;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_sddp_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sddp/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authed = registerOutput<bool>('authed');
    this.dataphin = registerOutput<String?>('dataphin');
    this.dataphinCount = registerOutput<String?>('dataphinCount');
    this.instanceNum = registerOutput<String>('instanceNum');
    this.logistics = registerOutput<String?>('logistics');
    this.modifyType = registerOutput<String?>('modifyType');
    this.odpsSet = registerOutput<bool>('odpsSet');
    this.ossBucketSet = registerOutput<bool>('ossBucketSet');
    this.ossSize = registerOutput<String>('ossSize');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int>('period');
    this.rdsSet = registerOutput<bool>('rdsSet');
    this.remainDays = registerOutput<String>('remainDays');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.sdCbool = registerOutput<String>('sdCbool');
    this.sdc = registerOutput<String>('sdc');
    this.sddpVersion = registerOutput<String>('sddpVersion');
    this.status = registerOutput<String>('status');
    this.udCbool = registerOutput<String>('udCbool');
    this.udc = registerOutput<String>('udc');
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
          'alicloud:sddp/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authed = registerOutput<bool>('authed');
    this.dataphin = registerOutput<String?>('dataphin');
    this.dataphinCount = registerOutput<String?>('dataphinCount');
    this.instanceNum = registerOutput<String>('instanceNum');
    this.logistics = registerOutput<String?>('logistics');
    this.modifyType = registerOutput<String?>('modifyType');
    this.odpsSet = registerOutput<bool>('odpsSet');
    this.ossBucketSet = registerOutput<bool>('ossBucketSet');
    this.ossSize = registerOutput<String>('ossSize');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int>('period');
    this.rdsSet = registerOutput<bool>('rdsSet');
    this.remainDays = registerOutput<String>('remainDays');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.sdCbool = registerOutput<String>('sdCbool');
    this.sdc = registerOutput<String>('sdc');
    this.sddpVersion = registerOutput<String>('sddpVersion');
    this.status = registerOutput<String>('status');
    this.udCbool = registerOutput<String>('udCbool');
    this.udc = registerOutput<String>('udc');
  }
}
