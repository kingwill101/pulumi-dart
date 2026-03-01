import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_args.dart';
import 'port_config.dart';
import 'port_state.dart';

/// Provides a Ddos Coo Port resource.
///
///
/// For information about Anti-DDoS Pro Port and how to use it, see [What is Port](https://www.alibabacloud.com/help/en/ddos-protection/latest/api-ddoscoo-2020-01-01-createport).
///
/// > **NOTE:** Available since v1.123.0.
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
///     bandwidth: "30",
///     baseBandwidth: "30",
///     serviceBandwidth: "100",
///     portCount: "50",
///     domainCount: "50",
///     period: 1,
///     productType: "ddoscoo",
/// });
/// const defaultPort = new alicloud.ddos.Port("default", {
///     instanceId: _default.id,
///     frontendPort: "7001",
///     backendPort: "7002",
///     frontendProtocol: "tcp",
///     realServers: [
///         "1.1.1.1",
///         "2.2.2.2",
///     ],
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
///     bandwidth="30",
///     base_bandwidth="30",
///     service_bandwidth="100",
///     port_count="50",
///     domain_count="50",
///     period=1,
///     product_type="ddoscoo")
/// default_port = alicloud.ddos.Port("default",
///     instance_id=default.id,
///     frontend_port="7001",
///     backend_port="7002",
///     frontend_protocol="tcp",
///     real_servers=[
///         "1.1.1.1",
///         "2.2.2.2",
///     ])
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
///         Bandwidth = "30",
///         BaseBandwidth = "30",
///         ServiceBandwidth = "100",
///         PortCount = "50",
///         DomainCount = "50",
///         Period = 1,
///         ProductType = "ddoscoo",
///     });
///
///     var defaultPort = new AliCloud.Ddos.Port("default", new()
///     {
///         InstanceId = @default.Id,
///         FrontendPort = "7001",
///         BackendPort = "7002",
///         FrontendProtocol = "tcp",
///         RealServers = new[]
///         {
///             "1.1.1.1",
///             "2.2.2.2",
///         },
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
/// 		_default, err := ddos.NewDdosCooInstance(ctx, "default", &ddos.DdosCooInstanceArgs{
/// 			Name:             pulumi.String(name),
/// 			Bandwidth:        pulumi.String("30"),
/// 			BaseBandwidth:    pulumi.String("30"),
/// 			ServiceBandwidth: pulumi.String("100"),
/// 			PortCount:        pulumi.String("50"),
/// 			DomainCount:      pulumi.String("50"),
/// 			Period:           pulumi.Int(1),
/// 			ProductType:      pulumi.String("ddoscoo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ddos.NewPort(ctx, "default", &ddos.PortArgs{
/// 			InstanceId:       _default.ID(),
/// 			FrontendPort:     pulumi.String("7001"),
/// 			BackendPort:      pulumi.String("7002"),
/// 			FrontendProtocol: pulumi.String("tcp"),
/// 			RealServers: pulumi.StringArray{
/// 				pulumi.String("1.1.1.1"),
/// 				pulumi.String("2.2.2.2"),
/// 			},
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
/// import com.pulumi.alicloud.ddos.Port;
/// import com.pulumi.alicloud.ddos.PortArgs;
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
///             .bandwidth("30")
///             .baseBandwidth("30")
///             .serviceBandwidth("100")
///             .portCount("50")
///             .domainCount("50")
///             .period(1)
///             .productType("ddoscoo")
///             .build());
///
///         var defaultPort = new Port("defaultPort", PortArgs.builder()
///             .instanceId(default_.id())
///             .frontendPort("7001")
///             .backendPort("7002")
///             .frontendProtocol("tcp")
///             .realServers(
///                 "1.1.1.1",
///                 "2.2.2.2")
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
///       bandwidth: '30'
///       baseBandwidth: '30'
///       serviceBandwidth: '100'
///       portCount: '50'
///       domainCount: '50'
///       period: '1'
///       productType: ddoscoo
///   defaultPort:
///     type: alicloud:ddos:Port
///     name: default
///     properties:
///       instanceId: ${default.id}
///       frontendPort: '7001'
///       backendPort: '7002'
///       frontendProtocol: tcp
///       realServers:
///         - 1.1.1.1
///         - 2.2.2.2
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ddos Coo Port can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/port:Port example <instance_id>:<frontend_port>:<frontend_protocol>
/// ```
class Port extends pulumi.CustomResource {
  /// The port of the origin server. Valid values: `0` to `65535`.
  late final pulumi.Output<String?> backendPort;
  /// Session persistence settings for port forwarding rules. Use a string representation in JSON format. The specific structure is described as follows.
  /// - `PersistenceTimeout`: is of Integer type and is required. The timeout period of the session. Value range: `30` to `3600`, in seconds. The default value is `0`, which is closed. See `config` below.
  late final pulumi.Output<PortConfig> config;
  /// The forwarding port to query. Valid values: `0` to `65535`.
  late final pulumi.Output<String> frontendPort;
  /// The type of the forwarding protocol to query. Valid values:
  late final pulumi.Output<String> frontendProtocol;
  /// The ID of the Anti-DDoS Pro or Anti-DDoS Premium instance to which the port forwarding rule belongs.
  ///
  /// > **NOTE:**  You can call the [DescribeInstanceIds](https://www.alibabacloud.com/help/en/doc-detail/157459.html) operation to query the IDs of all instances.
  late final pulumi.Output<String> instanceId;
  /// List of source IP addresses
  late final pulumi.Output<List<String>> realServers;

  /// Creates a new [Port].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Port]. {@macro pulumi_ddos_port_port_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Port(
    String name, {
    PortArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/port:Port',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendPort = registerOutput<String?>('backendPort');
    this.config = registerOutput<PortConfig>('config');
    this.frontendPort = registerOutput<String>('frontendPort');
    this.frontendProtocol = registerOutput<String>('frontendProtocol');
    this.instanceId = registerOutput<String>('instanceId');
    this.realServers = registerOutput<List<String>>('realServers');
  }

  /// Gets an existing [Port] resource's state with the given [name] and [id].
  static Port get(
    String name,
    pulumi.Input<String> id, {
    PortState? state,
  }) {
    return Port._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Port._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/port:Port',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendPort = registerOutput<String?>('backendPort');
    this.config = registerOutput<PortConfig>('config');
    this.frontendPort = registerOutput<String>('frontendPort');
    this.frontendProtocol = registerOutput<String>('frontendProtocol');
    this.instanceId = registerOutput<String>('instanceId');
    this.realServers = registerOutput<List<String>>('realServers');
  }
}
