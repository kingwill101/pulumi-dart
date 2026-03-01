import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_cen_args.dart';
import 'firewall_vpc_firewall_cen_local_vpc.dart';
import 'firewall_vpc_firewall_cen_state.dart';

/// Provides a Cloud Firewall Vpc Firewall Cen resource.
///
/// For information about Cloud Firewall Vpc Firewall Cen and how to use it, see [What is Vpc Firewall Cen](https://www.alibabacloud.com/help/en/cloud-firewall/latest/createvpcfirewallcenconfigure).
///
/// > **NOTE:** Available since v1.194.0.
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
/// // These resource primary keys should be replaced with your actual values.
/// const _default = new alicloud.cloudfirewall.FirewallVpcFirewallCen("default", {
///     cenId: "cen-xxx",
///     localVpc: {
///         networkInstanceId: "vpc-xxx",
///     },
///     status: "open",
///     memberUid: "14151*****827022",
///     vpcRegion: "cn-hangzhou",
///     vpcFirewallName: "tf-vpc-firewall-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # These resource primary keys should be replaced with your actual values.
/// default = alicloud.cloudfirewall.FirewallVpcFirewallCen("default",
///     cen_id="cen-xxx",
///     local_vpc={
///         "network_instance_id": "vpc-xxx",
///     },
///     status="open",
///     member_uid="14151*****827022",
///     vpc_region="cn-hangzhou",
///     vpc_firewall_name="tf-vpc-firewall-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // These resource primary keys should be replaced with your actual values.
///     var @default = new AliCloud.CloudFirewall.FirewallVpcFirewallCen("default", new()
///     {
///         CenId = "cen-xxx",
///         LocalVpc = new AliCloud.CloudFirewall.Inputs.FirewallVpcFirewallCenLocalVpcArgs
///         {
///             NetworkInstanceId = "vpc-xxx",
///         },
///         Status = "open",
///         MemberUid = "14151*****827022",
///         VpcRegion = "cn-hangzhou",
///         VpcFirewallName = "tf-vpc-firewall-name",
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
/// 		// These resource primary keys should be replaced with your actual values.
/// 		_, err := cloudfirewall.NewFirewallVpcFirewallCen(ctx, "default", &cloudfirewall.FirewallVpcFirewallCenArgs{
/// 			CenId: pulumi.String("cen-xxx"),
/// 			LocalVpc: &cloudfirewall.FirewallVpcFirewallCenLocalVpcArgs{
/// 				NetworkInstanceId: pulumi.String("vpc-xxx"),
/// 			},
/// 			Status:          pulumi.String("open"),
/// 			MemberUid:       pulumi.String("14151*****827022"),
/// 			VpcRegion:       pulumi.String("cn-hangzhou"),
/// 			VpcFirewallName: pulumi.String("tf-vpc-firewall-name"),
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
/// import com.pulumi.alicloud.cloudfirewall.FirewallVpcFirewallCen;
/// import com.pulumi.alicloud.cloudfirewall.FirewallVpcFirewallCenArgs;
/// import com.pulumi.alicloud.cloudfirewall.inputs.FirewallVpcFirewallCenLocalVpcArgs;
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
///         // These resource primary keys should be replaced with your actual values.
///         var default_ = new FirewallVpcFirewallCen("default", FirewallVpcFirewallCenArgs.builder()
///             .cenId("cen-xxx")
///             .localVpc(FirewallVpcFirewallCenLocalVpcArgs.builder()
///                 .networkInstanceId("vpc-xxx")
///                 .build())
///             .status("open")
///             .memberUid("14151*****827022")
///             .vpcRegion("cn-hangzhou")
///             .vpcFirewallName("tf-vpc-firewall-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # These resource primary keys should be replaced with your actual values.
///   default:
///     type: alicloud:cloudfirewall:FirewallVpcFirewallCen
///     properties:
///       cenId: cen-xxx
///       localVpc:
///         networkInstanceId: vpc-xxx
///       status: open
///       memberUid: 14151*****827022
///       vpcRegion: cn-hangzhou
///       vpcFirewallName: tf-vpc-firewall-name
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Vpc Firewall Cen can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/firewallVpcFirewallCen:FirewallVpcFirewallCen example <id>
/// ```
class FirewallVpcFirewallCen extends pulumi.CustomResource {
  /// The ID of the CEN instance.
  late final pulumi.Output<String> cenId;
  /// Intercommunication type, value: expressconnect: Express Channel cen: Cloud Enterprise Network
  late final pulumi.Output<String> connectType;
  /// The language type of the requested and received messages. Valid values:
  late final pulumi.Output<String?> lang;
  /// The details of the VPC. See `local_vpc` below.
  late final pulumi.Output<FirewallVpcFirewallCenLocalVpc> localVpc;
  /// The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  late final pulumi.Output<String?> memberUid;
  /// Firewall switch status.
  late final pulumi.Output<String> status;
  /// VPC firewall ID
  late final pulumi.Output<String> vpcFirewallId;
  /// The name of the VPC firewall instance.
  late final pulumi.Output<String> vpcFirewallName;
  /// The ID of the region to which the VPC is created.
  late final pulumi.Output<String> vpcRegion;

  /// Creates a new [FirewallVpcFirewallCen].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallVpcFirewallCen]. {@macro pulumi_cloudfirewall_firewall_vpc_firewall_cen_firewall_vpc_firewall_cen_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallVpcFirewallCen(
    String name, {
    FirewallVpcFirewallCenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/firewallVpcFirewallCen:FirewallVpcFirewallCen',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.connectType = registerOutput<String>('connectType');
    this.lang = registerOutput<String?>('lang');
    this.localVpc = registerOutput<FirewallVpcFirewallCenLocalVpc>('localVpc');
    this.memberUid = registerOutput<String?>('memberUid');
    this.status = registerOutput<String>('status');
    this.vpcFirewallId = registerOutput<String>('vpcFirewallId');
    this.vpcFirewallName = registerOutput<String>('vpcFirewallName');
    this.vpcRegion = registerOutput<String>('vpcRegion');
  }

  /// Gets an existing [FirewallVpcFirewallCen] resource's state with the given [name] and [id].
  static FirewallVpcFirewallCen get(
    String name,
    pulumi.Input<String> id, {
    FirewallVpcFirewallCenState? state,
  }) {
    return FirewallVpcFirewallCen._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallVpcFirewallCen._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/firewallVpcFirewallCen:FirewallVpcFirewallCen',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.connectType = registerOutput<String>('connectType');
    this.lang = registerOutput<String?>('lang');
    this.localVpc = registerOutput<FirewallVpcFirewallCenLocalVpc>('localVpc');
    this.memberUid = registerOutput<String?>('memberUid');
    this.status = registerOutput<String>('status');
    this.vpcFirewallId = registerOutput<String>('vpcFirewallId');
    this.vpcFirewallName = registerOutput<String>('vpcFirewallName');
    this.vpcRegion = registerOutput<String>('vpcRegion');
  }
}
