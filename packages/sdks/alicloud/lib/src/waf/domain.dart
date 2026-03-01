import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_log_header.dart';
import 'domain_state.dart';

/// > **DEPRECATED:**  This resource has been deprecated and using alicloud.wafv3.Domain instead.
///
/// Provides a WAF Domain resource to create domain in the Web Application Firewall.
///
/// For information about WAF and how to use it, see [What is Alibaba Cloud WAF](https://www.alibabacloud.com/help/doc-detail/28517.htm).
///
/// > **NOTE:** Available since v1.82.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const domain = new alicloud.waf.Domain("domain", {
///     domainName: "alicloud-provider.cn",
///     instanceId: "waf-123455",
///     isAccessProduct: "On",
///     sourceIps: ["1.1.1.1"],
///     clusterType: "PhysicalCluster",
///     http2Ports: ["443"],
///     httpPorts: ["80"],
///     httpsPorts: ["443"],
///     httpToUserIp: "Off",
///     httpsRedirect: "Off",
///     loadBalancing: "IpHash",
///     logHeaders: [{
///         key: "foo",
///         value: "http",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// domain = alicloud.waf.Domain("domain",
///     domain_name="alicloud-provider.cn",
///     instance_id="waf-123455",
///     is_access_product="On",
///     source_ips=["1.1.1.1"],
///     cluster_type="PhysicalCluster",
///     http2_ports=["443"],
///     http_ports=["80"],
///     https_ports=["443"],
///     http_to_user_ip="Off",
///     https_redirect="Off",
///     load_balancing="IpHash",
///     log_headers=[{
///         "key": "foo",
///         "value": "http",
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
///     var domain = new AliCloud.Waf.Domain("domain", new()
///     {
///         DomainName = "alicloud-provider.cn",
///         InstanceId = "waf-123455",
///         IsAccessProduct = "On",
///         SourceIps = new[]
///         {
///             "1.1.1.1",
///         },
///         ClusterType = "PhysicalCluster",
///         Http2Ports = new[]
///         {
///             "443",
///         },
///         HttpPorts = new[]
///         {
///             "80",
///         },
///         HttpsPorts = new[]
///         {
///             "443",
///         },
///         HttpToUserIp = "Off",
///         HttpsRedirect = "Off",
///         LoadBalancing = "IpHash",
///         LogHeaders = new[]
///         {
///             new AliCloud.Waf.Inputs.DomainLogHeaderArgs
///             {
///                 Key = "foo",
///                 Value = "http",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.NewDomain(ctx, "domain", &waf.DomainArgs{
/// 			DomainName:      pulumi.String("alicloud-provider.cn"),
/// 			InstanceId:      pulumi.String("waf-123455"),
/// 			IsAccessProduct: pulumi.String("On"),
/// 			SourceIps: pulumi.StringArray{
/// 				pulumi.String("1.1.1.1"),
/// 			},
/// 			ClusterType: pulumi.String("PhysicalCluster"),
/// 			Http2Ports: pulumi.StringArray{
/// 				pulumi.String("443"),
/// 			},
/// 			HttpPorts: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			HttpsPorts: pulumi.StringArray{
/// 				pulumi.String("443"),
/// 			},
/// 			HttpToUserIp:  pulumi.String("Off"),
/// 			HttpsRedirect: pulumi.String("Off"),
/// 			LoadBalancing: pulumi.String("IpHash"),
/// 			LogHeaders: waf.DomainLogHeaderArray{
/// 				&waf.DomainLogHeaderArgs{
/// 					Key:   pulumi.String("foo"),
/// 					Value: pulumi.String("http"),
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
/// import com.pulumi.alicloud.waf.Domain;
/// import com.pulumi.alicloud.waf.DomainArgs;
/// import com.pulumi.alicloud.waf.inputs.DomainLogHeaderArgs;
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
///         var domain = new Domain("domain", DomainArgs.builder()
///             .domainName("alicloud-provider.cn")
///             .instanceId("waf-123455")
///             .isAccessProduct("On")
///             .sourceIps("1.1.1.1")
///             .clusterType("PhysicalCluster")
///             .http2Ports("443")
///             .httpPorts("80")
///             .httpsPorts("443")
///             .httpToUserIp("Off")
///             .httpsRedirect("Off")
///             .loadBalancing("IpHash")
///             .logHeaders(DomainLogHeaderArgs.builder()
///                 .key("foo")
///                 .value("http")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   domain:
///     type: alicloud:waf:Domain
///     properties:
///       domainName: alicloud-provider.cn
///       instanceId: waf-123455
///       isAccessProduct: On
///       sourceIps:
///         - 1.1.1.1
///       clusterType: PhysicalCluster
///       http2Ports:
///         - 443
///       httpPorts:
///         - 80
///       httpsPorts:
///         - 443
///       httpToUserIp: Off
///       httpsRedirect: Off
///       loadBalancing: IpHash
///       logHeaders:
///         - key: foo
///           value: http
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// WAF domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:waf/domain:Domain domain waf-132435:www.domain.com
/// ```
class Domain extends pulumi.CustomResource {
  /// The type of the WAF cluster. Valid values: `PhysicalCluster` and `VirtualCluster`. Default to `PhysicalCluster`.
  late final pulumi.Output<String?> clusterType;
  /// The CNAME record assigned by the WAF instance to the specified domain.
  late final pulumi.Output<String> cname;
  /// The connection timeout for WAF exclusive clusters. Unit: seconds.
  late final pulumi.Output<int?> connectionTime;
  /// Field `domain` has been deprecated from version 1.94.0. Use `domain_name` instead.
  late final pulumi.Output<String> domain;
  /// The domain that you want to add to WAF. The `domain_name` is required when the value of the `domain`  is Empty.
  late final pulumi.Output<String> domainName;
  /// List of the HTTP 2.0 ports.
  late final pulumi.Output<List<String>?> http2Ports;
  /// List of the HTTP ports.
  late final pulumi.Output<List<String>?> httpPorts;
  /// Specifies whether to enable the HTTP back-to-origin feature. After this feature is enabled, the WAF instance can use HTTP to forward HTTPS requests to the origin server.
  /// By default, port 80 is used to forward the requests to the origin server. Valid values: `On` and `Off`. Default to `Off`.
  late final pulumi.Output<String?> httpToUserIp;
  /// List of the HTTPS ports.
  late final pulumi.Output<List<String>?> httpsPorts;
  /// Specifies whether to redirect HTTP requests as HTTPS requests. Valid values: "On" and `Off`. Default to `Off`.
  late final pulumi.Output<String?> httpsRedirect;
  /// The ID of the WAF instance.
  late final pulumi.Output<String> instanceId;
  /// Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: `On` and `Off`. Default to `Off`.
  late final pulumi.Output<String> isAccessProduct;
  /// The load balancing algorithm that is used to forward requests to the origin. Valid values: `IpHash` and `RoundRobin`. Default to `IpHash`.
  late final pulumi.Output<String?> loadBalancing;
  /// The key-value pair that is used to mark the traffic that flows through WAF to the domain. Each item contains two field:
  /// * key: The key of label
  /// * value: The value of label
  late final pulumi.Output<List<DomainLogHeader>?> logHeaders;
  /// The read timeout of a WAF exclusive cluster. Unit: seconds.
  late final pulumi.Output<int?> readTime;
  /// The ID of the resource group to which the queried domain belongs in Resource Management. By default, no value is specified, indicating that the domain belongs to the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// List of the IP address or domain of the origin server to which the specified domain points.
  late final pulumi.Output<List<String>?> sourceIps;
  /// The timeout period for a WAF exclusive cluster write connection. Unit: seconds.
  late final pulumi.Output<int?> writeTime;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_waf_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:waf/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterType = registerOutput<String?>('clusterType');
    this.cname = registerOutput<String>('cname');
    this.connectionTime = registerOutput<int?>('connectionTime');
    this.domain = registerOutput<String>('domain');
    this.domainName = registerOutput<String>('domainName');
    this.http2Ports = registerOutput<List<String>?>('http2Ports');
    this.httpPorts = registerOutput<List<String>?>('httpPorts');
    this.httpToUserIp = registerOutput<String?>('httpToUserIp');
    this.httpsPorts = registerOutput<List<String>?>('httpsPorts');
    this.httpsRedirect = registerOutput<String?>('httpsRedirect');
    this.instanceId = registerOutput<String>('instanceId');
    this.isAccessProduct = registerOutput<String>('isAccessProduct');
    this.loadBalancing = registerOutput<String?>('loadBalancing');
    this.logHeaders = registerOutput<List<DomainLogHeader>?>('logHeaders');
    this.readTime = registerOutput<int?>('readTime');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sourceIps = registerOutput<List<String>?>('sourceIps');
    this.writeTime = registerOutput<int?>('writeTime');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:waf/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterType = registerOutput<String?>('clusterType');
    this.cname = registerOutput<String>('cname');
    this.connectionTime = registerOutput<int?>('connectionTime');
    this.domain = registerOutput<String>('domain');
    this.domainName = registerOutput<String>('domainName');
    this.http2Ports = registerOutput<List<String>?>('http2Ports');
    this.httpPorts = registerOutput<List<String>?>('httpPorts');
    this.httpToUserIp = registerOutput<String?>('httpToUserIp');
    this.httpsPorts = registerOutput<List<String>?>('httpsPorts');
    this.httpsRedirect = registerOutput<String?>('httpsRedirect');
    this.instanceId = registerOutput<String>('instanceId');
    this.isAccessProduct = registerOutput<String>('isAccessProduct');
    this.loadBalancing = registerOutput<String?>('loadBalancing');
    this.logHeaders = registerOutput<List<DomainLogHeader>?>('logHeaders');
    this.readTime = registerOutput<int?>('readTime');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sourceIps = registerOutput<List<String>?>('sourceIps');
    this.writeTime = registerOutput<int?>('writeTime');
  }
}
