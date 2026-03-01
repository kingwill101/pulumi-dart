import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_check_template_args.dart';
import 'health_check_template_state.dart';

/// Provides a Application Load Balancer (ALB) Health Check Template resource.
///
/// Health check template.
///
/// For information about Application Load Balancer (ALB) Health Check Template and how to use it, see [What is Health Check Template](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-createhealthchecktemplate).
///
/// > **NOTE:** Available since v1.134.0.
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
/// const example = new alicloud.alb.HealthCheckTemplate("example", {healthCheckTemplateName: name});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// example = alicloud.alb.HealthCheckTemplate("example", health_check_template_name=name)
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
///     var example = new AliCloud.Alb.HealthCheckTemplate("example", new()
///     {
///         HealthCheckTemplateName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
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
/// 		_, err := alb.NewHealthCheckTemplate(ctx, "example", &alb.HealthCheckTemplateArgs{
/// 			HealthCheckTemplateName: pulumi.String(name),
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
/// import com.pulumi.alicloud.alb.HealthCheckTemplate;
/// import com.pulumi.alicloud.alb.HealthCheckTemplateArgs;
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
///         var example = new HealthCheckTemplate("example", HealthCheckTemplateArgs.builder()
///             .healthCheckTemplateName(name)
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
///   example:
///     type: alicloud:alb:HealthCheckTemplate
///     properties:
///       healthCheckTemplateName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Load Balancer (ALB) Health Check Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/healthCheckTemplate:HealthCheckTemplate example <id>
/// ```
class HealthCheckTemplate extends pulumi.CustomResource {
  /// Whether to PreCheck only this request, value:
  /// true: sends a check request and does not create a resource. Check items include whether required parameters, request format, and business restrictions have been filled in. If the check fails, the corresponding error is returned. If the check passes, the error code DryRunOperation is returned.
  /// false (default): Sends a normal request, returns the http_2xx status code after the check, and directly performs the operation.
  late final pulumi.Output<bool?> dryRun;
  /// The HTTP code of the health check. The default value is http_2xx. The normal HTTP code for health check. Separate multiple codes with commas (,). Valid values: http_2xx, http_3xx, http_4xx, or http_5xx.
  late final pulumi.Output<List<String>> healthCheckCodes;
  /// The number of the port that is used for health checks.  Valid values: 0 to 65535.  Default value: 0. This value indicates that the backend server is used for health checks.
  late final pulumi.Output<int> healthCheckConnectPort;
  /// The domain name that is used for health checks. Valid values:  $SERVER_IP (default value): The private IP addresses of backend servers. If the $_ip parameter is set or the HealthCheckHost parameter is not set, SLB uses the private IP addresses of backend servers as the domain names for health checks.  domain: The domain name must be 1 to 80 characters in length, and can contain only letters, digits, periods (.),and hyphens (-).
  late final pulumi.Output<String> healthCheckHost;
  /// The version of the HTTP protocol.  Valid values: HTTP 1.0 and HTTP 1.1.  Default value: HTTP 1.1.
  late final pulumi.Output<String> healthCheckHttpVersion;
  /// The time interval between two consecutive health checks.  Valid values: 1 to 50. Unit: seconds.  Default value: 2.
  late final pulumi.Output<int> healthCheckInterval;
  /// The health check method.  Valid values: GET and HEAD.  Default value: HEAD.
  late final pulumi.Output<String> healthCheckMethod;
  /// The URL that is used for health checks.  The URL must be 1 to 80 characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), percent signs (%), question marks (?), number signs (#), and ampersands (&). The URL can also contain the following extended characters: _ ; ~ ! ( )* [ ] @ $ ^ : ' , +. The URL must start with a forward slash (/).
  late final pulumi.Output<String> healthCheckPath;
  /// The protocol used for the health check. Value:
  /// HTTP (default): Sends a HEAD or GET request to simulate the browser's access behavior to check whether the server application is healthy.
  /// HTTPS: Sends a HEAD or GET request to simulate the browser's access behavior to check whether the server application is healthy. (Data encryption is more secure than HTTP.)
  /// TCP: Sends a SYN handshake packet to check whether the server port is alive.
  /// gRPC: Check whether the server application is healthy by sending a POST or GET request.
  late final pulumi.Output<String> healthCheckProtocol;
  /// The name of the health check template.  The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String> healthCheckTemplateName;
  /// The timeout period of a health check response. If the backend Elastic Compute Service (ECS) instance does not send an expected response within the specified period of time, the health check fails.  Valid values: 1 to 300. Unit: seconds.  Default value: 5.
  late final pulumi.Output<int> healthCheckTimeout;
  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy (from fail to success).
  late final pulumi.Output<int> healthyThreshold;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the number of times that an healthy backend server must consecutively fail health checks before it is declared unhealthy (from success to fail).
  late final pulumi.Output<int> unhealthyThreshold;

  /// Creates a new [HealthCheckTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HealthCheckTemplate]. {@macro pulumi_alb_health_check_template_health_check_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HealthCheckTemplate(
    String name, {
    HealthCheckTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/healthCheckTemplate:HealthCheckTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.healthCheckCodes = registerOutput<List<String>>('healthCheckCodes');
    this.healthCheckConnectPort = registerOutput<int>('healthCheckConnectPort');
    this.healthCheckHost = registerOutput<String>('healthCheckHost');
    this.healthCheckHttpVersion = registerOutput<String>('healthCheckHttpVersion');
    this.healthCheckInterval = registerOutput<int>('healthCheckInterval');
    this.healthCheckMethod = registerOutput<String>('healthCheckMethod');
    this.healthCheckPath = registerOutput<String>('healthCheckPath');
    this.healthCheckProtocol = registerOutput<String>('healthCheckProtocol');
    this.healthCheckTemplateName = registerOutput<String>('healthCheckTemplateName');
    this.healthCheckTimeout = registerOutput<int>('healthCheckTimeout');
    this.healthyThreshold = registerOutput<int>('healthyThreshold');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.unhealthyThreshold = registerOutput<int>('unhealthyThreshold');
  }

  /// Gets an existing [HealthCheckTemplate] resource's state with the given [name] and [id].
  static HealthCheckTemplate get(
    String name,
    pulumi.Input<String> id, {
    HealthCheckTemplateState? state,
  }) {
    return HealthCheckTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HealthCheckTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/healthCheckTemplate:HealthCheckTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.healthCheckCodes = registerOutput<List<String>>('healthCheckCodes');
    this.healthCheckConnectPort = registerOutput<int>('healthCheckConnectPort');
    this.healthCheckHost = registerOutput<String>('healthCheckHost');
    this.healthCheckHttpVersion = registerOutput<String>('healthCheckHttpVersion');
    this.healthCheckInterval = registerOutput<int>('healthCheckInterval');
    this.healthCheckMethod = registerOutput<String>('healthCheckMethod');
    this.healthCheckPath = registerOutput<String>('healthCheckPath');
    this.healthCheckProtocol = registerOutput<String>('healthCheckProtocol');
    this.healthCheckTemplateName = registerOutput<String>('healthCheckTemplateName');
    this.healthCheckTimeout = registerOutput<int>('healthCheckTimeout');
    this.healthyThreshold = registerOutput<int>('healthyThreshold');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.unhealthyThreshold = registerOutput<int>('unhealthyThreshold');
  }
}
