import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_container_app_args.dart';

/// Provides a ESA Edge Container App resource.
///
///
///
/// For information about ESA Edge Container App and how to use it, see [What is Edge Container App](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateEdgeContainerApp).
///
/// > **NOTE:** Available since v1.247.0.
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
/// const name = config.get("name") || "tfexample";
/// const _default = new alicloud.esa.EdgeContainerApp("default", {
///     targetPort: 3000,
///     healthCheckHost: "example.com",
///     remarks: name,
///     healthCheckPort: 80,
///     healthCheckUri: "/",
///     healthCheckTimeout: 3,
///     healthCheckMethod: "HEAD",
///     healthCheckHttpCode: "http_2xx",
///     healthCheckFailTimes: 5,
///     servicePort: 80,
///     healthCheckInterval: 5,
///     healthCheckSuccTimes: 2,
///     edgeContainerAppName: name,
///     healthCheckType: "l7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.esa.EdgeContainerApp("default",
///     target_port=3000,
///     health_check_host="example.com",
///     remarks=name,
///     health_check_port=80,
///     health_check_uri="/",
///     health_check_timeout=3,
///     health_check_method="HEAD",
///     health_check_http_code="http_2xx",
///     health_check_fail_times=5,
///     service_port=80,
///     health_check_interval=5,
///     health_check_succ_times=2,
///     edge_container_app_name=name,
///     health_check_type="l7")
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = new AliCloud.Esa.EdgeContainerApp("default", new()
///     {
///         TargetPort = 3000,
///         HealthCheckHost = "example.com",
///         Remarks = name,
///         HealthCheckPort = 80,
///         HealthCheckUri = "/",
///         HealthCheckTimeout = 3,
///         HealthCheckMethod = "HEAD",
///         HealthCheckHttpCode = "http_2xx",
///         HealthCheckFailTimes = 5,
///         ServicePort = 80,
///         HealthCheckInterval = 5,
///         HealthCheckSuccTimes = 2,
///         EdgeContainerAppName = name,
///         HealthCheckType = "l7",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := esa.NewEdgeContainerApp(ctx, "default", &esa.EdgeContainerAppArgs{
/// 			TargetPort:           pulumi.Int(3000),
/// 			HealthCheckHost:      pulumi.String("example.com"),
/// 			Remarks:              pulumi.String(name),
/// 			HealthCheckPort:      pulumi.Int(80),
/// 			HealthCheckUri:       pulumi.String("/"),
/// 			HealthCheckTimeout:   pulumi.Int(3),
/// 			HealthCheckMethod:    pulumi.String("HEAD"),
/// 			HealthCheckHttpCode:  pulumi.String("http_2xx"),
/// 			HealthCheckFailTimes: pulumi.Int(5),
/// 			ServicePort:          pulumi.Int(80),
/// 			HealthCheckInterval:  pulumi.Int(5),
/// 			HealthCheckSuccTimes: pulumi.Int(2),
/// 			EdgeContainerAppName: pulumi.String(name),
/// 			HealthCheckType:      pulumi.String("l7"),
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
/// import com.pulumi.alicloud.esa.EdgeContainerApp;
/// import com.pulumi.alicloud.esa.EdgeContainerAppArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var default_ = new EdgeContainerApp("default", EdgeContainerAppArgs.builder()
///             .targetPort(3000)
///             .healthCheckHost("example.com")
///             .remarks(name)
///             .healthCheckPort(80)
///             .healthCheckUri("/")
///             .healthCheckTimeout(3)
///             .healthCheckMethod("HEAD")
///             .healthCheckHttpCode("http_2xx")
///             .healthCheckFailTimes(5)
///             .servicePort(80)
///             .healthCheckInterval(5)
///             .healthCheckSuccTimes(2)
///             .edgeContainerAppName(name)
///             .healthCheckType("l7")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   default:
///     type: alicloud:esa:EdgeContainerApp
///     properties:
///       targetPort: '3000'
///       healthCheckHost: example.com
///       remarks: ${name}
///       healthCheckPort: '80'
///       healthCheckUri: /
///       healthCheckTimeout: '3'
///       healthCheckMethod: HEAD
///       healthCheckHttpCode: http_2xx
///       healthCheckFailTimes: '5'
///       servicePort: '80'
///       healthCheckInterval: '5'
///       healthCheckSuccTimes: '2'
///       edgeContainerAppName: ${name}
///       healthCheckType: l7
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Edge Container App can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/edgeContainerApp:EdgeContainerApp example <id>
/// ```
class EdgeContainerApp extends pulumi.CustomResource {
  /// The time when the application was created.
  late final pulumi.Output<String> createTime;
  /// The application name must start with a lowercase letter. Lowercase letters, numbers, and bars are supported. The length is limited to 6 to 128 characters.
  late final pulumi.Output<String> edgeContainerAppName;
  /// The number of consecutive successful health checks required for an application to be considered as healthy. Valid values: 1 to 10. Default value: 2.
  late final pulumi.Output<int?> healthCheckFailTimes;
  /// The health check type. By default, this parameter is left empty.
  ///
  /// Valid values:
  late final pulumi.Output<String?> healthCheckHost;
  /// The domain name that is used for health checks. This parameter is empty by default.
  late final pulumi.Output<String> healthCheckHttpCode;
  /// The timeout period of a health check response. If a backend ECS instance does not respond within the specified timeout period, the ECS instance fails the health check. Unit: seconds.
  /// Valid values: `1` to `100`.
  /// Default value: `3`.
  late final pulumi.Output<int> healthCheckInterval;
  /// The HTTP status code returned for a successful health check. Valid values:
  ///
  /// - **http\_2xx** (default)
  /// - **http\_3xx**
  late final pulumi.Output<String> healthCheckMethod;
  /// The URI used for health checks. The URI must be `1` to `80` characters in length. Default value: "/".
  late final pulumi.Output<int> healthCheckPort;
  /// The interval between two consecutive health checks. Unit: seconds. Valid values: `1` to `50`. Default value: `5`.
  late final pulumi.Output<int> healthCheckSuccTimes;
  /// The port used for health checks. Valid values: 1 to 65535. Default value: 80.
  late final pulumi.Output<int> healthCheckTimeout;
  /// The remarks. This parameter is empty by default.
  late final pulumi.Output<String> healthCheckType;
  /// The HTTP request method for health checks. Valid values:
  ///
  /// - `HEAD` (default): requests the headers of the resource.
  /// - `GET`: requests the specified resource and returns both the headers and entity body.
  late final pulumi.Output<String> healthCheckUri;
  /// The backend port, which is also the service port of the application. Valid values: 1 to 65535.
  late final pulumi.Output<String?> remarks;
  /// The name of the application. The name must start with a lowercase letter and can contain lowercase letters, digits, and hyphens (-). The name must be 6 to 128 characters in length.
  late final pulumi.Output<int> servicePort;
  /// The status of the application.
  late final pulumi.Output<String> status;
  /// The server port. Valid values: 1 to 65535.
  late final pulumi.Output<int> targetPort;

  /// Creates a new [EdgeContainerApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeContainerApp]. {@macro pulumi_esa_edge_container_app_edge_container_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeContainerApp(
    String name, {
    EdgeContainerAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/edgeContainerApp:EdgeContainerApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.edgeContainerAppName = registerOutput<String>('edgeContainerAppName');
    this.healthCheckFailTimes = registerOutput<int?>('healthCheckFailTimes');
    this.healthCheckHost = registerOutput<String?>('healthCheckHost');
    this.healthCheckHttpCode = registerOutput<String>('healthCheckHttpCode');
    this.healthCheckInterval = registerOutput<int>('healthCheckInterval');
    this.healthCheckMethod = registerOutput<String>('healthCheckMethod');
    this.healthCheckPort = registerOutput<int>('healthCheckPort');
    this.healthCheckSuccTimes = registerOutput<int>('healthCheckSuccTimes');
    this.healthCheckTimeout = registerOutput<int>('healthCheckTimeout');
    this.healthCheckType = registerOutput<String>('healthCheckType');
    this.healthCheckUri = registerOutput<String>('healthCheckUri');
    this.remarks = registerOutput<String?>('remarks');
    this.servicePort = registerOutput<int>('servicePort');
    this.status = registerOutput<String>('status');
    this.targetPort = registerOutput<int>('targetPort');
  }
}
