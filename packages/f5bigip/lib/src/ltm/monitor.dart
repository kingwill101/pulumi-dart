import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';

/// `f5bigip.ltm.Monitor` Configures a custom monitor for use by health checks.
///
/// For resources should be named with their `full path`. The full path is the combination of the `partition + name` of the resource. For example `/Common/test-monitor`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const monitor = new f5bigip.ltm.Monitor("monitor", {
///     name: "/Common/terraform_monitor",
///     parent: "/Common/http",
///     send: "GET /some/path\x0d\n",
///     timeout: 999,
///     interval: 998,
///     destination: "1.2.3.4:1234",
/// });
/// const test_https_monitor = new f5bigip.ltm.Monitor("test-https-monitor", {
///     name: "/Common/terraform_monitor",
///     parent: "/Common/http",
///     sslProfile: "/Common/serverssl",
///     send: "GET /some/path\x0d\n",
///     interval: 999,
///     timeout: 1000,
/// });
/// const test_ftp_monitor = new f5bigip.ltm.Monitor("test-ftp-monitor", {
///     name: "/Common/ftp-test",
///     parent: "/Common/ftp",
///     interval: 5,
///     timeUntilUp: 0,
///     timeout: 16,
///     destination: "*:8008",
///     filename: "somefile",
/// });
/// const test_postgresql_monitor = new f5bigip.ltm.Monitor("test-postgresql-monitor", {
///     name: "/Common/test-postgresql-monitor",
///     parent: "/Common/postgresql",
///     send: "SELECT 'Test';",
///     receive: "Test",
///     interval: 5,
///     timeout: 16,
///     username: "abcd",
///     password: "abcd1234",
/// });
/// // Step 1: Create custom parent monitor (inherits from built-in)
/// const parent_monitor = new f5bigip.ltm.Monitor("parent-monitor", {
///     name: "/Common/parent",
///     parent: "/Common/http",
///     interval: 999,
///     timeout: 1000,
///     send: "GET /\x0d\n",
///     receive: "200",
/// });
/// // Step 2: Create child monitor that inherits from custom parent
/// // Inherited from parent: interval=999, timeout=1000, receive="200"
/// const child_monitor = new f5bigip.ltm.Monitor("child-monitor", {
///     name: "/Common/child",
///     parent: "/Common/http",
///     customParent: parent_monitor.name,
///     send: "GET /custom\x0d\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// monitor = f5bigip.ltm.Monitor("monitor",
///     name="/Common/terraform_monitor",
///     parent="/Common/http",
///     send="GET /some/path\x0d\n",
///     timeout=999,
///     interval=998,
///     destination="1.2.3.4:1234")
/// test_https_monitor = f5bigip.ltm.Monitor("test-https-monitor",
///     name="/Common/terraform_monitor",
///     parent="/Common/http",
///     ssl_profile="/Common/serverssl",
///     send="GET /some/path\x0d\n",
///     interval=999,
///     timeout=1000)
/// test_ftp_monitor = f5bigip.ltm.Monitor("test-ftp-monitor",
///     name="/Common/ftp-test",
///     parent="/Common/ftp",
///     interval=5,
///     time_until_up=0,
///     timeout=16,
///     destination="*:8008",
///     filename="somefile")
/// test_postgresql_monitor = f5bigip.ltm.Monitor("test-postgresql-monitor",
///     name="/Common/test-postgresql-monitor",
///     parent="/Common/postgresql",
///     send="SELECT 'Test';",
///     receive="Test",
///     interval=5,
///     timeout=16,
///     username="abcd",
///     password="abcd1234")
/// # Step 1: Create custom parent monitor (inherits from built-in)
/// parent_monitor = f5bigip.ltm.Monitor("parent-monitor",
///     name="/Common/parent",
///     parent="/Common/http",
///     interval=999,
///     timeout=1000,
///     send="GET /\x0d\n",
///     receive="200")
/// # Step 2: Create child monitor that inherits from custom parent
/// # Inherited from parent: interval=999, timeout=1000, receive="200"
/// child_monitor = f5bigip.ltm.Monitor("child-monitor",
///     name="/Common/child",
///     parent="/Common/http",
///     custom_parent=parent_monitor.name,
///     send="GET /custom\x0d\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor = new F5BigIP.Ltm.Monitor("monitor", new()
///     {
///         Name = "/Common/terraform_monitor",
///         Parent = "/Common/http",
///         Send = @"GET /some/path
/// ",
///         Timeout = 999,
///         Interval = 998,
///         Destination = "1.2.3.4:1234",
///     });
///
///     var test_https_monitor = new F5BigIP.Ltm.Monitor("test-https-monitor", new()
///     {
///         Name = "/Common/terraform_monitor",
///         Parent = "/Common/http",
///         SslProfile = "/Common/serverssl",
///         Send = @"GET /some/path
/// ",
///         Interval = 999,
///         Timeout = 1000,
///     });
///
///     var test_ftp_monitor = new F5BigIP.Ltm.Monitor("test-ftp-monitor", new()
///     {
///         Name = "/Common/ftp-test",
///         Parent = "/Common/ftp",
///         Interval = 5,
///         TimeUntilUp = 0,
///         Timeout = 16,
///         Destination = "*:8008",
///         Filename = "somefile",
///     });
///
///     var test_postgresql_monitor = new F5BigIP.Ltm.Monitor("test-postgresql-monitor", new()
///     {
///         Name = "/Common/test-postgresql-monitor",
///         Parent = "/Common/postgresql",
///         Send = "SELECT 'Test';",
///         Receive = "Test",
///         Interval = 5,
///         Timeout = 16,
///         Username = "abcd",
///         Password = "abcd1234",
///     });
///
///     // Step 1: Create custom parent monitor (inherits from built-in)
///     var parent_monitor = new F5BigIP.Ltm.Monitor("parent-monitor", new()
///     {
///         Name = "/Common/parent",
///         Parent = "/Common/http",
///         Interval = 999,
///         Timeout = 1000,
///         Send = @"GET /
/// ",
///         Receive = "200",
///     });
///
///     // Step 2: Create child monitor that inherits from custom parent
///     // Inherited from parent: interval=999, timeout=1000, receive="200"
///     var child_monitor = new F5BigIP.Ltm.Monitor("child-monitor", new()
///     {
///         Name = "/Common/child",
///         Parent = "/Common/http",
///         CustomParent = parent_monitor.Name,
///         Send = @"GET /custom
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewMonitor(ctx, "monitor", &ltm.MonitorArgs{
/// 			Name:        pulumi.String("/Common/terraform_monitor"),
/// 			Parent:      pulumi.String("/Common/http"),
/// 			Send:        pulumi.String("GET /some/path\n"),
/// 			Timeout:     pulumi.Int(999),
/// 			Interval:    pulumi.Int(998),
/// 			Destination: pulumi.String("1.2.3.4:1234"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewMonitor(ctx, "test-https-monitor", &ltm.MonitorArgs{
/// 			Name:       pulumi.String("/Common/terraform_monitor"),
/// 			Parent:     pulumi.String("/Common/http"),
/// 			SslProfile: pulumi.String("/Common/serverssl"),
/// 			Send:       pulumi.String("GET /some/path\n"),
/// 			Interval:   pulumi.Int(999),
/// 			Timeout:    pulumi.Int(1000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewMonitor(ctx, "test-ftp-monitor", &ltm.MonitorArgs{
/// 			Name:        pulumi.String("/Common/ftp-test"),
/// 			Parent:      pulumi.String("/Common/ftp"),
/// 			Interval:    pulumi.Int(5),
/// 			TimeUntilUp: pulumi.Int(0),
/// 			Timeout:     pulumi.Int(16),
/// 			Destination: pulumi.String("*:8008"),
/// 			Filename:    pulumi.String("somefile"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewMonitor(ctx, "test-postgresql-monitor", &ltm.MonitorArgs{
/// 			Name:     pulumi.String("/Common/test-postgresql-monitor"),
/// 			Parent:   pulumi.String("/Common/postgresql"),
/// 			Send:     pulumi.String("SELECT 'Test';"),
/// 			Receive:  pulumi.String("Test"),
/// 			Interval: pulumi.Int(5),
/// 			Timeout:  pulumi.Int(16),
/// 			Username: pulumi.String("abcd"),
/// 			Password: pulumi.String("abcd1234"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Step 1: Create custom parent monitor (inherits from built-in)
/// 		parent_monitor, err := ltm.NewMonitor(ctx, "parent-monitor", &ltm.MonitorArgs{
/// 			Name:     pulumi.String("/Common/parent"),
/// 			Parent:   pulumi.String("/Common/http"),
/// 			Interval: pulumi.Int(999),
/// 			Timeout:  pulumi.Int(1000),
/// 			Send:     pulumi.String("GET /\n"),
/// 			Receive:  pulumi.String("200"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Step 2: Create child monitor that inherits from custom parent
/// 		// Inherited from parent: interval=999, timeout=1000, receive="200"
/// 		_, err = ltm.NewMonitor(ctx, "child-monitor", &ltm.MonitorArgs{
/// 			Name:         pulumi.String("/Common/child"),
/// 			Parent:       pulumi.String("/Common/http"),
/// 			CustomParent: parent_monitor.Name,
/// 			Send:         pulumi.String("GET /custom\n"),
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
/// import com.pulumi.f5bigip.ltm.Monitor;
/// import com.pulumi.f5bigip.ltm.MonitorArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .name("/Common/terraform_monitor")
///             .parent("/Common/http")
///             .send("""
/// GET /some/path
///             """)
///             .timeout(999)
///             .interval(998)
///             .destination("1.2.3.4:1234")
///             .build());
///
///         var test_https_monitor = new Monitor("test-https-monitor", MonitorArgs.builder()
///             .name("/Common/terraform_monitor")
///             .parent("/Common/http")
///             .sslProfile("/Common/serverssl")
///             .send("""
/// GET /some/path
///             """)
///             .interval(999)
///             .timeout(1000)
///             .build());
///
///         var test_ftp_monitor = new Monitor("test-ftp-monitor", MonitorArgs.builder()
///             .name("/Common/ftp-test")
///             .parent("/Common/ftp")
///             .interval(5)
///             .timeUntilUp(0)
///             .timeout(16)
///             .destination("*:8008")
///             .filename("somefile")
///             .build());
///
///         var test_postgresql_monitor = new Monitor("test-postgresql-monitor", MonitorArgs.builder()
///             .name("/Common/test-postgresql-monitor")
///             .parent("/Common/postgresql")
///             .send("SELECT 'Test';")
///             .receive("Test")
///             .interval(5)
///             .timeout(16)
///             .username("abcd")
///             .password("abcd1234")
///             .build());
///
///         // Step 1: Create custom parent monitor (inherits from built-in)
///         var parent_monitor = new Monitor("parent-monitor", MonitorArgs.builder()
///             .name("/Common/parent")
///             .parent("/Common/http")
///             .interval(999)
///             .timeout(1000)
///             .send("""
/// GET /
///             """)
///             .receive("200")
///             .build());
///
///         // Step 2: Create child monitor that inherits from custom parent
///         // Inherited from parent: interval=999, timeout=1000, receive="200"
///         var child_monitor = new Monitor("child-monitor", MonitorArgs.builder()
///             .name("/Common/child")
///             .parent("/Common/http")
///             .customParent(parent_monitor.name())
///             .send("""
/// GET /custom
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/terraform_monitor
///       parent: /Common/http
///       send: "GET /some/path\r\n"
///       timeout: '999'
///       interval: '998'
///       destination: 1.2.3.4:1234
///   test-https-monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/terraform_monitor
///       parent: /Common/http
///       sslProfile: /Common/serverssl
///       send: "GET /some/path\r\n"
///       interval: '999'
///       timeout: '1000'
///   test-ftp-monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/ftp-test
///       parent: /Common/ftp
///       interval: 5
///       timeUntilUp: 0
///       timeout: 16
///       destination: '*:8008'
///       filename: somefile
///   test-postgresql-monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/test-postgresql-monitor
///       parent: /Common/postgresql
///       send: SELECT 'Test';
///       receive: Test
///       interval: 5
///       timeout: 16
///       username: abcd
///       password: abcd1234
///   # Step 1: Create custom parent monitor (inherits from built-in)
///   parent-monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/parent
///       parent: /Common/http
///       interval: 999 # ← Child will inherit if not specified
///       timeout: 1000 # ← Child will inherit if not specified
///       send: "GET /\r\n"
///       receive: '200'
///   # Step 2: Create child monitor that inherits from custom parent
///   # Inherited from parent: interval=999, timeout=1000, receive="200"
///   child-monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/child
///       parent: /Common/http
///       customParent: ${["parent-monitor"].name}
///       send: "GET /custom\r\n"
/// ```
///
///
/// ## Importing
///
/// An existing monitor can be imported into this resource by supplying monitor Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_monitor.monitor /Common/terraform_monitor
/// ```
class Monitor extends pulumi.CustomResource {
  /// Specifies whether adaptive response time monitoring is enabled for this monitor. The default is `disabled`.
  late final pulumi.Output<String> adaptive;
  /// Specifies the absolute number of milliseconds that may not be exceeded by a monitor probe, regardless of Allowed Divergence.
  late final pulumi.Output<int> adaptiveLimit;
  /// Specifies the location in the LDAP tree from which the monitor starts the health check
  late final pulumi.Output<String?> base;
  /// Specifies whether the system will query the LDAP servers pointed to by any referrals in the query results.
  late final pulumi.Output<String> chaseReferrals;
  /// Specifies, when enabled, that the SSL options setting (in OpenSSL) is set to ALL. Accepts 'enabled' or 'disabled' values, the default value is 'enabled'.
  late final pulumi.Output<String?> compatibility;
  /// Custom parent monitor for the system to use for setting initial values for the new monitor.
  late final pulumi.Output<String?> customParent;
  /// Specifies the database in which the user is created
  late final pulumi.Output<String?> database;
  /// Specify an alias address for monitoring
  late final pulumi.Output<String> destination;
  /// Specifies the domain name to check, for example, Domain is allowed only in case of Parent as /Common/smtp.
  late final pulumi.Output<String?> domain;
  /// Specifies the full path and file name of the file that the system attempts to download. The health check is successful if the system can download the file.
  late final pulumi.Output<String?> filename;
  /// Specifies an LDAP key for which the monitor searches
  late final pulumi.Output<String?> filter;
  /// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown,value of `interval` should be always less than `timeout`. Default is `5`.
  late final pulumi.Output<int> interval;
  /// Displays the differentiated services code point (DSCP).The default is `0 (zero)`.
  late final pulumi.Output<int> ipDscp;
  /// Specifies whether the target must include attributes in its response to be considered up. The options are no (Specifies that the system performs only a one-level search (based on the Filter setting), and does not require that the target returns any attributes.) and yes (Specifies that the system performs a sub-tree search, and if the target returns no attributes, the target is considered down.)
  late final pulumi.Output<String?> mandatoryAttributes;
  /// Specifies whether the system automatically changes the status of a resource to Enabled at the next successful monitor check.
  late final pulumi.Output<String> manualResume;
  /// Specifies the data transfer process (DTP) mode. The default value is passive. The options are passive (Specifies that the monitor sends a data transfer request to the FTP server. When the FTP server receives the request, the FTP server then initiates and establishes the data connection.) and active (Specifies that the monitor initiates and establishes the data connection with the FTP server.).
  late final pulumi.Output<String> mode;
  /// Specifies the Name of the LTM Monitor.Name of Monitor should be full path,full path is the combination of the `partition + monitor name`,For ex:`/Common/test-ltm-monitor`.
  late final pulumi.Output<String> name;
  /// Parent monitor for the system to use for setting initial values for the new monitor.
  late final pulumi.Output<String> parent;
  /// Specifies the password if the monitored target requires authentication
  late final pulumi.Output<String?> password;
  /// Specifies the regular expression representing the text string that the monitor looks for in the returned resource.
  late final pulumi.Output<String?> receive;
  /// The system marks the node or pool member disabled when its response matches Receive Disable String but not Receive String.
  late final pulumi.Output<String?> receiveDisable;
  /// Instructs the system to mark the target resource down when the test is successful.
  late final pulumi.Output<String> reverse;
  /// Specifies the secure communications protocol that the monitor uses to communicate with the target. The options are none (Specifies that the system does not use a security protocol for communications with the target.), ssl (Specifies that the system uses the SSL protocol for communications with the target.), and tls (Specifies that the system uses the TLS protocol for communications with the target.)
  late final pulumi.Output<String?> security;
  /// Specifies the text string that the monitor sends to the target object.
  late final pulumi.Output<String> send;
  /// Specifies the ssl profile for the monitor. It only makes sense when the parent is `/Common/https`
  late final pulumi.Output<String?> sslProfile;
  /// Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to up.
  late final pulumi.Output<int> timeUntilUp;
  /// Specifies the number of seconds the target has in which to respond to the monitor request. The default is `16` seconds
  late final pulumi.Output<int> timeout;
  /// Specifies whether the monitor operates in transparent mode.
  late final pulumi.Output<String> transparent;
  /// Specifies the interval for the system to use to perform the health check when a resource is up. The default is `0(Disabled)`
  late final pulumi.Output<int> upInterval;
  /// Specifies the user name if the monitored target requires authentication
  late final pulumi.Output<String?> username;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_ltm_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adaptive = registerOutput<String>('adaptive');
    this.adaptiveLimit = registerOutput<int>('adaptiveLimit');
    this.base = registerOutput<String?>('base');
    this.chaseReferrals = registerOutput<String>('chaseReferrals');
    this.compatibility = registerOutput<String?>('compatibility');
    this.customParent = registerOutput<String?>('customParent');
    this.database = registerOutput<String?>('database');
    this.destination = registerOutput<String>('destination');
    this.domain = registerOutput<String?>('domain');
    this.filename = registerOutput<String?>('filename');
    this.filter = registerOutput<String?>('filter');
    this.interval = registerOutput<int>('interval');
    this.ipDscp = registerOutput<int>('ipDscp');
    this.mandatoryAttributes = registerOutput<String?>('mandatoryAttributes');
    this.manualResume = registerOutput<String>('manualResume');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.password = registerOutput<String?>('password');
    this.receive = registerOutput<String?>('receive');
    this.receiveDisable = registerOutput<String?>('receiveDisable');
    this.reverse = registerOutput<String>('reverse');
    this.security = registerOutput<String?>('security');
    this.send = registerOutput<String>('send');
    this.sslProfile = registerOutput<String?>('sslProfile');
    this.timeUntilUp = registerOutput<int>('timeUntilUp');
    this.timeout = registerOutput<int>('timeout');
    this.transparent = registerOutput<String>('transparent');
    this.upInterval = registerOutput<int>('upInterval');
    this.username = registerOutput<String?>('username');
  }
}
