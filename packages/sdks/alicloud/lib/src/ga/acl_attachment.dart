import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_attachment_args.dart';
import 'acl_attachment_state.dart';

/// Provides a Global Accelerator (GA) Acl Attachment resource.
///
/// For information about Global Accelerator (GA) Acl Attachment and how to use it, see [What is Acl Attachment](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-associateaclswithlistener).
///
/// > **NOTE:** Available since v1.150.0.
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
///     autoUseCoupon: true,
///     spec: "1",
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: _default.id,
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultListener = new alicloud.ga.Listener("default", {
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
///     portRanges: [{
///         fromPort: 80,
///         toPort: 80,
///     }],
/// });
/// const defaultAcl = new alicloud.ga.Acl("default", {
///     aclName: "terraform-example",
///     addressIpVersion: "IPv4",
/// });
/// const defaultAclEntryAttachment = new alicloud.ga.AclEntryAttachment("default", {
///     aclId: defaultAcl.id,
///     entry: "192.168.1.1/32",
///     entryDescription: "terraform-example",
/// });
/// const defaultAclAttachment = new alicloud.ga.AclAttachment("default", {
///     listenerId: defaultListener.id,
///     aclId: defaultAcl.id,
///     aclType: "white",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.Accelerator("default",
///     duration=1,
///     auto_use_coupon=True,
///     spec="1")
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default.id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_listener = alicloud.ga.Listener("default",
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id,
///     port_ranges=[{
///         "from_port": 80,
///         "to_port": 80,
///     }])
/// default_acl = alicloud.ga.Acl("default",
///     acl_name="terraform-example",
///     address_ip_version="IPv4")
/// default_acl_entry_attachment = alicloud.ga.AclEntryAttachment("default",
///     acl_id=default_acl.id,
///     entry="192.168.1.1/32",
///     entry_description="terraform-example")
/// default_acl_attachment = alicloud.ga.AclAttachment("default",
///     listener_id=default_listener.id,
///     acl_id=default_acl.id,
///     acl_type="white")
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
///         AutoUseCoupon = true,
///         Spec = "1",
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
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = @default.Id,
///         BandwidthPackageId = defaultBandwidthPackage.Id,
///     });
///
///     var defaultListener = new AliCloud.Ga.Listener("default", new()
///     {
///         AcceleratorId = defaultBandwidthPackageAttachment.AcceleratorId,
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 80,
///                 ToPort = 80,
///             },
///         },
///     });
///
///     var defaultAcl = new AliCloud.Ga.Acl("default", new()
///     {
///         AclName = "terraform-example",
///         AddressIpVersion = "IPv4",
///     });
///
///     var defaultAclEntryAttachment = new AliCloud.Ga.AclEntryAttachment("default", new()
///     {
///         AclId = defaultAcl.Id,
///         Entry = "192.168.1.1/32",
///         EntryDescription = "terraform-example",
///     });
///
///     var defaultAclAttachment = new AliCloud.Ga.AclAttachment("default", new()
///     {
///         ListenerId = defaultListener.Id,
///         AclId = defaultAcl.Id,
///         AclType = "white",
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
/// 			Duration:      pulumi.Int(1),
/// 			AutoUseCoupon: pulumi.Bool(true),
/// 			Spec:          pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "default", &ga.BandwidthPackageArgs{
/// 			Bandwidth:     pulumi.Int(100),
/// 			Type:          pulumi.String("Basic"),
/// 			BandwidthType: pulumi.String("Basic"),
/// 			PaymentType:   pulumi.String("PayAsYouGo"),
/// 			BillingType:   pulumi.String("PayBy95"),
/// 			Ratio:         pulumi.Int(30),
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
/// 		defaultListener, err := ga.NewListener(ctx, "default", &ga.ListenerArgs{
/// 			AcceleratorId: defaultBandwidthPackageAttachment.AcceleratorId,
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(80),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAcl, err := ga.NewAcl(ctx, "default", &ga.AclArgs{
/// 			AclName:          pulumi.String("terraform-example"),
/// 			AddressIpVersion: pulumi.String("IPv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewAclEntryAttachment(ctx, "default", &ga.AclEntryAttachmentArgs{
/// 			AclId:            defaultAcl.ID(),
/// 			Entry:            pulumi.String("192.168.1.1/32"),
/// 			EntryDescription: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewAclAttachment(ctx, "default", &ga.AclAttachmentArgs{
/// 			ListenerId: defaultListener.ID(),
/// 			AclId:      defaultAcl.ID(),
/// 			AclType:    pulumi.String("white"),
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
/// import com.pulumi.alicloud.ga.Listener;
/// import com.pulumi.alicloud.ga.ListenerArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerPortRangeArgs;
/// import com.pulumi.alicloud.ga.Acl;
/// import com.pulumi.alicloud.ga.AclArgs;
/// import com.pulumi.alicloud.ga.AclEntryAttachment;
/// import com.pulumi.alicloud.ga.AclEntryAttachmentArgs;
/// import com.pulumi.alicloud.ga.AclAttachment;
/// import com.pulumi.alicloud.ga.AclAttachmentArgs;
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
///             .autoUseCoupon(true)
///             .spec("1")
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(100)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .paymentType("PayAsYouGo")
///             .billingType("PayBy95")
///             .ratio(30)
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(default_.id())
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(80)
///                 .toPort(80)
///                 .build())
///             .build());
///
///         var defaultAcl = new Acl("defaultAcl", AclArgs.builder()
///             .aclName("terraform-example")
///             .addressIpVersion("IPv4")
///             .build());
///
///         var defaultAclEntryAttachment = new AclEntryAttachment("defaultAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(defaultAcl.id())
///             .entry("192.168.1.1/32")
///             .entryDescription("terraform-example")
///             .build());
///
///         var defaultAclAttachment = new AclAttachment("defaultAclAttachment", AclAttachmentArgs.builder()
///             .listenerId(defaultListener.id())
///             .aclId(defaultAcl.id())
///             .aclType("white")
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
///       autoUseCoupon: true
///       spec: '1'
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
///   defaultBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultListener:
///     type: alicloud:ga:Listener
///     name: default
///     properties:
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
///       portRanges:
///         - fromPort: 80
///           toPort: 80
///   defaultAcl:
///     type: alicloud:ga:Acl
///     name: default
///     properties:
///       aclName: terraform-example
///       addressIpVersion: IPv4
///   defaultAclEntryAttachment:
///     type: alicloud:ga:AclEntryAttachment
///     name: default
///     properties:
///       aclId: ${defaultAcl.id}
///       entry: 192.168.1.1/32
///       entryDescription: terraform-example
///   defaultAclAttachment:
///     type: alicloud:ga:AclAttachment
///     name: default
///     properties:
///       listenerId: ${defaultListener.id}
///       aclId: ${defaultAcl.id}
///       aclType: white
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Acl Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/aclAttachment:AclAttachment example <listener_id>:<acl_id>
/// ```
class AclAttachment extends pulumi.CustomResource {
  /// The ID of an ACL.
  late final pulumi.Output<String> aclId;
  /// The type of the ACL. Valid values:
  late final pulumi.Output<String> aclType;
  /// The dry run.
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the listener.
  late final pulumi.Output<String> listenerId;
  /// The status of the Acl Attachment.
  late final pulumi.Output<String> status;

  /// Creates a new [AclAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclAttachment]. {@macro pulumi_ga_acl_attachment_acl_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclAttachment(
    String name, {
    AclAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/aclAttachment:AclAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.aclType = registerOutput<String>('aclType');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.listenerId = registerOutput<String>('listenerId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [AclAttachment] resource's state with the given [name] and [id].
  static AclAttachment get(
    String name,
    pulumi.Input<String> id, {
    AclAttachmentState? state,
  }) {
    return AclAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AclAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/aclAttachment:AclAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclId = registerOutput<String>('aclId');
    this.aclType = registerOutput<String>('aclType');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.listenerId = registerOutput<String>('listenerId');
    this.status = registerOutput<String>('status');
  }
}
