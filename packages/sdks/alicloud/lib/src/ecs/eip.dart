import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_args.dart';
import 'eip_state.dart';

/// Provides an elastic IP resource.
///
/// > **DEPRECATED:**  This resource  has been deprecated from version `1.126.0`. Please use new resource alicloud_eip_address.
///
/// > **NOTE:** The resource only supports to create `PostPaid PayByTraffic`  or `PrePaid PayByBandwidth` elastic IP for international account. Otherwise, you will happened error `COMMODITY.INVALID_COMPONENT`.
/// Your account is international if you can use it to login in [International Web Console](https://account.alibabacloud.com/login/login.htm).
///
/// > **NOTE:** From version 1.10.1, this resource supports creating "PrePaid" EIP. In addition, it supports setting EIP name and description.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Create a new EIP.
/// const example = new alicloud.ecs.Eip("example", {
///     bandwidth: "10",
///     internetChargeType: "PayByBandwidth",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create a new EIP.
/// example = alicloud.ecs.Eip("example",
///     bandwidth="10",
///     internet_charge_type="PayByBandwidth")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new EIP.
///     var example = new AliCloud.Ecs.Eip("example", new()
///     {
///         Bandwidth = "10",
///         InternetChargeType = "PayByBandwidth",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new EIP.
/// 		_, err := ecs.NewEip(ctx, "example", &ecs.EipArgs{
/// 			Bandwidth:          pulumi.String("10"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
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
/// import com.pulumi.alicloud.ecs.Eip;
/// import com.pulumi.alicloud.ecs.EipArgs;
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
///         // Create a new EIP.
///         var example = new Eip("example", EipArgs.builder()
///             .bandwidth("10")
///             .internetChargeType("PayByBandwidth")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new EIP.
///   example:
///     type: alicloud:ecs:Eip
///     properties:
///       bandwidth: '10'
///       internetChargeType: PayByBandwidth
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing eip module
/// to create several EIP instances and associate them with other resources one-click, like ECS instances, SLB, Nat Gateway and so on.
///
/// ## Import
///
/// Elastic IP address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/eip:Eip example eip-abc12345678
/// ```
class Eip extends pulumi.CustomResource {
  late final pulumi.Output<String?> activityId;
  /// The name of the EIP instance. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://.
  late final pulumi.Output<String> addressName;
  late final pulumi.Output<String> allocationId;
  late final pulumi.Output<bool?> autoPay;
  /// Maximum bandwidth to the elastic public network, measured in Mbps (Mega bit per second). If this value is not specified, then automatically sets it to 5 Mbps.
  late final pulumi.Output<String> bandwidth;
  late final pulumi.Output<String> createTime;
  /// Whether enable the deletion protection or not. Default value: `false`.
  /// - true: Enable deletion protection.
  /// - false: Disable deletion protection.
  late final pulumi.Output<bool> deletionProtection;
  /// Description of the EIP instance, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> highDefinitionMonitorLogStatus;
  /// (It has been deprecated from version 1.126.0 and using new attribute `payment_type` instead) Elastic IP instance charge type. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid".
  late final pulumi.Output<String> instanceChargeType;
  /// Internet charge type of the EIP, Valid values are `PayByBandwidth`, `PayByTraffic`. Default to `PayByBandwidth`. **NOTE:** From version `1.7.1` to `1.125.0`, it defaults to `PayByTraffic`. It is only "PayByBandwidth" when `instance_charge_type` is PrePaid.
  late final pulumi.Output<String> internetChargeType;
  /// The elastic ip address
  late final pulumi.Output<String> ipAddress;
  /// The line type of the Elastic IP instance. Default to `BGP`. Other type of the isp need to open a whitelist.
  late final pulumi.Output<String> isp;
  late final pulumi.Output<String?> logProject;
  late final pulumi.Output<String?> logStore;
  late final pulumi.Output<String> mode;
  /// It has been deprecated from version 1.126.0 and using new attribute `address_name` instead.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> netmode;
  /// The billing method of the EIP. Valid values: `Subscription` and `PayAsYouGo`. Default value is `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  late final pulumi.Output<String?> pricingCycle;
  late final pulumi.Output<String?> publicIpAddressPoolId;
  /// The Id of resource group which the eip belongs.
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<List<String>?> securityProtectionTypes;
  /// The EIP current status.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> zone;

  /// Creates a new [Eip].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Eip]. {@macro pulumi_ecs_eip_eip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Eip(
    String name, {
    EipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/eip:Eip',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activityId = registerOutput<String?>('activityId');
    this.addressName = registerOutput<String>('addressName');
    this.allocationId = registerOutput<String>('allocationId');
    this.autoPay = registerOutput<bool?>('autoPay');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.description = registerOutput<String>('description');
    this.highDefinitionMonitorLogStatus = registerOutput<String>('highDefinitionMonitorLogStatus');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.isp = registerOutput<String>('isp');
    this.logProject = registerOutput<String?>('logProject');
    this.logStore = registerOutput<String?>('logStore');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.netmode = registerOutput<String>('netmode');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.publicIpAddressPoolId = registerOutput<String?>('publicIpAddressPoolId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zone = registerOutput<String>('zone');
  }

  /// Gets an existing [Eip] resource's state with the given [name] and [id].
  static Eip get(
    String name,
    pulumi.Input<String> id, {
    EipState? state,
  }) {
    return Eip._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Eip._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/eip:Eip',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activityId = registerOutput<String?>('activityId');
    this.addressName = registerOutput<String>('addressName');
    this.allocationId = registerOutput<String>('allocationId');
    this.autoPay = registerOutput<bool?>('autoPay');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.description = registerOutput<String>('description');
    this.highDefinitionMonitorLogStatus = registerOutput<String>('highDefinitionMonitorLogStatus');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.isp = registerOutput<String>('isp');
    this.logProject = registerOutput<String?>('logProject');
    this.logStore = registerOutput<String?>('logStore');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.netmode = registerOutput<String>('netmode');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.publicIpAddressPoolId = registerOutput<String?>('publicIpAddressPoolId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zone = registerOutput<String>('zone');
  }
}
