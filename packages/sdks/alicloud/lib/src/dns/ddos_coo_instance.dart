import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_coo_instance_args.dart';
import 'ddos_coo_instance_state.dart';

/// Provides a BGP-line Anti-DDoS Pro(DdosCoo) Instance resource.
///
/// For information about BGP-line Anti-DDoS Pro(DdosCoo) Instance and how to use it, see [What is Anti-DDoS Pro Instance](https://www.alibabacloud.com/help/en/ddos-protection/latest/create-an-anti-ddos-pro-or-anti-ddos-premium-instance-by-calling-an-api-operation).
///
/// &gt; **NOTE:** Available since v1.37.0.
///
/// &gt; **NOTE:** The endpoint of bssopenapi used only support "business.aliyuncs.com" at present.
///
/// &gt; **NOTE:** From version 1.214.0, if `product_type` is set to `ddoscoo` or `ddoscoo_intl`, the provider `region` should be set to `cn-hangzhou`, and if `product_type` is set to `ddosDip`, the provider `region` should be set to `ap-southeast-1`.
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
/// const name = config.get("name") || "tf-example";
/// const _default = new alicloud.ddos.DdosCooInstance("default", {
///     name: name,
///     baseBandwidth: "30",
///     bandwidth: "30",
///     serviceBandwidth: "100",
///     portCount: "50",
///     domainCount: "50",
///     productType: "ddoscoo",
///     period: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.ddos.DdosCooInstance("default",
///     name=name,
///     base_bandwidth="30",
///     bandwidth="30",
///     service_bandwidth="100",
///     port_count="50",
///     domain_count="50",
///     product_type="ddoscoo",
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
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new AliCloud.Ddos.DdosCooInstance("default", new()
///     {
///         Name = name,
///         BaseBandwidth = "30",
///         Bandwidth = "30",
///         ServiceBandwidth = "100",
///         PortCount = "50",
///         DomainCount = "50",
///         ProductType = "ddoscoo",
///         Period = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := ddos.NewDdosCooInstance(ctx, "default", &ddos.DdosCooInstanceArgs{
/// 			Name:             pulumi.String(name),
/// 			BaseBandwidth:    pulumi.String("30"),
/// 			Bandwidth:        pulumi.String("30"),
/// 			ServiceBandwidth: pulumi.String("100"),
/// 			PortCount:        pulumi.String("50"),
/// 			DomainCount:      pulumi.String("50"),
/// 			ProductType:      pulumi.String("ddoscoo"),
/// 			Period:           pulumi.Int(1),
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
/// import com.pulumi.alicloud.ddos.DdosCooInstance;
/// import com.pulumi.alicloud.ddos.DdosCooInstanceArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var default_ = new DdosCooInstance("default", DdosCooInstanceArgs.builder()
///             .name(name)
///             .baseBandwidth("30")
///             .bandwidth("30")
///             .serviceBandwidth("100")
///             .portCount("50")
///             .domainCount("50")
///             .productType("ddoscoo")
///             .period(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   default:
///     type: alicloud:ddos:DdosCooInstance
///     properties:
///       name: ${name}
///       baseBandwidth: '30'
///       bandwidth: '30'
///       serviceBandwidth: '100'
///       portCount: '50'
///       domainCount: '50'
///       productType: ddoscoo
///       period: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DdosCoo Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/ddosCooInstance:DdosCooInstance example <id>
/// ```
class DdosCooInstance extends pulumi.CustomResource {
  /// The IP version of the IP address. Default value: `Ipv4`. Valid values: `Ipv4`, `Ipv6`. **NOTE:** `address_type` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  late final pulumi.Output<String> addressType;
  /// Elastic defend bandwidth of the instance. This value must be larger than the base defend bandwidth. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  late final pulumi.Output<String> bandwidth;
  /// The mitigation plan of the instance. Valid values:
  late final pulumi.Output<String?> bandwidthMode;
  /// Base defend bandwidth of the instance. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `base_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  late final pulumi.Output<String> baseBandwidth;
  /// (Available since v1.248.0) The time when the instance was created.
  late final pulumi.Output<int> createTime;
  /// Domain retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  late final pulumi.Output<String> domainCount;
  /// The mitigation plan of the instance. Default value: `coop`. Valid values:
  late final pulumi.Output<String> editionSale;
  /// The function plan of the instance. Valid values:
  late final pulumi.Output<String> functionVersion;
  /// (Available since v1.212.0) The IP address of the Instance.
  late final pulumi.Output<String> ip;
  /// The type of modification. Valid values: `UPGRADE`, `DOWNGRADE`.
  late final pulumi.Output<String?> modifyType;
  /// Name of the instance. This name can have a string of `1` to `64` characters.
  late final pulumi.Output<String> name;
  /// The clean bandwidth provided by the instance. **NOTE:** `normal_bandwidth` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_bandwidth` can be modified.
  late final pulumi.Output<String> normalBandwidth;
  /// The clean QPS provided by the instance. **NOTE:** `normal_qps` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_qps` can be modified.
  late final pulumi.Output<String> normalQps;
  /// The duration that you will buy DdosCoo instance (in month). Valid values: [1~9], `12`, `24`, `36`. Default value: `1`. At present, the provider does not support modify `period`.
  late final pulumi.Output<int?> period;
  /// Port retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  late final pulumi.Output<String> portCount;
  /// The mitigation plan of the instance. Valid values:
  late final pulumi.Output<String> productPlan;
  /// The product type for purchasing DDOSCOO instances used to differ different account type. Default value: `ddoscoo`. Valid values:
  late final pulumi.Output<String?> productType;
  /// Business bandwidth of the instance. At leaset 100. Increased 100 per step, such as 100, 200, 300. The unit is Mbps. Only support upgrade. **NOTE:** `service_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  late final pulumi.Output<String> serviceBandwidth;
  /// (Available since v1.248.0) The status of the instance.
  late final pulumi.Output<int> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DdosCooInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DdosCooInstance]. {@macro pulumi_dns_ddos_coo_instance_ddos_coo_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DdosCooInstance(
    String name, {
    DdosCooInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/ddosCooInstance:DdosCooInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressType = registerOutput<String>('addressType');
    bandwidth = registerOutput<String>('bandwidth');
    bandwidthMode = registerOutput<String?>('bandwidthMode');
    baseBandwidth = registerOutput<String>('baseBandwidth');
    createTime = registerOutput<int>('createTime');
    domainCount = registerOutput<String>('domainCount');
    editionSale = registerOutput<String>('editionSale');
    functionVersion = registerOutput<String>('functionVersion');
    ip = registerOutput<String>('ip');
    modifyType = registerOutput<String?>('modifyType');
    this.name = registerOutput<String>('name');
    normalBandwidth = registerOutput<String>('normalBandwidth');
    normalQps = registerOutput<String>('normalQps');
    period = registerOutput<int?>('period');
    portCount = registerOutput<String>('portCount');
    productPlan = registerOutput<String>('productPlan');
    productType = registerOutput<String?>('productType');
    serviceBandwidth = registerOutput<String>('serviceBandwidth');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DdosCooInstance] resource's state with the given [name] and [id].
  static DdosCooInstance get(
    String name,
    pulumi.Input<String> id, {
    DdosCooInstanceState? state,
  }) {
    return DdosCooInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DdosCooInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/ddosCooInstance:DdosCooInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressType = registerOutput<String>('addressType');
    bandwidth = registerOutput<String>('bandwidth');
    bandwidthMode = registerOutput<String?>('bandwidthMode');
    baseBandwidth = registerOutput<String>('baseBandwidth');
    createTime = registerOutput<int>('createTime');
    domainCount = registerOutput<String>('domainCount');
    editionSale = registerOutput<String>('editionSale');
    functionVersion = registerOutput<String>('functionVersion');
    ip = registerOutput<String>('ip');
    modifyType = registerOutput<String?>('modifyType');
    this.name = registerOutput<String>('name');
    normalBandwidth = registerOutput<String>('normalBandwidth');
    normalQps = registerOutput<String>('normalQps');
    period = registerOutput<int?>('period');
    portCount = registerOutput<String>('portCount');
    productPlan = registerOutput<String>('productPlan');
    productType = registerOutput<String?>('productType');
    serviceBandwidth = registerOutput<String>('serviceBandwidth');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
