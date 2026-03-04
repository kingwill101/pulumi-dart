import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_bandwith_package_attachment_args.dart';
import 'common_bandwith_package_attachment_state.dart';

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
/// const _default = new alicloud.vpc.CommonBandwithPackage("default", {
///     bandwidth: "3",
///     internetChargeType: "PayByTraffic",
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {
///     bandwidth: "3",
///     internetChargeType: "PayByTraffic",
/// });
/// const defaultCommonBandwithPackageAttachment = new alicloud.vpc.CommonBandwithPackageAttachment("default", {
///     bandwidthPackageId: _default.id,
///     instanceId: defaultEipAddress.id,
///     bandwidthPackageBandwidth: "2",
///     ipType: "EIP",
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
/// default = alicloud.vpc.CommonBandwithPackage("default",
///     bandwidth="3",
///     internet_charge_type="PayByTraffic")
/// default_eip_address = alicloud.ecs.EipAddress("default",
///     bandwidth="3",
///     internet_charge_type="PayByTraffic")
/// default_common_bandwith_package_attachment = alicloud.vpc.CommonBandwithPackageAttachment("default",
///     bandwidth_package_id=default.id,
///     instance_id=default_eip_address.id,
///     bandwidth_package_bandwidth="2",
///     ip_type="EIP")
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
///     var @default = new AliCloud.Vpc.CommonBandwithPackage("default", new()
///     {
///         Bandwidth = "3",
///         InternetChargeType = "PayByTraffic",
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         Bandwidth = "3",
///         InternetChargeType = "PayByTraffic",
///     });
///
///     var defaultCommonBandwithPackageAttachment = new AliCloud.Vpc.CommonBandwithPackageAttachment("default", new()
///     {
///         BandwidthPackageId = @default.Id,
///         InstanceId = defaultEipAddress.Id,
///         BandwidthPackageBandwidth = "2",
///         IpType = "EIP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := vpc.NewCommonBandwithPackage(ctx, "default", &vpc.CommonBandwithPackageArgs{
/// 			Bandwidth:          pulumi.String("3"),
/// 			InternetChargeType: pulumi.String("PayByTraffic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			Bandwidth:          pulumi.String("3"),
/// 			InternetChargeType: pulumi.String("PayByTraffic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewCommonBandwithPackageAttachment(ctx, "default", &vpc.CommonBandwithPackageAttachmentArgs{
/// 			BandwidthPackageId:        _default.ID(),
/// 			InstanceId:                defaultEipAddress.ID(),
/// 			BandwidthPackageBandwidth: pulumi.String("2"),
/// 			IpType:                    pulumi.String("EIP"),
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
/// import com.pulumi.alicloud.vpc.CommonBandwithPackage;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackageArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackageAttachment;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackageAttachmentArgs;
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
///         var default_ = new CommonBandwithPackage("default", CommonBandwithPackageArgs.builder()
///             .bandwidth("3")
///             .internetChargeType("PayByTraffic")
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .bandwidth("3")
///             .internetChargeType("PayByTraffic")
///             .build());
///
///         var defaultCommonBandwithPackageAttachment = new CommonBandwithPackageAttachment("defaultCommonBandwithPackageAttachment", CommonBandwithPackageAttachmentArgs.builder()
///             .bandwidthPackageId(default_.id())
///             .instanceId(defaultEipAddress.id())
///             .bandwidthPackageBandwidth("2")
///             .ipType("EIP")
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
///     type: alicloud:vpc:CommonBandwithPackage
///     properties:
///       bandwidth: 3
///       internetChargeType: PayByTraffic
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       bandwidth: '3'
///       internetChargeType: PayByTraffic
///   defaultCommonBandwithPackageAttachment:
///     type: alicloud:vpc:CommonBandwithPackageAttachment
///     name: default
///     properties:
///       bandwidthPackageId: ${default.id}
///       instanceId: ${defaultEipAddress.id}
///       bandwidthPackageBandwidth: '2'
///       ipType: EIP
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EIP Bandwidth Plan (CBWP) Common Bandwidth Package Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/commonBandwithPackageAttachment:CommonBandwithPackageAttachment example <bandwidth_package_id>:<instance_id>
/// ```
class CommonBandwithPackageAttachment extends pulumi.CustomResource {
  /// The maximum bandwidth for the EIP. This value cannot be larger than the maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// &gt; **NOTE:**  From version 1.261.0, If you want to cancel the maximum bandwidth configuration for the EIP, you can set `bandwidth_package_bandwidth` to `Cancelled`.
  late final pulumi.Output<String> bandwidthPackageBandwidth;

  /// The ID of the Internet Shared Bandwidth instance.
  late final pulumi.Output<String> bandwidthPackageId;

  /// . Field `cancel_common_bandwidth_package_ip_bandwidth` has been deprecated from provider version 1.261.0. Replace with `bandwidth_package_bandwidth` = `"Cancelled"`.
  late final pulumi.Output<bool?> cancelCommonBandwidthPackageIpBandwidth;

  /// The ID of the EIP that you want to query.
  ///
  /// You can specify up to 50 EIP IDs. Separate multiple IDs with commas (,).
  ///
  /// &gt; **NOTE:** If both `EipAddress` and `AllocationId` are specified, you can specify up to 50 EIP IDs for `AllocationId`, and specify up to 50 EIPs for `EipAddress`.
  late final pulumi.Output<String> instanceId;

  /// The type of IP address. Set the value to `EIP` to associate EIPs with the Internet Shared Bandwidth instance.
  late final pulumi.Output<String?> ipType;

  /// The status of the Internet Shared Bandwidth instance.
  late final pulumi.Output<String> status;

  /// Creates a new [CommonBandwithPackageAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommonBandwithPackageAttachment]. {@macro pulumi_vpc_common_bandwith_package_attachment_common_bandwith_package_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommonBandwithPackageAttachment(
    String name, {
    CommonBandwithPackageAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/commonBandwithPackageAttachment:CommonBandwithPackageAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidthPackageBandwidth = registerOutput<String>(
      'bandwidthPackageBandwidth',
    );
    bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    cancelCommonBandwidthPackageIpBandwidth = registerOutput<bool?>(
      'cancelCommonBandwidthPackageIpBandwidth',
    );
    instanceId = registerOutput<String>('instanceId');
    ipType = registerOutput<String?>('ipType');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [CommonBandwithPackageAttachment] resource's state with the given [name] and [id].
  static CommonBandwithPackageAttachment get(
    String name,
    pulumi.Input<String> id, {
    CommonBandwithPackageAttachmentState? state,
  }) {
    return CommonBandwithPackageAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CommonBandwithPackageAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/commonBandwithPackageAttachment:CommonBandwithPackageAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidthPackageBandwidth = registerOutput<String>(
      'bandwidthPackageBandwidth',
    );
    bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    cancelCommonBandwidthPackageIpBandwidth = registerOutput<bool?>(
      'cancelCommonBandwidthPackageIpBandwidth',
    );
    instanceId = registerOutput<String>('instanceId');
    ipType = registerOutput<String?>('ipType');
    status = registerOutput<String>('status');
  }
}
