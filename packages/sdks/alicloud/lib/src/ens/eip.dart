import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_args.dart';
import 'eip_state.dart';

/// Provides a ENS Eip resource.
///
/// Edge elastic public network IP. When you use it for the first time, please contact the product classmates to add a resource whitelist.
///
/// For information about ENS Eip and how to use it, see [What is Eip](https://www.alibabacloud.com/help/en/ens/developer-reference/api-createeipinstance).
///
/// > **NOTE:** Available since v1.213.0.
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
/// const _default = new alicloud.ens.Eip("default", {
///     description: "EipDescription_autotest",
///     bandwidth: 5,
///     isp: "cmcc",
///     paymentType: "PayAsYouGo",
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     eipName: name,
///     internetChargeType: "95BandwidthByMonth",
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
/// default = alicloud.ens.Eip("default",
///     description="EipDescription_autotest",
///     bandwidth=5,
///     isp="cmcc",
///     payment_type="PayAsYouGo",
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     eip_name=name,
///     internet_charge_type="95BandwidthByMonth")
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
///     var @default = new AliCloud.Ens.Eip("default", new()
///     {
///         Description = "EipDescription_autotest",
///         Bandwidth = 5,
///         Isp = "cmcc",
///         PaymentType = "PayAsYouGo",
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         EipName = name,
///         InternetChargeType = "95BandwidthByMonth",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		_, err := ens.NewEip(ctx, "default", &ens.EipArgs{
/// 			Description:        pulumi.String("EipDescription_autotest"),
/// 			Bandwidth:          pulumi.Int(5),
/// 			Isp:                pulumi.String("cmcc"),
/// 			PaymentType:        pulumi.String("PayAsYouGo"),
/// 			EnsRegionId:        pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			EipName:            pulumi.String(name),
/// 			InternetChargeType: pulumi.String("95BandwidthByMonth"),
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
/// import com.pulumi.alicloud.ens.Eip;
/// import com.pulumi.alicloud.ens.EipArgs;
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
///         var default_ = new Eip("default", EipArgs.builder()
///             .description("EipDescription_autotest")
///             .bandwidth(5)
///             .isp("cmcc")
///             .paymentType("PayAsYouGo")
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .eipName(name)
///             .internetChargeType("95BandwidthByMonth")
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
///     type: alicloud:ens:Eip
///     properties:
///       description: EipDescription_autotest
///       bandwidth: '5'
///       isp: cmcc
///       paymentType: PayAsYouGo
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       eipName: ${name}
///       internetChargeType: 95BandwidthByMonth
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Eip can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/eip:Eip example <id>
/// ```
class Eip extends pulumi.CustomResource {
  /// The maximum bandwidth of the EIP. Default value: `5`. Valid values: `5` to `10000`. Unit: Mbit/s.
  late final pulumi.Output<int> bandwidth;
  /// The creation time of the EIP instance.
  late final pulumi.Output<String> createTime;
  /// The description of the EIP.
  late final pulumi.Output<String?> description;
  /// The name of the EIP.
  late final pulumi.Output<String?> eipName;
  /// Ens node ID.
  late final pulumi.Output<String> ensRegionId;
  /// The metering method of the EIP. Valid value: `95BandwidthByMonth`.
  late final pulumi.Output<String> internetChargeType;
  /// The Internet service provider. Valid value: `cmcc`, `unicom`, `telecom`.
  late final pulumi.Output<String> isp;
  /// The billing method of the EIP. Valid value: `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The status of the EIP.
  late final pulumi.Output<String> status;

  /// Creates a new [Eip].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Eip]. {@macro pulumi_ens_eip_eip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Eip(
    String name, {
    EipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/eip:Eip',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidth = registerOutput<int>('bandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.eipName = registerOutput<String?>('eipName');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.isp = registerOutput<String>('isp');
    this.paymentType = registerOutput<String>('paymentType');
    this.status = registerOutput<String>('status');
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
          'alicloud:ens/eip:Eip',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidth = registerOutput<int>('bandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.eipName = registerOutput<String?>('eipName');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.isp = registerOutput<String>('isp');
    this.paymentType = registerOutput<String>('paymentType');
    this.status = registerOutput<String>('status');
  }
}
