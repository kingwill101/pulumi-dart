import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_args.dart';
import 'get_domains_result.dart';

/// This data source provides the Vod Domains of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.136.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultDomain = new alicloud.vod.Domain("default", {
///     domainName: "your_domain_name",
///     scope: "domestic",
///     sources: [{
///         sourceType: "domain",
///         sourceContent: "your_source_content",
///         sourcePort: "80",
///     }],
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
/// const _default = alicloud.vod.getDomainsOutput({
///     ids: [defaultDomain.id],
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
/// export const vodDomain = _default.apply(_default => _default.domains?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_domain = alicloud.vod.Domain("default",
///     domain_name="your_domain_name",
///     scope="domestic",
///     sources=[{
///         "source_type": "domain",
///         "source_content": "your_source_content",
///         "source_port": "80",
///     }],
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
/// default = alicloud.vod.get_domains_output(ids=[default_domain.id],
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
/// pulumi.export("vodDomain", default.domains[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultDomain = new AliCloud.Vod.Domain("default", new()
///     {
///         DomainName = "your_domain_name",
///         Scope = "domestic",
///         Sources = new[]
///         {
///             new AliCloud.Vod.Inputs.DomainSourceArgs
///             {
///                 SourceType = "domain",
///                 SourceContent = "your_source_content",
///                 SourcePort = "80",
///             },
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///     });
///
///     var @default = AliCloud.Vod.GetDomains.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDomain.Id,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vodDomain"] = @default.Apply(@default => @default.Apply(getDomainsResult => getDomainsResult.Domains[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vod"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultDomain, err := vod.NewDomain(ctx, "default", &vod.DomainArgs{
/// 			DomainName: pulumi.String("your_domain_name"),
/// 			Scope:      pulumi.String("domestic"),
/// 			Sources: vod.DomainSourceArray{
/// 				&vod.DomainSourceArgs{
/// 					SourceType:    pulumi.String("domain"),
/// 					SourceContent: pulumi.String("your_source_content"),
/// 					SourcePort:    pulumi.String("80"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default := vod.GetDomainsOutput(ctx, vod.GetDomainsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultDomain.ID(),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 		}, nil)
/// 		ctx.Export("vodDomain", _default.ApplyT(func(_default vod.GetDomainsResult) (vod.GetDomainsDomain, error) {
/// 			return _default.Domains[0], nil
/// 		}).(vod.GetDomainsDomainOutput))
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
/// import com.pulumi.alicloud.vod.Domain;
/// import com.pulumi.alicloud.vod.DomainArgs;
/// import com.pulumi.alicloud.vod.inputs.DomainSourceArgs;
/// import com.pulumi.alicloud.vod.VodFunctions;
/// import com.pulumi.alicloud.vod.inputs.GetDomainsArgs;
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
///         var defaultDomain = new Domain("defaultDomain", DomainArgs.builder()
///             .domainName("your_domain_name")
///             .scope("domestic")
///             .sources(DomainSourceArgs.builder()
///                 .sourceType("domain")
///                 .sourceContent("your_source_content")
///                 .sourcePort("80")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .build());
///
///         final var default = VodFunctions.getDomains(GetDomainsArgs.builder()
///             .ids(defaultDomain.id())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .build());
///
///         ctx.export("vodDomain", default_.applyValue(_default_ -> _default_.domains()[0]));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultDomain:
///     type: alicloud:vod:Domain
///     name: default
///     properties:
///       domainName: your_domain_name
///       scope: domestic
///       sources:
///         - sourceType: domain
///           sourceContent: your_source_content
///           sourcePort: '80'
///       tags:
///         key1: value1
///         key2: value2
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vod:getDomains
///       arguments:
///         ids:
///           - ${defaultDomain.id}
///         tags:
///           key1: value1
///           key2: value2
/// outputs:
///   vodDomain: ${default.domains[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vod_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vod/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}
