import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_resource_args.dart';
import 'domain_resource_state.dart';

/// Provides a Ddos Coo Domain Resource resource.
///
///
///
/// For information about Ddos Coo Domain Resource and how to use it, see [What is Domain Resource](https://www.alibabacloud.com/help/en/anti-ddos/anti-ddos-pro-and-premium/developer-reference/api-ddoscoo-2020-01-01-createdomainresource).
///
/// &gt; **NOTE:** Available since v1.123.0.
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
/// const domain = config.get("domain") || "tf-example.alibaba.com";
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
/// const defaultDomainResource = new alicloud.ddos.DomainResource("default", {
///     domain: domain,
///     rsType: 0,
///     instanceIds: [_default.id],
///     realServers: ["177.167.32.11"],
///     httpsExt: `    {
///     \\"Http2\\": 1,
///     \\"Http2https\\": 0,
///     \\"Https2http\\": 0
///   }
/// `,
///     proxyTypes: [{
///         proxyPorts: [443],
///         proxyType: "https",
///     }],
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
/// domain = config.get("domain")
/// if domain is None:
///     domain = "tf-example.alibaba.com"
/// default = alicloud.ddos.DdosCooInstance("default",
///     name=name,
///     bandwidth="30",
///     base_bandwidth="30",
///     service_bandwidth="100",
///     port_count="50",
///     domain_count="50",
///     period=1,
///     product_type="ddoscoo")
/// default_domain_resource = alicloud.ddos.DomainResource("default",
///     domain=domain,
///     rs_type=0,
///     instance_ids=[default.id],
///     real_servers=["177.167.32.11"],
///     https_ext="""    {
///     \"Http2\": 1,
///     \"Http2https\": 0,
///     \"Https2http\": 0
///   }
/// """,
///     proxy_types=[{
///         "proxy_ports": [443],
///         "proxy_type": "https",
///     }])
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
///     var domain = config.Get("domain") ?? "tf-example.alibaba.com";
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
///     var defaultDomainResource = new AliCloud.Ddos.DomainResource("default", new()
///     {
///         Domain = domain,
///         RsType = 0,
///         InstanceIds = new[]
///         {
///             @default.Id,
///         },
///         RealServers = new[]
///         {
///             "177.167.32.11",
///         },
///         HttpsExt = @"    {
///     \""Http2\"": 1,
///     \""Http2https\"": 0,
///     \""Https2http\"": 0
///   }
/// ",
///         ProxyTypes = new[]
///         {
///             new AliCloud.Ddos.Inputs.DomainResourceProxyTypeArgs
///             {
///                 ProxyPorts = new[]
///                 {
///                     443,
///                 },
///                 ProxyType = "https",
///             },
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
/// 		domain := "tf-example.alibaba.com"
/// 		if param := cfg.Get("domain"); param != "" {
/// 			domain = param
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
/// 		_, err = ddos.NewDomainResource(ctx, "default", &ddos.DomainResourceArgs{
/// 			Domain: pulumi.String(domain),
/// 			RsType: pulumi.Int(0),
/// 			InstanceIds: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			RealServers: pulumi.StringArray{
/// 				pulumi.String("177.167.32.11"),
/// 			},
/// 			HttpsExt: pulumi.String(`    {
///     \"Http2\": 1,
///     \"Http2https\": 0,
///     \"Https2http\": 0
///   }
/// `),
/// 			ProxyTypes: ddos.DomainResourceProxyTypeArray{
/// 				&ddos.DomainResourceProxyTypeArgs{
/// 					ProxyPorts: pulumi.IntArray{
/// 						pulumi.Int(443),
/// 					},
/// 					ProxyType: pulumi.String("https"),
/// 				},
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
/// import com.pulumi.alicloud.ddos.DomainResource;
/// import com.pulumi.alicloud.ddos.DomainResourceArgs;
/// import com.pulumi.alicloud.ddos.inputs.DomainResourceProxyTypeArgs;
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
///         final var domain = config.get("domain").orElse("tf-example.alibaba.com");
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
///         var defaultDomainResource = new DomainResource("defaultDomainResource", DomainResourceArgs.builder()
///             .domain(domain)
///             .rsType(0)
///             .instanceIds(default_.id())
///             .realServers("177.167.32.11")
///             .httpsExt("""
///     {
///     \"Http2\": 1,
///     \"Http2https\": 0,
///     \"Https2http\": 0
///   }
///             """)
///             .proxyTypes(DomainResourceProxyTypeArgs.builder()
///                 .proxyPorts(443)
///                 .proxyType("https")
///                 .build())
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
///   domain:
///     type: string
///     default: tf-example.alibaba.com
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
///   defaultDomainResource:
///     type: alicloud:ddos:DomainResource
///     name: default
///     properties:
///       domain: ${domain}
///       rsType: 0
///       instanceIds:
///         - ${default.id}
///       realServers:
///         - 177.167.32.11
///       httpsExt: |2
///             {
///             \"Http2\": 1,
///             \"Http2https\": 0,
///             \"Https2http\": 0
///           }
///       proxyTypes:
///         - proxyPorts:
///             - 443
///           proxyType: https
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ddos Coo Domain Resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/domainResource:DomainResource example <id>
/// ```
class DomainResource extends pulumi.CustomResource {
  /// the mode of the Intelligent Protection policy.
  /// - watch: the Warning mode
  /// - defense: the Defense mode
  late final pulumi.Output<String> aiMode;

  /// the level of the Intelligent Protection policy.
  /// - level30: the Low level
  /// - level60: the Normal level
  /// - level90: the Strict level
  late final pulumi.Output<String> aiTemplate;

  /// ip blacklist
  late final pulumi.Output<List<String>?> blackLists;

  /// The status of the blacklist and whitelist feature. Valid values:
  /// - 0: Disabled
  /// - 1: Enabled
  late final pulumi.Output<int> bwListEnable;

  /// CC safety protection switch.
  /// - 0: Disabled
  /// - 1: Enabled
  late final pulumi.Output<String> ccGlobalSwitch;

  /// The private key of the certificate that you want to associate. This parameter must be used together with the CertName and Cert parameters.
  ///
  /// &gt; **NOTE:**   If you specify a value for the CertName, Cert, and Key parameters, you do not need to specify a value for the CertId parameter.
  late final pulumi.Output<String?> cert;

  /// The name of the certificate.
  ///
  /// &gt; **NOTE:**   You can specify the name of the certificate that you want to associate. From version 1.249.0, `cert_identifier` is in the "CertificateID-RegionId" format. For example, if the ID of the certificateId is `123`, and the region ID is `cn-hangzhou`, the value of the `cert_identifier` is `123-cn-hangzhou`.
  late final pulumi.Output<String?> certIdentifier;

  /// The public key of the certificate that you want to associate. This parameter must be used together with the CertName and Key parameters.
  ///
  /// &gt; **NOTE:**   If you specify a value for the CertName, Cert, and Key parameters, you do not need to specify a value for the CertId parameter.
  late final pulumi.Output<String> certName;

  /// The region of the certificate. `cn-hangzhou` and `ap-southeast-1` are supported. The default value is `cn-hangzhou`.
  late final pulumi.Output<String?> certRegion;

  /// The CNAME address to query.
  late final pulumi.Output<String> cname;

  /// The key-value pair of the custom header. The key specifies the header name, and the value specifies the header value. You can specify up to five key-value pairs. The key-value pairs can be up to 200 characters in length.
  /// Take note of the following items:
  /// - Do not use the following default HTTP headers:
  /// - X-Forwarded-ClientSrcPort: This header is used to obtain the source ports of clients that access Anti-DDoS Proxy (a Layer 7 proxy).
  /// - X-Forwarded-ProxyPort: This header is used to obtain the ports of listeners that access Anti-DDoS Proxy (a Layer 7 proxy).
  /// - X-Forwarded-For: This header is used to obtain the IP addresses of clients that access Anti-DDoS Proxy (a Layer 7 proxy).
  /// - Do not use standard HTTP headers or specific widely used custom HTTP headers. The standard HTTP headers include Host, User-Agent, Connection, and Upgrade, and the widely used custom HTTP headers include X-Real-IP, X-True-IP, X-Client-IP, Web-Server-Type, WL-Proxy-Client-IP, eEagleEye-RpcID, EagleEye-TraceID, X-Forwarded-Cluster, and X-Forwarded-Proto. If the preceding headers are used, the original content of the headers is overwritten.
  late final pulumi.Output<String> customHeaders;

  /// The domain name for which you want to configure the Static Page Caching policy.
  ///
  /// &gt; **NOTE:**  You can call the [DescribeDomains](https://www.alibabacloud.com/help/en/doc-detail/91724.html) operation to query all the domain names that are added to Anti-DDoS Pro or Anti-DDoS Premium.
  late final pulumi.Output<String> domain;

  /// The advanced HTTPS settings. This parameter takes effect only when the value of the `ProxyType` parameter includes `https`. The value is a string that consists of a JSON struct. The JSON struct contains the following fields:
  ///
  /// - `Http2https`: specifies whether to turn on Enforce HTTPS Routing. This field is optional and must be an integer. Valid values: `0` and `1`. The value 0 indicates that Enforce HTTPS Routing is turned off. The value 1 indicates that Enforce HTTPS Routing is turned on. The default value is 0.
  ///
  /// If your website supports both HTTP and HTTPS, this feature meets your business requirements. If you enable this feature, all HTTP requests to access the website are redirected to HTTPS requests on the standard port 443.
  ///
  /// - `Https2http`: specifies whether to turn on Enable HTTP. This field is optional and must be an integer. Valid values: `0` and `1`. The value 0 indicates that Enable HTTP is turned off. The value 1 indicates that Enable HTTP is turned on. The default value is 0.
  ///
  /// If your website does not support HTTPS, this feature meets your business requirements If this feature is enabled, all HTTPS requests are redirected to HTTP requests and forwarded to origin servers. This feature can redirect WebSockets requests to WebSocket requests. Requests are redirected over the standard port 80.
  ///
  /// - `Http2`: specifies whether to turn on Enable HTTP/2. This field is optional. Data type: integer. Valid values: `0` and `1`. The value 0 indicates that Enable HTTP/2 is turned off. The value 1 indicates that Enable HTTP/2 is turned on. The default value is 0.
  ///
  /// After you turn on the switch, HTTP/2 is used.
  late final pulumi.Output<String> httpsExt;

  /// InstanceIds
  late final pulumi.Output<List<String>> instanceIds;

  /// The globally unique ID of the certificate. The value is in the "Certificate ID-cn-hangzhou" format. For example, if the ID of the certificate is 123, the value of the CertIdentifier parameter is 123-cn-hangzhou.
  ///
  /// &gt; **NOTE:**   You can specify only one of this parameter and the CertId parameter.
  late final pulumi.Output<String?> key;

  /// Specifies whether to enable the OCSP feature. Valid values:
  late final pulumi.Output<bool?> ocspEnabled;

  /// Protocol type and port number information. See `proxy_types` below.
  late final pulumi.Output<List<Map<String, dynamic>>> proxyTypes;

  /// Server address information of the source station.
  late final pulumi.Output<List<String>> realServers;

  /// The address type of the origin server. Valid values:
  late final pulumi.Output<int> rsType;

  /// IP whitelist list.
  late final pulumi.Output<List<String>?> whiteLists;

  /// Creates a new [DomainResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainResource]. {@macro pulumi_ddos_domain_resource_domain_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainResource(
    String name, {
    DomainResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/domainResource:DomainResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aiMode = registerOutput<String>('aiMode');
    aiTemplate = registerOutput<String>('aiTemplate');
    blackLists = registerOutput<List<String>?>('blackLists');
    bwListEnable = registerOutput<int>('bwListEnable');
    ccGlobalSwitch = registerOutput<String>('ccGlobalSwitch');
    cert = registerOutput<String?>('cert');
    certIdentifier = registerOutput<String?>('certIdentifier');
    certName = registerOutput<String>('certName');
    certRegion = registerOutput<String?>('certRegion');
    cname = registerOutput<String>('cname');
    customHeaders = registerOutput<String>('customHeaders');
    domain = registerOutput<String>('domain');
    httpsExt = registerOutput<String>('httpsExt');
    instanceIds = registerOutput<List<String>>('instanceIds');
    key = registerOutput<String?>('key');
    ocspEnabled = registerOutput<bool?>('ocspEnabled');
    proxyTypes = registerOutput<List<Map<String, dynamic>>>('proxyTypes');
    realServers = registerOutput<List<String>>('realServers');
    rsType = registerOutput<int>('rsType');
    whiteLists = registerOutput<List<String>?>('whiteLists');
  }

  /// Gets an existing [DomainResource] resource's state with the given [name] and [id].
  static DomainResource get(
    String name,
    pulumi.Input<String> id, {
    DomainResourceState? state,
  }) {
    return DomainResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/domainResource:DomainResource',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aiMode = registerOutput<String>('aiMode');
    aiTemplate = registerOutput<String>('aiTemplate');
    blackLists = registerOutput<List<String>?>('blackLists');
    bwListEnable = registerOutput<int>('bwListEnable');
    ccGlobalSwitch = registerOutput<String>('ccGlobalSwitch');
    cert = registerOutput<String?>('cert');
    certIdentifier = registerOutput<String?>('certIdentifier');
    certName = registerOutput<String>('certName');
    certRegion = registerOutput<String?>('certRegion');
    cname = registerOutput<String>('cname');
    customHeaders = registerOutput<String>('customHeaders');
    domain = registerOutput<String>('domain');
    httpsExt = registerOutput<String>('httpsExt');
    instanceIds = registerOutput<List<String>>('instanceIds');
    key = registerOutput<String?>('key');
    ocspEnabled = registerOutput<bool?>('ocspEnabled');
    proxyTypes = registerOutput<List<Map<String, dynamic>>>('proxyTypes');
    realServers = registerOutput<List<String>>('realServers');
    rsType = registerOutput<int>('rsType');
    whiteLists = registerOutput<List<String>?>('whiteLists');
  }
}
