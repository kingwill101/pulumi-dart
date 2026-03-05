import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_state.dart';

/// Provides a DCDN Domain resource.
///
/// Full station accelerated domain name.
///
/// For information about DCDN Domain and how to use it, see [What is Domain](https://www.alibabacloud.com/help/en/doc-detail/130628.htm).
///
/// &gt; **NOTE:** Available since v1.94.0.
///
/// &gt; **NOTE:** Field `force_set`, `security_token` has been removed from provider version 1.227.1.
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
/// const domainName = config.get("domainName") || "tf-example.com";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = new alicloud.dcdn.Domain("example", {
///     domainName: `${domainName}-${_default.result}`,
///     scope: "overseas",
///     sources: [{
///         content: "1.1.1.1",
///         port: 80,
///         priority: "20",
///         type: "ipaddr",
///         weight: "10",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// domain_name = config.get("domainName")
/// if domain_name is None:
///     domain_name = "tf-example.com"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.dcdn.Domain("example",
///     domain_name=f"{domain_name}-{default['result']}",
///     scope="overseas",
///     sources=[{
///         "content": "1.1.1.1",
///         "port": 80,
///         "priority": "20",
///         "type": "ipaddr",
///         "weight": "10",
///     }])
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
///     var domainName = config.Get("domainName") ?? "tf-example.com";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = new AliCloud.Dcdn.Domain("example", new()
///     {
///         DomainName = $"{domainName}-{@default.Result}",
///         Scope = "overseas",
///         Sources = new[]
///         {
///             new AliCloud.Dcdn.Inputs.DomainSourceArgs
///             {
///                 Content = "1.1.1.1",
///                 Port = 80,
///                 Priority = "20",
///                 Type = "ipaddr",
///                 Weight = "10",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		domainName := "tf-example.com"
/// 		if param := cfg.Get("domainName"); param != "" {
/// 			domainName = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewDomain(ctx, "example", &dcdn.DomainArgs{
/// 			DomainName: pulumi.Sprintf("%v-%v", domainName, _default.Result),
/// 			Scope:      pulumi.String("overseas"),
/// 			Sources: dcdn.DomainSourceArray{
/// 				&dcdn.DomainSourceArgs{
/// 					Content:  pulumi.String("1.1.1.1"),
/// 					Port:     pulumi.Int(80),
/// 					Priority: pulumi.String("20"),
/// 					Type:     pulumi.String("ipaddr"),
/// 					Weight:   pulumi.String("10"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.dcdn.Domain;
/// import com.pulumi.alicloud.dcdn.DomainArgs;
/// import com.pulumi.alicloud.dcdn.inputs.DomainSourceArgs;
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
///         final var domainName = config.get("domainName").orElse("tf-example.com");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName(String.format("%s-%s", domainName,default_.result()))
///             .scope("overseas")
///             .sources(DomainSourceArgs.builder()
///                 .content("1.1.1.1")
///                 .port(80)
///                 .priority("20")
///                 .type("ipaddr")
///                 .weight("10")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   domainName:
///     type: string
///     default: tf-example.com
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:dcdn:Domain
///     properties:
///       domainName: ${domainName}-${default.result}
///       scope: overseas
///       sources:
///         - content: 1.1.1.1
///           port: '80'
///           priority: '20'
///           type: ipaddr
///           weight: '10'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DCDN Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/domain:Domain example <id>
/// ```
class Domain extends pulumi.CustomResource {
  /// The certificate ID. This parameter is required and valid only when `CertType` is set to `cas`. If you specify this parameter, an existing certificate is used.
  late final pulumi.Output<String> certId;
  /// The name of the new certificate. You can specify only one certificate name. This parameter is optional and valid only when `CertType` is set to `upload`.
  late final pulumi.Output<String> certName;
  /// The region of the SSL certificate. This parameter takes effect only when `CertType` is set to `cas`. Default value: **cn-hangzhou**. Valid values: **cn-hangzhou** and **ap-southeast-1**.
  late final pulumi.Output<String> certRegion;
  /// The certificate type.
  late final pulumi.Output<String> certType;
  /// The URL that is used for health checks.
  late final pulumi.Output<String?> checkUrl;
  /// The CNAME domain name corresponding to the accelerated domain name.
  late final pulumi.Output<String> cname;
  /// The time when the accelerated domain name was created.
  late final pulumi.Output<String> createTime;
  /// The accelerated domain name. You can specify multiple domain names and separate them with commas (,). You can specify up to 500 domain names in each request. The query results of multiple domain names are aggregated. If you do not specify this parameter, data of all accelerated domain names under your account is queried.
  late final pulumi.Output<String> domainName;
  /// Specifies whether the certificate is issued in canary releases. If you set this parameter to `staging`, the certificate is issued in canary releases. If you do not specify this parameter or set this parameter to other values, the certificate is officially issued.
  late final pulumi.Output<String?> env;
  /// Computing service type. Valid values:
  late final pulumi.Output<String?> functionType;
  /// The ID of the resource group. If you do not specify a value for this parameter, the system automatically assigns the ID of the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The Acceleration scen. Supported:
  late final pulumi.Output<String?> scene;
  /// The region where the acceleration service is deployed. Valid values:
  late final pulumi.Output<String?> scope;
  /// Source  See `sources` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> sources;
  /// The private key. Specify the private key only if you want to enable the SSL certificate.
  late final pulumi.Output<String?> sslPri;
  /// Specifies whether to enable the SSL certificate. Valid values:
  late final pulumi.Output<String?> sslProtocol;
  /// The content of the SSL certificate. Specify the content of the SSL certificate only if you want to enable the SSL certificate.
  late final pulumi.Output<String> sslPub;
  /// The status of the domain name. Valid values:
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The top-level domain.
  late final pulumi.Output<String?> topLevelDomain;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_dcdn_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certId = registerOutput<String>('certId');
    certName = registerOutput<String>('certName');
    certRegion = registerOutput<String>('certRegion');
    certType = registerOutput<String>('certType');
    checkUrl = registerOutput<String?>('checkUrl');
    cname = registerOutput<String>('cname');
    createTime = registerOutput<String>('createTime');
    domainName = registerOutput<String>('domainName');
    env = registerOutput<String?>('env');
    functionType = registerOutput<String?>('functionType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scene = registerOutput<String?>('scene');
    scope = registerOutput<String?>('scope');
    sources = registerOutput<List<Map<String, dynamic>>?>('sources');
    sslPri = registerOutput<String?>('sslPri');
    sslProtocol = registerOutput<String?>('sslProtocol');
    sslPub = registerOutput<String>('sslPub');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topLevelDomain = registerOutput<String?>('topLevelDomain');
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
          'alicloud:dcdn/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certId = registerOutput<String>('certId');
    certName = registerOutput<String>('certName');
    certRegion = registerOutput<String>('certRegion');
    certType = registerOutput<String>('certType');
    checkUrl = registerOutput<String?>('checkUrl');
    cname = registerOutput<String>('cname');
    createTime = registerOutput<String>('createTime');
    domainName = registerOutput<String>('domainName');
    env = registerOutput<String?>('env');
    functionType = registerOutput<String?>('functionType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scene = registerOutput<String?>('scene');
    scope = registerOutput<String?>('scope');
    sources = registerOutput<List<Map<String, dynamic>>?>('sources');
    sslPri = registerOutput<String?>('sslPri');
    sslProtocol = registerOutput<String?>('sslProtocol');
    sslPub = registerOutput<String>('sslPub');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topLevelDomain = registerOutput<String?>('topLevelDomain');
  }
}
