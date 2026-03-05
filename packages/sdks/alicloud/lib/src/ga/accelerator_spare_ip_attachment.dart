import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_spare_ip_attachment_args.dart';
import 'accelerator_spare_ip_attachment_state.dart';

/// Provides a Global Accelerator (GA) Accelerator Spare Ip Attachment resource.
///
/// For information about Global Accelerator (GA) Accelerator Spare Ip Attachment and how to use it, see [What is Accelerator Spare Ip Attachment](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createspareips).
///
/// &gt; **NOTE:** Available since v1.167.0.
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
/// const _default = new alicloud.ga.Accelerator("default", {
///     duration: 1,
///     spec: "1",
///     acceleratorName: "terraform-example",
///     autoUseCoupon: true,
///     description: "terraform-example",
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
///     bandwidthPackageName: "terraform-example",
///     autoPay: true,
///     autoUseCoupon: true,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: _default.id,
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultAcceleratorSpareIpAttachment = new alicloud.ga.AcceleratorSpareIpAttachment("default", {
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
///     spareIp: "127.0.0.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.Accelerator("default",
///     duration=1,
///     spec="1",
///     accelerator_name="terraform-example",
///     auto_use_coupon=True,
///     description="terraform-example")
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30,
///     bandwidth_package_name="terraform-example",
///     auto_pay=True,
///     auto_use_coupon=True)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default.id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_accelerator_spare_ip_attachment = alicloud.ga.AcceleratorSpareIpAttachment("default",
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id,
///     spare_ip="127.0.0.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ga.Accelerator("default", new()
///     {
///         Duration = 1,
///         Spec = "1",
///         AcceleratorName = "terraform-example",
///         AutoUseCoupon = true,
///         Description = "terraform-example",
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Ga.BandwidthPackage("default", new()
///     {
///         Bandwidth = 100,
///         Type = "Basic",
///         BandwidthType = "Basic",
///         PaymentType = "PayAsYouGo",
///         BillingType = "PayBy95",
///         Ratio = 30,
///         BandwidthPackageName = "terraform-example",
///         AutoPay = true,
///         AutoUseCoupon = true,
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = @default.Id,
///         BandwidthPackageId = defaultBandwidthPackage.Id,
///     });
///
///     var defaultAcceleratorSpareIpAttachment = new AliCloud.Ga.AcceleratorSpareIpAttachment("default", new()
///     {
///         AcceleratorId = defaultBandwidthPackageAttachment.AcceleratorId,
///         SpareIp = "127.0.0.1",
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
/// 		_default, err := ga.NewAccelerator(ctx, "default", &ga.AcceleratorArgs{
/// 			Duration:        pulumi.Int(1),
/// 			Spec:            pulumi.String("1"),
/// 			AcceleratorName: pulumi.String("terraform-example"),
/// 			AutoUseCoupon:   pulumi.Bool(true),
/// 			Description:     pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "default", &ga.BandwidthPackageArgs{
/// 			Bandwidth:            pulumi.Int(100),
/// 			Type:                 pulumi.String("Basic"),
/// 			BandwidthType:        pulumi.String("Basic"),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 			BillingType:          pulumi.String("PayBy95"),
/// 			Ratio:                pulumi.Int(30),
/// 			BandwidthPackageName: pulumi.String("terraform-example"),
/// 			AutoPay:              pulumi.Bool(true),
/// 			AutoUseCoupon:        pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "default", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      _default.ID(),
/// 			BandwidthPackageId: defaultBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewAcceleratorSpareIpAttachment(ctx, "default", &ga.AcceleratorSpareIpAttachmentArgs{
/// 			AcceleratorId: defaultBandwidthPackageAttachment.AcceleratorId,
/// 			SpareIp:       pulumi.String("127.0.0.1"),
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
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.ga.AcceleratorSpareIpAttachment;
/// import com.pulumi.alicloud.ga.AcceleratorSpareIpAttachmentArgs;
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
///         var default_ = new Accelerator("default", AcceleratorArgs.builder()
///             .duration(1)
///             .spec("1")
///             .acceleratorName("terraform-example")
///             .autoUseCoupon(true)
///             .description("terraform-example")
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(100)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .paymentType("PayAsYouGo")
///             .billingType("PayBy95")
///             .ratio(30)
///             .bandwidthPackageName("terraform-example")
///             .autoPay(true)
///             .autoUseCoupon(true)
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(default_.id())
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var defaultAcceleratorSpareIpAttachment = new AcceleratorSpareIpAttachment("defaultAcceleratorSpareIpAttachment", AcceleratorSpareIpAttachmentArgs.builder()
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .spareIp("127.0.0.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ga:Accelerator
///     properties:
///       duration: 1
///       spec: '1'
///       acceleratorName: terraform-example
///       autoUseCoupon: true
///       description: terraform-example
///   defaultBandwidthPackage:
///     type: alicloud:ga:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 100
///       type: Basic
///       bandwidthType: Basic
///       paymentType: PayAsYouGo
///       billingType: PayBy95
///       ratio: 30
///       bandwidthPackageName: terraform-example
///       autoPay: true
///       autoUseCoupon: true
///   defaultBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultAcceleratorSpareIpAttachment:
///     type: alicloud:ga:AcceleratorSpareIpAttachment
///     name: default
///     properties:
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
///       spareIp: 127.0.0.1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Accelerator Spare Ip Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/acceleratorSpareIpAttachment:AcceleratorSpareIpAttachment example <accelerator_id>:<spare_ip>
/// ```
class AcceleratorSpareIpAttachment extends pulumi.CustomResource {
  /// The ID of the global acceleration instance.
  late final pulumi.Output<String> acceleratorId;
  /// The dry run.
  late final pulumi.Output<bool?> dryRun;
  /// The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  late final pulumi.Output<String> spareIp;
  /// The status of the standby CNAME IP address.
  late final pulumi.Output<String> status;

  /// Creates a new [AcceleratorSpareIpAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AcceleratorSpareIpAttachment]. {@macro pulumi_ga_accelerator_spare_ip_attachment_accelerator_spare_ip_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AcceleratorSpareIpAttachment(
    String name, {
    AcceleratorSpareIpAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/acceleratorSpareIpAttachment:AcceleratorSpareIpAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    dryRun = registerOutput<bool?>('dryRun');
    spareIp = registerOutput<String>('spareIp');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AcceleratorSpareIpAttachment] resource's state with the given [name] and [id].
  static AcceleratorSpareIpAttachment get(
    String name,
    pulumi.Input<String> id, {
    AcceleratorSpareIpAttachmentState? state,
  }) {
    return AcceleratorSpareIpAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AcceleratorSpareIpAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/acceleratorSpareIpAttachment:AcceleratorSpareIpAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    dryRun = registerOutput<bool?>('dryRun');
    spareIp = registerOutput<String>('spareIp');
    status = registerOutput<String>('status');
  }
}
