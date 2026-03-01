import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';

/// Manages a V2 monitor resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const monitor1 = new openstack.loadbalancer.Monitor("monitor_1", {
///     poolId: pool1.id,
///     type: "PING",
///     delay: 20,
///     timeout: 10,
///     maxRetries: 5,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// monitor1 = openstack.loadbalancer.Monitor("monitor_1",
///     pool_id=pool1["id"],
///     type="PING",
///     delay=20,
///     timeout=10,
///     max_retries=5)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor1 = new OpenStack.LoadBalancer.Monitor("monitor_1", new()
///     {
///         PoolId = pool1.Id,
///         Type = "PING",
///         Delay = 20,
///         Timeout = 10,
///         MaxRetries = 5,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.NewMonitor(ctx, "monitor_1", &loadbalancer.MonitorArgs{
/// 			PoolId:     pulumi.Any(pool1.Id),
/// 			Type:       pulumi.String("PING"),
/// 			Delay:      pulumi.Int(20),
/// 			Timeout:    pulumi.Int(10),
/// 			MaxRetries: pulumi.Int(5),
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
/// import com.pulumi.openstack.loadbalancer.Monitor;
/// import com.pulumi.openstack.loadbalancer.MonitorArgs;
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
///         var monitor1 = new Monitor("monitor1", MonitorArgs.builder()
///             .poolId(pool1.id())
///             .type("PING")
///             .delay(20)
///             .timeout(10)
///             .maxRetries(5)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   monitor1:
///     type: openstack:loadbalancer:Monitor
///     name: monitor_1
///     properties:
///       poolId: ${pool1.id}
///       type: PING
///       delay: 20
///       timeout: 10
///       maxRetries: 5
/// ```
///
///
/// ## Import
///
/// Load Balancer Pool Monitor can be imported using the Monitor ID, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/monitor:Monitor monitor_1 47c26fc3-2403-427a-8c79-1589bd0533c2
/// ```
/// In case of using OpenContrail, the import may not work properly. If you face an issue, try to import the monitor providing its parent pool ID:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/monitor:Monitor monitor_1 47c26fc3-2403-427a-8c79-1589bd0533c2/708bc224-0f8c-4981-ac82-97095fe051b6
/// ```
class Monitor extends pulumi.CustomResource {
  /// The administrative state of the monitor.
  /// A valid value is true (UP) or false (DOWN).
  late final pulumi.Output<bool?> adminStateUp;
  /// The time, in seconds, between sending probes to members.
  late final pulumi.Output<int> delay;
  /// The domain name to use in the HTTP host header
  /// health monitor requests. Supported in Octavia API version 2.10 or later.
  late final pulumi.Output<String?> domainName;
  /// Required for HTTP(S) types. Expected HTTP codes
  /// for a passing HTTP(S) monitor. You can either specify a single status like
  /// "200", a list like "200, 202" or a range like "200-202". Default is "200".
  late final pulumi.Output<String> expectedCodes;
  /// Required for HTTP(S) types. The HTTP method that
  /// the health monitor uses for requests. One of CONNECT, DELETE, GET, HEAD,
  /// OPTIONS, PATCH, POST, PUT, or TRACE. The default is GET.
  late final pulumi.Output<String> httpMethod;
  /// Required for HTTP(S) types. The HTTP version that
  /// the health monitor uses for requests. One of `1.0` or 1.1` is supported
  /// for HTTP(S) monitors. The default is `1.0`. Supported in Octavia API version
  /// 2.10 or later.
  late final pulumi.Output<String?> httpVersion;
  /// Number of permissible ping failures before
  /// changing the member's status to INACTIVE. Must be a number between 1
  /// and 10.
  late final pulumi.Output<int> maxRetries;
  /// Number of permissible ping failures before
  /// changing the member's status to ERROR. Must be a number between 1 and 10.
  /// The default is 3. Changing this updates the max_retries_down of the
  /// existing monitor.
  late final pulumi.Output<int> maxRetriesDown;
  /// The Name of the Monitor.
  late final pulumi.Output<String> name;
  /// The id of the pool that this monitor will be assigned to.
  late final pulumi.Output<String> poolId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a monitor. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// monitor.
  late final pulumi.Output<String> region;
  /// Required for admins. The UUID of the tenant who owns
  /// the monitor.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new monitor.
  late final pulumi.Output<String> tenantId;
  /// Maximum number of seconds for a monitor to wait for a
  /// ping reply before it times out. The value must be less than the delay
  /// value.
  late final pulumi.Output<int> timeout;
  /// The type of probe, which is PING, TCP, HTTP, HTTPS,
  /// TLS-HELLO, SCTP or UDP-CONNECT, that is sent by the loadbalancer to
  /// verify the member state. Changing this creates a new monitor.
  late final pulumi.Output<String> type;
  /// Required for HTTP(S) types. URI path that will be
  /// accessed if monitor type is HTTP or HTTPS. Default is `/`.
  late final pulumi.Output<String> urlPath;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_loadbalancer_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool?>('adminStateUp');
    this.delay = registerOutput<int>('delay');
    this.domainName = registerOutput<String?>('domainName');
    this.expectedCodes = registerOutput<String>('expectedCodes');
    this.httpMethod = registerOutput<String>('httpMethod');
    this.httpVersion = registerOutput<String?>('httpVersion');
    this.maxRetries = registerOutput<int>('maxRetries');
    this.maxRetriesDown = registerOutput<int>('maxRetriesDown');
    this.name = registerOutput<String>('name');
    this.poolId = registerOutput<String>('poolId');
    this.region = registerOutput<String>('region');
    this.tenantId = registerOutput<String>('tenantId');
    this.timeout = registerOutput<int>('timeout');
    this.type = registerOutput<String>('type');
    this.urlPath = registerOutput<String>('urlPath');
  }
}
