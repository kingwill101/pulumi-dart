import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_state.dart';
import 'listener_xforwarded_for.dart';

/// Provides a Classic Load Balancer (SLB) Load Balancer Listener resource.
///
/// For information about Classic Load Balancer (SLB) and how to use it, see [What is Classic Load Balancer](https://www.alibabacloud.com/help/doc-detail/27539.htm).
///
/// For information about listener and how to use it, please see the following:
///
/// * [Configure a HTTP Classic Load Balancer (SLB) Listener](https://www.alibabacloud.com/help/doc-detail/27592.htm).
/// * [Configure a HTTPS Classic Load Balancer (SLB) Listener](https://www.alibabacloud.com/help/doc-detail/27593.htm).
/// * [Configure a TCP Classic Load Balancer (SLB) Listener](https://www.alibabacloud.com/help/doc-detail/27594.htm).
/// * [Configure a UDP Classic Load Balancer (SLB) Listener](https://www.alibabacloud.com/help/doc-detail/27595.htm).
///
/// &gt; **NOTE:** Available since v1.0.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const listener = new alicloud.slb.ApplicationLoadBalancer("listener", {
///     loadBalancerName: `${name}-${_default.result}`,
///     internetChargeType: "PayByTraffic",
///     addressType: "internet",
///     instanceChargeType: "PayByCLCU",
/// });
/// const listenerAcl = new alicloud.slb.Acl("listener", {
///     name: `${name}-${_default.result}`,
///     ipVersion: "ipv4",
/// });
/// const listenerListener = new alicloud.slb.Listener("listener", {
///     loadBalancerId: listener.id,
///     backendPort: 80,
///     frontendPort: 80,
///     protocol: "http",
///     bandwidth: 10,
///     stickySession: "on",
///     stickySessionType: "insert",
///     cookieTimeout: 86400,
///     cookie: "tfslblistenercookie",
///     healthCheck: "on",
///     healthCheckDomain: "ali.com",
///     healthCheckUri: "/cons",
///     healthCheckConnectPort: 20,
///     healthyThreshold: 8,
///     unhealthyThreshold: 8,
///     healthCheckTimeout: 8,
///     healthCheckInterval: 5,
///     healthCheckHttpCode: "http_2xx,http_3xx",
///     xForwardedFor: {
///         retriveSlbIp: true,
///         retriveSlbId: true,
///     },
///     aclStatus: "on",
///     aclType: "white",
///     aclIds: [listenerAcl.id],
///     requestTimeout: 80,
///     idleTimeout: 30,
/// });
/// const first = new alicloud.slb.AclEntryAttachment("first", {
///     aclId: listenerAcl.id,
///     entry: "10.10.10.0/24",
///     comment: "first",
/// });
/// const second = new alicloud.slb.AclEntryAttachment("second", {
///     aclId: listenerAcl.id,
///     entry: "168.10.10.0/24",
///     comment: "second",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// listener = alicloud.slb.ApplicationLoadBalancer("listener",
///     load_balancer_name=f"{name}-{default['result']}",
///     internet_charge_type="PayByTraffic",
///     address_type="internet",
///     instance_charge_type="PayByCLCU")
/// listener_acl = alicloud.slb.Acl("listener",
///     name=f"{name}-{default['result']}",
///     ip_version="ipv4")
/// listener_listener = alicloud.slb.Listener("listener",
///     load_balancer_id=listener.id,
///     backend_port=80,
///     frontend_port=80,
///     protocol="http",
///     bandwidth=10,
///     sticky_session="on",
///     sticky_session_type="insert",
///     cookie_timeout=86400,
///     cookie="tfslblistenercookie",
///     health_check="on",
///     health_check_domain="ali.com",
///     health_check_uri="/cons",
///     health_check_connect_port=20,
///     healthy_threshold=8,
///     unhealthy_threshold=8,
///     health_check_timeout=8,
///     health_check_interval=5,
///     health_check_http_code="http_2xx,http_3xx",
///     x_forwarded_for={
///         "retrive_slb_ip": True,
///         "retrive_slb_id": True,
///     },
///     acl_status="on",
///     acl_type="white",
///     acl_ids=[listener_acl.id],
///     request_timeout=80,
///     idle_timeout=30)
/// first = alicloud.slb.AclEntryAttachment("first",
///     acl_id=listener_acl.id,
///     entry="10.10.10.0/24",
///     comment="first")
/// second = alicloud.slb.AclEntryAttachment("second",
///     acl_id=listener_acl.id,
///     entry="168.10.10.0/24",
///     comment="second")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var listener = new AliCloud.Slb.ApplicationLoadBalancer("listener", new()
///     {
///         LoadBalancerName = $"{name}-{@default.Result}",
///         InternetChargeType = "PayByTraffic",
///         AddressType = "internet",
///         InstanceChargeType = "PayByCLCU",
///     });
///
///     var listenerAcl = new AliCloud.Slb.Acl("listener", new()
///     {
///         Name = $"{name}-{@default.Result}",
///         IpVersion = "ipv4",
///     });
///
///     var listenerListener = new AliCloud.Slb.Listener("listener", new()
///     {
///         LoadBalancerId = listener.Id,
///         BackendPort = 80,
///         FrontendPort = 80,
///         Protocol = "http",
///         Bandwidth = 10,
///         StickySession = "on",
///         StickySessionType = "insert",
///         CookieTimeout = 86400,
///         Cookie = "tfslblistenercookie",
///         HealthCheck = "on",
///         HealthCheckDomain = "ali.com",
///         HealthCheckUri = "/cons",
///         HealthCheckConnectPort = 20,
///         HealthyThreshold = 8,
///         UnhealthyThreshold = 8,
///         HealthCheckTimeout = 8,
///         HealthCheckInterval = 5,
///         HealthCheckHttpCode = "http_2xx,http_3xx",
///         XForwardedFor = new AliCloud.Slb.Inputs.ListenerXForwardedForArgs
///         {
///             RetriveSlbIp = true,
///             RetriveSlbId = true,
///         },
///         AclStatus = "on",
///         AclType = "white",
///         AclIds = new[]
///         {
///             listenerAcl.Id,
///         },
///         RequestTimeout = 80,
///         IdleTimeout = 30,
///     });
///
///     var first = new AliCloud.Slb.AclEntryAttachment("first", new()
///     {
///         AclId = listenerAcl.Id,
///         Entry = "10.10.10.0/24",
///         Comment = "first",
///     });
///
///     var second = new AliCloud.Slb.AclEntryAttachment("second", new()
///     {
///         AclId = listenerAcl.Id,
///         Entry = "168.10.10.0/24",
///         Comment = "second",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listener, err := slb.NewApplicationLoadBalancer(ctx, "listener", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName:   pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			InternetChargeType: pulumi.String("PayByTraffic"),
/// 			AddressType:        pulumi.String("internet"),
/// 			InstanceChargeType: pulumi.String("PayByCLCU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listenerAcl, err := slb.NewAcl(ctx, "listener", &slb.AclArgs{
/// 			Name:      pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			IpVersion: pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewListener(ctx, "listener", &slb.ListenerArgs{
/// 			LoadBalancerId:         listener.ID(),
/// 			BackendPort:            pulumi.Int(80),
/// 			FrontendPort:           pulumi.Int(80),
/// 			Protocol:               pulumi.String("http"),
/// 			Bandwidth:              pulumi.Int(10),
/// 			StickySession:          pulumi.String("on"),
/// 			StickySessionType:      pulumi.String("insert"),
/// 			CookieTimeout:          pulumi.Int(86400),
/// 			Cookie:                 pulumi.String("tfslblistenercookie"),
/// 			HealthCheck:            pulumi.String("on"),
/// 			HealthCheckDomain:      pulumi.String("ali.com"),
/// 			HealthCheckUri:         pulumi.String("/cons"),
/// 			HealthCheckConnectPort: pulumi.Int(20),
/// 			HealthyThreshold:       pulumi.Int(8),
/// 			UnhealthyThreshold:     pulumi.Int(8),
/// 			HealthCheckTimeout:     pulumi.Int(8),
/// 			HealthCheckInterval:    pulumi.Int(5),
/// 			HealthCheckHttpCode:    pulumi.String("http_2xx,http_3xx"),
/// 			XForwardedFor: &slb.ListenerXForwardedForArgs{
/// 				RetriveSlbIp: pulumi.Bool(true),
/// 				RetriveSlbId: pulumi.Bool(true),
/// 			},
/// 			AclStatus: pulumi.String("on"),
/// 			AclType:   pulumi.String("white"),
/// 			AclIds: pulumi.StringArray{
/// 				listenerAcl.ID(),
/// 			},
/// 			RequestTimeout: pulumi.Int(80),
/// 			IdleTimeout:    pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewAclEntryAttachment(ctx, "first", &slb.AclEntryAttachmentArgs{
/// 			AclId:   listenerAcl.ID(),
/// 			Entry:   pulumi.String("10.10.10.0/24"),
/// 			Comment: pulumi.String("first"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewAclEntryAttachment(ctx, "second", &slb.AclEntryAttachmentArgs{
/// 			AclId:   listenerAcl.ID(),
/// 			Entry:   pulumi.String("168.10.10.0/24"),
/// 			Comment: pulumi.String("second"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.Acl;
/// import com.pulumi.alicloud.slb.AclArgs;
/// import com.pulumi.alicloud.slb.Listener;
/// import com.pulumi.alicloud.slb.ListenerArgs;
/// import com.pulumi.alicloud.slb.inputs.ListenerXForwardedForArgs;
/// import com.pulumi.alicloud.slb.AclEntryAttachment;
/// import com.pulumi.alicloud.slb.AclEntryAttachmentArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var listener = new ApplicationLoadBalancer("listener", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(String.format("%s-%s", name,default_.result()))
///             .internetChargeType("PayByTraffic")
///             .addressType("internet")
///             .instanceChargeType("PayByCLCU")
///             .build());
///
///         var listenerAcl = new Acl("listenerAcl", AclArgs.builder()
///             .name(String.format("%s-%s", name,default_.result()))
///             .ipVersion("ipv4")
///             .build());
///
///         var listenerListener = new Listener("listenerListener", ListenerArgs.builder()
///             .loadBalancerId(listener.id())
///             .backendPort(80)
///             .frontendPort(80)
///             .protocol("http")
///             .bandwidth(10)
///             .stickySession("on")
///             .stickySessionType("insert")
///             .cookieTimeout(86400)
///             .cookie("tfslblistenercookie")
///             .healthCheck("on")
///             .healthCheckDomain("ali.com")
///             .healthCheckUri("/cons")
///             .healthCheckConnectPort(20)
///             .healthyThreshold(8)
///             .unhealthyThreshold(8)
///             .healthCheckTimeout(8)
///             .healthCheckInterval(5)
///             .healthCheckHttpCode("http_2xx,http_3xx")
///             .xForwardedFor(ListenerXForwardedForArgs.builder()
///                 .retriveSlbIp(true)
///                 .retriveSlbId(true)
///                 .build())
///             .aclStatus("on")
///             .aclType("white")
///             .aclIds(listenerAcl.id())
///             .requestTimeout(80)
///             .idleTimeout(30)
///             .build());
///
///         var first = new AclEntryAttachment("first", AclEntryAttachmentArgs.builder()
///             .aclId(listenerAcl.id())
///             .entry("10.10.10.0/24")
///             .comment("first")
///             .build());
///
///         var second = new AclEntryAttachment("second", AclEntryAttachmentArgs.builder()
///             .aclId(listenerAcl.id())
///             .entry("168.10.10.0/24")
///             .comment("second")
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   listener:
///     type: alicloud:slb:ApplicationLoadBalancer
///     properties:
///       loadBalancerName: ${name}-${default.result}
///       internetChargeType: PayByTraffic
///       addressType: internet
///       instanceChargeType: PayByCLCU
///   listenerListener:
///     type: alicloud:slb:Listener
///     name: listener
///     properties:
///       loadBalancerId: ${listener.id}
///       backendPort: 80
///       frontendPort: 80
///       protocol: http
///       bandwidth: 10
///       stickySession: on
///       stickySessionType: insert
///       cookieTimeout: 86400
///       cookie: tfslblistenercookie
///       healthCheck: on
///       healthCheckDomain: ali.com
///       healthCheckUri: /cons
///       healthCheckConnectPort: 20
///       healthyThreshold: 8
///       unhealthyThreshold: 8
///       healthCheckTimeout: 8
///       healthCheckInterval: 5
///       healthCheckHttpCode: http_2xx,http_3xx
///       xForwardedFor:
///         retriveSlbIp: true
///         retriveSlbId: true
///       aclStatus: on
///       aclType: white
///       aclIds:
///         - ${listenerAcl.id}
///       requestTimeout: 80
///       idleTimeout: 30
///   listenerAcl:
///     type: alicloud:slb:Acl
///     name: listener
///     properties:
///       name: ${name}-${default.result}
///       ipVersion: ipv4
///   first:
///     type: alicloud:slb:AclEntryAttachment
///     properties:
///       aclId: ${listenerAcl.id}
///       entry: 10.10.10.0/24
///       comment: first
///   second:
///     type: alicloud:slb:AclEntryAttachment
///     properties:
///       aclId: ${listenerAcl.id}
///       entry: 168.10.10.0/24
///       comment: second
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Classic Load Balancer (SLB) Load Balancer Listener can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/listener:Listener example <load_balancer_id>:<protocol>:<frontend_port>
/// ```
///
/// ```sh
/// $ pulumi import alicloud:slb/listener:Listener example <load_balancer_id>:<frontend_port>
/// ```
class Listener extends pulumi.CustomResource {
  late final pulumi.Output<String> aclId;
  late final pulumi.Output<List<String>> aclIds;
  late final pulumi.Output<String?> aclStatus;
  late final pulumi.Output<String?> aclType;
  late final pulumi.Output<int?> backendPort;
  late final pulumi.Output<int> bandwidth;
  late final pulumi.Output<String?> caCertificateId;
  late final pulumi.Output<String?> cookie;
  late final pulumi.Output<int?> cookieTimeout;
  late final pulumi.Output<bool?> deleteProtectionValidation;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String?> enableHttp2;
  late final pulumi.Output<int?> establishedTimeout;
  late final pulumi.Output<int?> forwardPort;
  late final pulumi.Output<int> frontendPort;
  late final pulumi.Output<bool?> gzip;
  late final pulumi.Output<String?> healthCheck;
  late final pulumi.Output<int> healthCheckConnectPort;
  late final pulumi.Output<String?> healthCheckDomain;
  late final pulumi.Output<String> healthCheckHttpCode;
  late final pulumi.Output<int?> healthCheckInterval;
  late final pulumi.Output<String> healthCheckMethod;
  late final pulumi.Output<int?> healthCheckTimeout;
  late final pulumi.Output<String?> healthCheckType;
  late final pulumi.Output<String?> healthCheckUri;
  late final pulumi.Output<int?> healthyThreshold;
  late final pulumi.Output<int?> idleTimeout;
  late final pulumi.Output<String> listenerForward;
  late final pulumi.Output<String> loadBalancerId;
  late final pulumi.Output<String?> masterSlaveServerGroupId;
  late final pulumi.Output<int?> persistenceTimeout;
  late final pulumi.Output<String> protocol;
  late final pulumi.Output<bool> proxyProtocolV2Enabled;
  late final pulumi.Output<int?> requestTimeout;
  late final pulumi.Output<String?> scheduler;
  late final pulumi.Output<String> serverCertificateId;
  late final pulumi.Output<String?> serverGroupId;
  late final pulumi.Output<String> sslCertificateId;
  late final pulumi.Output<String?> stickySession;
  late final pulumi.Output<String?> stickySessionType;
  late final pulumi.Output<String?> tlsCipherPolicy;
  late final pulumi.Output<int?> unhealthyThreshold;

  /// Whether to set additional HTTP Header field "X-Forwarded-For".
  late final pulumi.Output<ListenerXForwardedFor> xForwardedFor;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_slb_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:slb/listener:Listener',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    aclIds = registerOutput<List<String>>('aclIds');
    aclStatus = registerOutput<String?>('aclStatus');
    aclType = registerOutput<String?>('aclType');
    backendPort = registerOutput<int?>('backendPort');
    bandwidth = registerOutput<int>('bandwidth');
    caCertificateId = registerOutput<String?>('caCertificateId');
    cookie = registerOutput<String?>('cookie');
    cookieTimeout = registerOutput<int?>('cookieTimeout');
    deleteProtectionValidation = registerOutput<bool?>(
      'deleteProtectionValidation',
    );
    description = registerOutput<String?>('description');
    enableHttp2 = registerOutput<String?>('enableHttp2');
    establishedTimeout = registerOutput<int?>('establishedTimeout');
    forwardPort = registerOutput<int?>('forwardPort');
    frontendPort = registerOutput<int>('frontendPort');
    gzip = registerOutput<bool?>('gzip');
    healthCheck = registerOutput<String?>('healthCheck');
    healthCheckConnectPort = registerOutput<int>('healthCheckConnectPort');
    healthCheckDomain = registerOutput<String?>('healthCheckDomain');
    healthCheckHttpCode = registerOutput<String>('healthCheckHttpCode');
    healthCheckInterval = registerOutput<int?>('healthCheckInterval');
    healthCheckMethod = registerOutput<String>('healthCheckMethod');
    healthCheckTimeout = registerOutput<int?>('healthCheckTimeout');
    healthCheckType = registerOutput<String?>('healthCheckType');
    healthCheckUri = registerOutput<String?>('healthCheckUri');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    idleTimeout = registerOutput<int?>('idleTimeout');
    listenerForward = registerOutput<String>('listenerForward');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    masterSlaveServerGroupId = registerOutput<String?>(
      'masterSlaveServerGroupId',
    );
    persistenceTimeout = registerOutput<int?>('persistenceTimeout');
    protocol = registerOutput<String>('protocol');
    proxyProtocolV2Enabled = registerOutput<bool>('proxyProtocolV2Enabled');
    requestTimeout = registerOutput<int?>('requestTimeout');
    scheduler = registerOutput<String?>('scheduler');
    serverCertificateId = registerOutput<String>('serverCertificateId');
    serverGroupId = registerOutput<String?>('serverGroupId');
    sslCertificateId = registerOutput<String>('sslCertificateId');
    stickySession = registerOutput<String?>('stickySession');
    stickySessionType = registerOutput<String?>('stickySessionType');
    tlsCipherPolicy = registerOutput<String?>('tlsCipherPolicy');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
    xForwardedFor = registerOutput<ListenerXForwardedFor>('xForwardedFor');
  }

  /// Gets an existing [Listener] resource's state with the given [name] and [id].
  static Listener get(
    String name,
    pulumi.Input<String> id, {
    ListenerState? state,
  }) {
    return Listener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Listener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:slb/listener:Listener',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    aclIds = registerOutput<List<String>>('aclIds');
    aclStatus = registerOutput<String?>('aclStatus');
    aclType = registerOutput<String?>('aclType');
    backendPort = registerOutput<int?>('backendPort');
    bandwidth = registerOutput<int>('bandwidth');
    caCertificateId = registerOutput<String?>('caCertificateId');
    cookie = registerOutput<String?>('cookie');
    cookieTimeout = registerOutput<int?>('cookieTimeout');
    deleteProtectionValidation = registerOutput<bool?>(
      'deleteProtectionValidation',
    );
    description = registerOutput<String?>('description');
    enableHttp2 = registerOutput<String?>('enableHttp2');
    establishedTimeout = registerOutput<int?>('establishedTimeout');
    forwardPort = registerOutput<int?>('forwardPort');
    frontendPort = registerOutput<int>('frontendPort');
    gzip = registerOutput<bool?>('gzip');
    healthCheck = registerOutput<String?>('healthCheck');
    healthCheckConnectPort = registerOutput<int>('healthCheckConnectPort');
    healthCheckDomain = registerOutput<String?>('healthCheckDomain');
    healthCheckHttpCode = registerOutput<String>('healthCheckHttpCode');
    healthCheckInterval = registerOutput<int?>('healthCheckInterval');
    healthCheckMethod = registerOutput<String>('healthCheckMethod');
    healthCheckTimeout = registerOutput<int?>('healthCheckTimeout');
    healthCheckType = registerOutput<String?>('healthCheckType');
    healthCheckUri = registerOutput<String?>('healthCheckUri');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    idleTimeout = registerOutput<int?>('idleTimeout');
    listenerForward = registerOutput<String>('listenerForward');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    masterSlaveServerGroupId = registerOutput<String?>(
      'masterSlaveServerGroupId',
    );
    persistenceTimeout = registerOutput<int?>('persistenceTimeout');
    protocol = registerOutput<String>('protocol');
    proxyProtocolV2Enabled = registerOutput<bool>('proxyProtocolV2Enabled');
    requestTimeout = registerOutput<int?>('requestTimeout');
    scheduler = registerOutput<String?>('scheduler');
    serverCertificateId = registerOutput<String>('serverCertificateId');
    serverGroupId = registerOutput<String?>('serverGroupId');
    sslCertificateId = registerOutput<String>('sslCertificateId');
    stickySession = registerOutput<String?>('stickySession');
    stickySessionType = registerOutput<String?>('stickySessionType');
    tlsCipherPolicy = registerOutput<String?>('tlsCipherPolicy');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
    xForwardedFor = registerOutput<ListenerXForwardedFor>('xForwardedFor');
  }
}
