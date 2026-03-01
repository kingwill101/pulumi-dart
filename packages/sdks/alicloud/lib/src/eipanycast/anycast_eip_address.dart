import 'package:pulumi/pulumi.dart' as pulumi;
import 'anycast_eip_address_args.dart';
import 'anycast_eip_address_state.dart';

/// Provides a Eipanycast Anycast Eip Address resource.
///
/// Anycast Elastic IP Address.
///
/// For information about Eipanycast Anycast Eip Address and how to use it, see [What is Anycast Eip Address](https://www.alibabacloud.com/help/en/anycast-eip/latest/api-eipanycast-2020-03-09-allocateanycasteipaddress).
///
/// > **NOTE:** Available since v1.113.0.
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
/// const _default = new alicloud.eipanycast.AnycastEipAddress("default", {
///     anycastEipAddressName: name,
///     description: name,
///     bandwidth: 200,
///     serviceLocation: "international",
///     internetChargeType: "PayByTraffic",
///     paymentType: "PayAsYouGo",
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
/// default = alicloud.eipanycast.AnycastEipAddress("default",
///     anycast_eip_address_name=name,
///     description=name,
///     bandwidth=200,
///     service_location="international",
///     internet_charge_type="PayByTraffic",
///     payment_type="PayAsYouGo")
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
///     var @default = new AliCloud.EipAnycast.AnycastEipAddress("default", new()
///     {
///         AnycastEipAddressName = name,
///         Description = name,
///         Bandwidth = 200,
///         ServiceLocation = "international",
///         InternetChargeType = "PayByTraffic",
///         PaymentType = "PayAsYouGo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eipanycast"
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
/// 		_, err := eipanycast.NewAnycastEipAddress(ctx, "default", &eipanycast.AnycastEipAddressArgs{
/// 			AnycastEipAddressName: pulumi.String(name),
/// 			Description:           pulumi.String(name),
/// 			Bandwidth:             pulumi.Int(200),
/// 			ServiceLocation:       pulumi.String("international"),
/// 			InternetChargeType:    pulumi.String("PayByTraffic"),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
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
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddress;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddressArgs;
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
///         var default_ = new AnycastEipAddress("default", AnycastEipAddressArgs.builder()
///             .anycastEipAddressName(name)
///             .description(name)
///             .bandwidth(200)
///             .serviceLocation("international")
///             .internetChargeType("PayByTraffic")
///             .paymentType("PayAsYouGo")
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
///     type: alicloud:eipanycast:AnycastEipAddress
///     properties:
///       anycastEipAddressName: ${name}
///       description: ${name}
///       bandwidth: 200
///       serviceLocation: international
///       internetChargeType: PayByTraffic
///       paymentType: PayAsYouGo
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eipanycast Anycast Eip Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eipanycast/anycastEipAddress:AnycastEipAddress example <id>
/// ```
class AnycastEipAddress extends pulumi.CustomResource {
  /// Anycast EIP instance name.
  late final pulumi.Output<String?> anycastEipAddressName;
  /// The peak bandwidth of the Anycast EIP instance, in Mbps.
  late final pulumi.Output<int> bandwidth;
  /// Anycast EIP instance creation time.
  late final pulumi.Output<String> createTime;
  /// Anycast EIP instance description
  late final pulumi.Output<String?> description;
  /// The billing method of Anycast EIP instance. "PayByBandwidth": refers to the method of billing based on traffic.
  late final pulumi.Output<String?> internetChargeType;
  /// The payment model of Anycast EIP instance. "PayAsYouGo": Refers to the post-paid mode
  late final pulumi.Output<String?> paymentType;
  /// The ID of the resource group to which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  late final pulumi.Output<String> serviceLocation;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// List of resource-bound tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AnycastEipAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnycastEipAddress]. {@macro pulumi_eipanycast_anycast_eip_address_anycast_eip_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnycastEipAddress(
    String name, {
    AnycastEipAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eipanycast/anycastEipAddress:AnycastEipAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.anycastEipAddressName = registerOutput<String?>('anycastEipAddressName');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.internetChargeType = registerOutput<String?>('internetChargeType');
    this.paymentType = registerOutput<String?>('paymentType');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serviceLocation = registerOutput<String>('serviceLocation');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AnycastEipAddress] resource's state with the given [name] and [id].
  static AnycastEipAddress get(
    String name,
    pulumi.Input<String> id, {
    AnycastEipAddressState? state,
  }) {
    return AnycastEipAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnycastEipAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eipanycast/anycastEipAddress:AnycastEipAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.anycastEipAddressName = registerOutput<String?>('anycastEipAddressName');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.internetChargeType = registerOutput<String?>('internetChargeType');
    this.paymentType = registerOutput<String?>('paymentType');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serviceLocation = registerOutput<String>('serviceLocation');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
