import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipa_domain_args.dart';
import 'ipa_domain_source.dart';
import 'ipa_domain_state.dart';

/// Provides a DCDN Ipa Domain resource.
///
/// For information about DCDN Ipa Domain and how to use it, see [What is Ipa Domain](https://www.alibabacloud.com/help/en/doc-detail/130634.html).
///
/// > **NOTE:** Available since v1.158.0.
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
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const example = new alicloud.dcdn.IpaDomain("example", {
///     domainName: `example-${defaultInteger.result}.com`,
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     scope: "overseas",
///     status: "online",
///     sources: [{
///         content: "www.alicloud-provider.cn",
///         port: 8898,
///         priority: "20",
///         type: "domain",
///         weight: 10,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.resourcemanager.get_resource_groups()
/// example = alicloud.dcdn.IpaDomain("example",
///     domain_name=f"example-{default_integer['result']}.com",
///     resource_group_id=default.groups[0].id,
///     scope="overseas",
///     status="online",
///     sources=[{
///         "content": "www.alicloud-provider.cn",
///         "port": 8898,
///         "priority": "20",
///         "type": "domain",
///         "weight": 10,
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var example = new AliCloud.Dcdn.IpaDomain("example", new()
///     {
///         DomainName = $"example-{defaultInteger.Result}.com",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         Scope = "overseas",
///         Status = "online",
///         Sources = new[]
///         {
///             new AliCloud.Dcdn.Inputs.IpaDomainSourceArgs
///             {
///                 Content = "www.alicloud-provider.cn",
///                 Port = 8898,
///                 Priority = "20",
///                 Type = "domain",
///                 Weight = 10,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewIpaDomain(ctx, "example", &dcdn.IpaDomainArgs{
/// 			DomainName:      pulumi.Sprintf("example-%v.com", defaultInteger.Result),
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
/// 			Scope:           pulumi.String("overseas"),
/// 			Status:          pulumi.String("online"),
/// 			Sources: dcdn.IpaDomainSourceArray{
/// 				&dcdn.IpaDomainSourceArgs{
/// 					Content:  pulumi.String("www.alicloud-provider.cn"),
/// 					Port:     pulumi.Int(8898),
/// 					Priority: pulumi.String("20"),
/// 					Type:     pulumi.String("domain"),
/// 					Weight:   pulumi.Int(10),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.dcdn.IpaDomain;
/// import com.pulumi.alicloud.dcdn.IpaDomainArgs;
/// import com.pulumi.alicloud.dcdn.inputs.IpaDomainSourceArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var example = new IpaDomain("example", IpaDomainArgs.builder()
///             .domainName(String.format("example-%s.com", defaultInteger.result()))
///             .resourceGroupId(default_.groups()[0].id())
///             .scope("overseas")
///             .status("online")
///             .sources(IpaDomainSourceArgs.builder()
///                 .content("www.alicloud-provider.cn")
///                 .port(8898)
///                 .priority("20")
///                 .type("domain")
///                 .weight(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:dcdn:IpaDomain
///     properties:
///       domainName: example-${defaultInteger.result}.com
///       resourceGroupId: ${default.groups[0].id}
///       scope: overseas
///       status: online
///       sources:
///         - content: www.alicloud-provider.cn
///           port: 8898
///           priority: '20'
///           type: domain
///           weight: 10
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DCDN Ipa Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/ipaDomain:IpaDomain example <domain_name>
/// ```
class IpaDomain extends pulumi.CustomResource {
  /// The domain name to be added to IPA. Wildcard domain names are supported. A wildcard domain name must start with a period (.).
  late final pulumi.Output<String> domainName;
  /// The ID of the resource group. If you do not set this parameter, the system automatically assigns the ID of the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The accelerated region. Valid values: `domestic`, `global`, `overseas`.
  late final pulumi.Output<String> scope;
  /// Sources. See `sources` below.
  late final pulumi.Output<List<IpaDomainSource>> sources;
  /// The status of DCDN Ipa Domain. Valid values: `online`, `offline`. Default to `online`.
  late final pulumi.Output<String> status;

  /// Creates a new [IpaDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpaDomain]. {@macro pulumi_dcdn_ipa_domain_ipa_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpaDomain(
    String name, {
    IpaDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/ipaDomain:IpaDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scope = registerOutput<String>('scope');
    this.sources = registerOutput<List<IpaDomainSource>>('sources');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [IpaDomain] resource's state with the given [name] and [id].
  static IpaDomain get(
    String name,
    pulumi.Input<String> id, {
    IpaDomainState? state,
  }) {
    return IpaDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpaDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/ipaDomain:IpaDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scope = registerOutput<String>('scope');
    this.sources = registerOutput<List<IpaDomainSource>>('sources');
    this.status = registerOutput<String>('status');
  }
}
