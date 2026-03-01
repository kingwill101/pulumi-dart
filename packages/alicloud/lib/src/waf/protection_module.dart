import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_module_args.dart';

/// Provides a Web Application Firewall(WAF) Protection Module resource.
///
/// For information about Web Application Firewall(WAF) Protection Module and how to use it, see [What is Protection Module](https://www.alibabacloud.com/help/en/doc-detail/160775.htm).
///
/// > **NOTE:** Available in v1.141.0+.
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
/// const _default = alicloud.waf.getInstances({});
/// const defaultDomain = new alicloud.waf.Domain("default", {
///     domainName: "you domain",
///     instanceId: _default.then(_default => _default.ids?.[0]),
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
/// const defaultProtectionModule = new alicloud.waf.ProtectionModule("default", {
///     instanceId: _default.then(_default => _default.ids?.[0]),
///     domain: defaultDomain.domainName,
///     defenseType: "ac_cc",
///     mode: 0,
///     status: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.waf.get_instances()
/// default_domain = alicloud.waf.Domain("default",
///     domain_name="you domain",
///     instance_id=default.ids[0],
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
/// default_protection_module = alicloud.waf.ProtectionModule("default",
///     instance_id=default.ids[0],
///     domain=default_domain.domain_name,
///     defense_type="ac_cc",
///     mode=0,
///     status=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Waf.GetInstances.Invoke();
///
///     var defaultDomain = new AliCloud.Waf.Domain("default", new()
///     {
///         DomainName = "you domain",
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Ids[0])),
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
///     var defaultProtectionModule = new AliCloud.Waf.ProtectionModule("default", new()
///     {
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Ids[0])),
///         Domain = defaultDomain.DomainName,
///         DefenseType = "ac_cc",
///         Mode = 0,
///         Status = 0,
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
/// 		_default, err := waf.GetInstances(ctx, &waf.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDomain, err := waf.NewDomain(ctx, "default", &waf.DomainArgs{
/// 			DomainName:      pulumi.String("you domain"),
/// 			InstanceId:      pulumi.String(_default.Ids[0]),
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
/// 		_, err = waf.NewProtectionModule(ctx, "default", &waf.ProtectionModuleArgs{
/// 			InstanceId:  pulumi.String(_default.Ids[0]),
/// 			Domain:      defaultDomain.DomainName,
/// 			DefenseType: pulumi.String("ac_cc"),
/// 			Mode:        pulumi.Int(0),
/// 			Status:      pulumi.Int(0),
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
/// import com.pulumi.alicloud.waf.WafFunctions;
/// import com.pulumi.alicloud.waf.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.waf.Domain;
/// import com.pulumi.alicloud.waf.DomainArgs;
/// import com.pulumi.alicloud.waf.inputs.DomainLogHeaderArgs;
/// import com.pulumi.alicloud.waf.ProtectionModule;
/// import com.pulumi.alicloud.waf.ProtectionModuleArgs;
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
///         final var default = WafFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var defaultDomain = new Domain("defaultDomain", DomainArgs.builder()
///             .domainName("you domain")
///             .instanceId(default_.ids()[0])
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
///         var defaultProtectionModule = new ProtectionModule("defaultProtectionModule", ProtectionModuleArgs.builder()
///             .instanceId(default_.ids()[0])
///             .domain(defaultDomain.domainName())
///             .defenseType("ac_cc")
///             .mode(0)
///             .status(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultDomain:
///     type: alicloud:waf:Domain
///     name: default
///     properties:
///       domainName: you domain
///       instanceId: ${default.ids[0]}
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
///   defaultProtectionModule:
///     type: alicloud:waf:ProtectionModule
///     name: default
///     properties:
///       instanceId: ${default.ids[0]}
///       domain: ${defaultDomain.domainName}
///       defenseType: ac_cc
///       mode: 0
///       status: 0
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:waf:getInstances
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Web Application Firewall(WAF) Protection Module can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:waf/protectionModule:ProtectionModule example <instance_id>:<domain>:<defense_type>
/// ```
class ProtectionModule extends pulumi.CustomResource {
  /// The Protection Module. Valid values: `ac_cc`, `antifraud`, `dld`, `normalized`, `waf`.
  late final pulumi.Output<String> defenseType;
  /// The domain name that is added to WAF.
  late final pulumi.Output<String> domain;
  /// The ID of the WAF instance.
  late final pulumi.Output<String> instanceId;
  /// The protection mode of the specified protection module. **NOTE:** The value of the Mode parameter varies based on the value of the `defense_type` parameter.
  /// * The `defense_type` is `waf`. `0`: block mode. `1`: warn mode.
  /// * The `defense_type` is `dld`. `0`: warn mode. `1`: block mode.
  /// * The `defense_type` is `ac_cc`. `0`: prevention mode. `1`: protection-emergency mode.
  /// * The `defense_type` is `antifraud`. `0`: warn mode. `1`: block mode. `2`: strict interception mode.
  /// * The `defense_type` is `normalized`. `0`: warn mode. `1`: block mode.
  late final pulumi.Output<int> mode;
  /// The status of the resource. Valid values: `0`, `1`.
  late final pulumi.Output<int?> status;

  /// Creates a new [ProtectionModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectionModule]. {@macro pulumi_waf_protection_module_protection_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectionModule(
    String name, {
    ProtectionModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:waf/protectionModule:ProtectionModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defenseType = registerOutput<String>('defenseType');
    this.domain = registerOutput<String>('domain');
    this.instanceId = registerOutput<String>('instanceId');
    this.mode = registerOutput<int>('mode');
    this.status = registerOutput<int?>('status');
  }
}
