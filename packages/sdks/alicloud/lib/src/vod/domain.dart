import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_state.dart';

/// Provides a VOD Domain resource.
///
/// For information about VOD Domain and how to use it, see [What is Domain](https://www.alibabacloud.com/help/product/29932.html).
///
/// &gt; **NOTE:** Available since v1.136.0+.
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
/// const defaultDomain = new alicloud.vod.Domain("default", {
///     domainName: `example-${_default.result}.com`,
///     scope: "domestic",
///     sources: [{
///         sourceType: "domain",
///         sourceContent: "outin-c7405446108111ec9a7100163e0eb78b.oss-cn-beijing.aliyuncs.com",
///         sourcePort: "443",
///     }],
///     tags: {
///         Created: "terraform",
///         For: "example",
///     },
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
/// default_domain = alicloud.vod.Domain("default",
///     domain_name=f"example-{default['result']}.com",
///     scope="domestic",
///     sources=[{
///         "source_type": "domain",
///         "source_content": "outin-c7405446108111ec9a7100163e0eb78b.oss-cn-beijing.aliyuncs.com",
///         "source_port": "443",
///     }],
///     tags={
///         "Created": "terraform",
///         "For": "example",
///     })
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
///     var defaultDomain = new AliCloud.Vod.Domain("default", new()
///     {
///         DomainName = $"example-{@default.Result}.com",
///         Scope = "domestic",
///         Sources = new[]
///         {
///             new AliCloud.Vod.Inputs.DomainSourceArgs
///             {
///                 SourceType = "domain",
///                 SourceContent = "outin-c7405446108111ec9a7100163e0eb78b.oss-cn-beijing.aliyuncs.com",
///                 SourcePort = "443",
///             },
///         },
///         Tags =
///         {
///             { "Created", "terraform" },
///             { "For", "example" },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vod"
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
/// 		_, err = vod.NewDomain(ctx, "default", &vod.DomainArgs{
/// 			DomainName: pulumi.Sprintf("example-%v.com", _default.Result),
/// 			Scope:      pulumi.String("domestic"),
/// 			Sources: vod.DomainSourceArray{
/// 				&vod.DomainSourceArgs{
/// 					SourceType:    pulumi.String("domain"),
/// 					SourceContent: pulumi.String("outin-c7405446108111ec9a7100163e0eb78b.oss-cn-beijing.aliyuncs.com"),
/// 					SourcePort:    pulumi.String("443"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("terraform"),
/// 				"For":     pulumi.String("example"),
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
/// import com.pulumi.alicloud.vod.Domain;
/// import com.pulumi.alicloud.vod.DomainArgs;
/// import com.pulumi.alicloud.vod.inputs.DomainSourceArgs;
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
///         var defaultDomain = new Domain("defaultDomain", DomainArgs.builder()
///             .domainName(String.format("example-%s.com", default_.result()))
///             .scope("domestic")
///             .sources(DomainSourceArgs.builder()
///                 .sourceType("domain")
///                 .sourceContent("outin-c7405446108111ec9a7100163e0eb78b.oss-cn-beijing.aliyuncs.com")
///                 .sourcePort("443")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "terraform"),
///                 Map.entry("For", "example")
///             ))
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
///   defaultDomain:
///     type: alicloud:vod:Domain
///     name: default
///     properties:
///       domainName: example-${default.result}.com
///       scope: domestic
///       sources:
///         - sourceType: domain
///           sourceContent: outin-c7405446108111ec9a7100163e0eb78b.oss-cn-beijing.aliyuncs.com
///           sourcePort: '443'
///       tags:
///         Created: terraform
///         For: example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VOD Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vod/domain:Domain example <domain_name>
/// ```
class Domain extends pulumi.CustomResource {
  /// The name of the certificate. The value of this parameter is returned if HTTPS is enabled.
  late final pulumi.Output<String> certName;

  /// The URL that is used for health checks.
  late final pulumi.Output<String?> checkUrl;

  /// The CNAME that is assigned to the domain name for CDN. You must add a CNAME record in the system of your Domain Name System (DNS) service provider to map the domain name for CDN to the CNAME.
  late final pulumi.Output<String> cname;

  /// The description of the domain name for CDN.
  late final pulumi.Output<String> description;

  /// The domain name for CDN that you want to add to ApsaraVideo VOD. Wildcard domain names are supported. Start the domain name with a period (.). Example: `.example.com.`.
  late final pulumi.Output<String> domainName;

  /// The time when the domain name for CDN was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> gmtCreated;

  /// The last time when the domain name for CDN was modified. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> gmtModified;

  /// This parameter is applicable to users of level 3 or higher in mainland China and users outside mainland China. Valid values:
  late final pulumi.Output<String?> scope;

  /// The information about the address of the origin server. For more information about the Sources parameter, See the following `Block sources`.
  late final pulumi.Output<List<Map<String, dynamic>>> sources;

  /// Indicates whether the Secure Sockets Layer (SSL) certificate is enabled. Valid values: `on`,`off`.
  late final pulumi.Output<String> sslProtocol;

  /// The public key of the certificate. The value of this parameter is returned if HTTPS is enabled.
  late final pulumi.Output<String> sslPub;

  /// The status of the domain name for CDN. Valid values:
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  /// * `Key`: It can be up to 64 characters in length. It cannot be a null string.
  /// * `Value`: It can be up to 128 characters in length. It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The top-level domain name.
  late final pulumi.Output<String?> topLevelDomain;

  /// The weight of the origin server.
  late final pulumi.Output<String> weight;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_vod_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(String name, {DomainArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:vod/domain:Domain',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    certName = registerOutput<String>('certName');
    checkUrl = registerOutput<String?>('checkUrl');
    cname = registerOutput<String>('cname');
    description = registerOutput<String>('description');
    domainName = registerOutput<String>('domainName');
    gmtCreated = registerOutput<String>('gmtCreated');
    gmtModified = registerOutput<String>('gmtModified');
    scope = registerOutput<String?>('scope');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    sslProtocol = registerOutput<String>('sslProtocol');
    sslPub = registerOutput<String>('sslPub');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topLevelDomain = registerOutput<String?>('topLevelDomain');
    weight = registerOutput<String>('weight');
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
         'alicloud:vod/domain:Domain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certName = registerOutput<String>('certName');
    checkUrl = registerOutput<String?>('checkUrl');
    cname = registerOutput<String>('cname');
    description = registerOutput<String>('description');
    domainName = registerOutput<String>('domainName');
    gmtCreated = registerOutput<String>('gmtCreated');
    gmtModified = registerOutput<String>('gmtModified');
    scope = registerOutput<String?>('scope');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    sslProtocol = registerOutput<String>('sslProtocol');
    sslPub = registerOutput<String>('sslPub');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topLevelDomain = registerOutput<String?>('topLevelDomain');
    weight = registerOutput<String>('weight');
  }
}
