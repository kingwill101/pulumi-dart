import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_gateway_args.dart';
import 'customer_gateway_state.dart';

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
/// const _default = new alicloud.vpn.CustomerGateway("default", {
///     description: name,
///     ipAddress: "4.3.2.10",
///     asn: "1219002",
///     customerGatewayName: name,
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
/// default = alicloud.vpn.CustomerGateway("default",
///     description=name,
///     ip_address="4.3.2.10",
///     asn="1219002",
///     customer_gateway_name=name)
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
///     var @default = new AliCloud.Vpn.CustomerGateway("default", new()
///     {
///         Description = name,
///         IpAddress = "4.3.2.10",
///         Asn = "1219002",
///         CustomerGatewayName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
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
/// 		_, err := vpn.NewCustomerGateway(ctx, "default", &vpn.CustomerGatewayArgs{
/// 			Description:         pulumi.String(name),
/// 			IpAddress:           pulumi.String("4.3.2.10"),
/// 			Asn:                 pulumi.String("1219002"),
/// 			CustomerGatewayName: pulumi.String(name),
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
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
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
///         var default_ = new CustomerGateway("default", CustomerGatewayArgs.builder()
///             .description(name)
///             .ipAddress("4.3.2.10")
///             .asn("1219002")
///             .customerGatewayName(name)
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
///     type: alicloud:vpn:CustomerGateway
///     properties:
///       description: ${name}
///       ipAddress: 4.3.2.10
///       asn: '1219002'
///       customerGatewayName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPN customer gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/customerGateway:CustomerGateway example <id>
/// ```
class CustomerGateway extends pulumi.CustomResource {
  /// Asn.
  late final pulumi.Output<String?> asn;
  /// The time when the customer gateway was created.
  late final pulumi.Output<int> createTime;
  /// The name of the customer gateway.
  late final pulumi.Output<String> customerGatewayName;
  /// The description of the customer gateway.
  late final pulumi.Output<String?> description;
  /// The IP address of the customer gateway.
  late final pulumi.Output<String> ipAddress;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'customer_gateway_name' instead.
  late final pulumi.Output<String> name;
  /// tag.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [CustomerGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerGateway]. {@macro pulumi_vpn_customer_gateway_customer_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerGateway(
    String name, {
    CustomerGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/customerGateway:CustomerGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asn = registerOutput<String?>('asn');
    createTime = registerOutput<int>('createTime');
    customerGatewayName = registerOutput<String>('customerGatewayName');
    description = registerOutput<String?>('description');
    ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [CustomerGateway] resource's state with the given [name] and [id].
  static CustomerGateway get(
    String name,
    pulumi.Input<String> id, {
    CustomerGatewayState? state,
  }) {
    return CustomerGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomerGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/customerGateway:CustomerGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asn = registerOutput<String?>('asn');
    createTime = registerOutput<int>('createTime');
    customerGatewayName = registerOutput<String>('customerGatewayName');
    description = registerOutput<String?>('description');
    ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
