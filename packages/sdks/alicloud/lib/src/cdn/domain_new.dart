import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_new_args.dart';
import 'domain_new_certificate_config.dart';
import 'domain_new_state.dart';

/// Provides a CDN Domain resource.
///
/// CDN domain name.
///
/// For information about CDN Domain and how to use it, see [What is Domain](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-addcdndomain).
///
/// &gt; **NOTE:** Available since v1.34.0.
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
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultDomainNew = new alicloud.cdn.DomainNew("default", {
///     scope: "overseas",
///     domainName: `mycdndomain-${_default.result}.alicloud-provider.cn`,
///     cdnType: "web",
///     sources: [{
///         type: "ipaddr",
///         content: "1.1.1.1",
///         priority: 20,
///         port: 80,
///         weight: 15,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_domain_new = alicloud.cdn.DomainNew("default",
///     scope="overseas",
///     domain_name=f"mycdndomain-{default['result']}.alicloud-provider.cn",
///     cdn_type="web",
///     sources=[{
///         "type": "ipaddr",
///         "content": "1.1.1.1",
///         "priority": 20,
///         "port": 80,
///         "weight": 15,
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultDomainNew = new AliCloud.Cdn.DomainNew("default", new()
///     {
///         Scope = "overseas",
///         DomainName = $"mycdndomain-{@default.Result}.alicloud-provider.cn",
///         CdnType = "web",
///         Sources = new[]
///         {
///             new AliCloud.Cdn.Inputs.DomainNewSourceArgs
///             {
///                 Type = "ipaddr",
///                 Content = "1.1.1.1",
///                 Priority = 20,
///                 Port = 80,
///                 Weight = 15,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewDomainNew(ctx, "default", &cdn.DomainNewArgs{
/// 			Scope:      pulumi.String("overseas"),
/// 			DomainName: pulumi.Sprintf("mycdndomain-%v.alicloud-provider.cn", _default.Result),
/// 			CdnType:    pulumi.String("web"),
/// 			Sources: cdn.DomainNewSourceArray{
/// 				&cdn.DomainNewSourceArgs{
/// 					Type:     pulumi.String("ipaddr"),
/// 					Content:  pulumi.String("1.1.1.1"),
/// 					Priority: pulumi.Int(20),
/// 					Port:     pulumi.Int(80),
/// 					Weight:   pulumi.Int(15),
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
/// import com.pulumi.alicloud.cdn.DomainNew;
/// import com.pulumi.alicloud.cdn.DomainNewArgs;
/// import com.pulumi.alicloud.cdn.inputs.DomainNewSourceArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultDomainNew = new DomainNew("defaultDomainNew", DomainNewArgs.builder()
///             .scope("overseas")
///             .domainName(String.format("mycdndomain-%s.alicloud-provider.cn", default_.result()))
///             .cdnType("web")
///             .sources(DomainNewSourceArgs.builder()
///                 .type("ipaddr")
///                 .content("1.1.1.1")
///                 .priority(20)
///                 .port(80)
///                 .weight(15)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultDomainNew:
///     type: alicloud:cdn:DomainNew
///     name: default
///     properties:
///       scope: overseas
///       domainName: mycdndomain-${default.result}.alicloud-provider.cn
///       cdnType: web
///       sources:
///         - type: ipaddr
///           content: 1.1.1.1
///           priority: 20
///           port: 80
///           weight: 15
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CDN Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cdn/domainNew:DomainNew example <id>
/// ```
class DomainNew extends pulumi.CustomResource {
  /// Cdn type of the accelerated domain. Valid values are `web`, `download`, `video`.
  late final pulumi.Output<String> cdnType;

  /// Certificate configuration See `certificate_config` below.
  late final pulumi.Output<DomainNewCertificateConfig> certificateConfig;

  /// Health test URL.
  late final pulumi.Output<String?> checkUrl;

  /// The CNAME domain name corresponding to the accelerated domain name.
  late final pulumi.Output<String> cname;

  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> domainName;

  /// Whether to issue a certificate in grayscale. Value: staging: issued certificate in grayscale. Not passing or passing any other value is a formal certificate.
  late final pulumi.Output<String?> env;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// Scope of the accelerated domain. Valid values are `domestic`, `overseas`, `global`. Default value is `domestic`. This parameter's setting is valid Only for the international users and domestic L3 and above users. Value:
  late final pulumi.Output<String> scope;

  /// The source address list of the accelerated domain. Defaults to null. See `sources` below.
  late final pulumi.Output<List<Map<String, dynamic>>> sources;

  /// The status of the resource, valid values: `online`, `offline`.
  late final pulumi.Output<String> status;

  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DomainNew].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainNew]. {@macro pulumi_cdn_domain_new_domain_new_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainNew(
    String name, {
    DomainNewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cdn/domainNew:DomainNew',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cdnType = registerOutput<String>('cdnType');
    certificateConfig = registerOutput<DomainNewCertificateConfig>(
      'certificateConfig',
    );
    checkUrl = registerOutput<String?>('checkUrl');
    cname = registerOutput<String>('cname');
    domainName = registerOutput<String>('domainName');
    env = registerOutput<String?>('env');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scope = registerOutput<String>('scope');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DomainNew] resource's state with the given [name] and [id].
  static DomainNew get(
    String name,
    pulumi.Input<String> id, {
    DomainNewState? state,
  }) {
    return DomainNew._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainNew._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cdn/domainNew:DomainNew',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cdnType = registerOutput<String>('cdnType');
    certificateConfig = registerOutput<DomainNewCertificateConfig>(
      'certificateConfig',
    );
    checkUrl = registerOutput<String?>('checkUrl');
    cname = registerOutput<String>('cname');
    domainName = registerOutput<String>('domainName');
    env = registerOutput<String?>('env');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scope = registerOutput<String>('scope');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
