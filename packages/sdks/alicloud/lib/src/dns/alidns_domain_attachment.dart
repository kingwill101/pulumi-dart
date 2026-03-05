import 'package:pulumi/pulumi.dart' as pulumi;
import 'alidns_domain_attachment_args.dart';
import 'alidns_domain_attachment_state.dart';

/// Provides bind the domain name to the Alidns instance resource.
///
/// &gt; **NOTE:** Available since v1.99.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.dns.DomainGroup("default", {domainGroupName: "tf-example"});
/// const defaultAlidnsDomain = new alicloud.dns.AlidnsDomain("default", {
///     domainName: "starmove.com",
///     groupId: _default.id,
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultAlidnsInstance = new alicloud.dns.AlidnsInstance("default", {
///     dnsSecurity: "basic",
///     domainNumbers: "3",
///     versionCode: "version_personal",
///     period: 1,
///     renewalStatus: "ManualRenewal",
/// });
/// const defaultAlidnsDomainAttachment = new alicloud.dns.AlidnsDomainAttachment("default", {
///     instanceId: defaultAlidnsInstance.id,
///     domainNames: [defaultAlidnsDomain.domainName],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dns.DomainGroup("default", domain_group_name="tf-example")
/// default_alidns_domain = alicloud.dns.AlidnsDomain("default",
///     domain_name="starmove.com",
///     group_id=default.id,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_alidns_instance = alicloud.dns.AlidnsInstance("default",
///     dns_security="basic",
///     domain_numbers="3",
///     version_code="version_personal",
///     period=1,
///     renewal_status="ManualRenewal")
/// default_alidns_domain_attachment = alicloud.dns.AlidnsDomainAttachment("default",
///     instance_id=default_alidns_instance.id,
///     domain_names=[default_alidns_domain.domain_name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Dns.DomainGroup("default", new()
///     {
///         DomainGroupName = "tf-example",
///     });
///
///     var defaultAlidnsDomain = new AliCloud.Dns.AlidnsDomain("default", new()
///     {
///         DomainName = "starmove.com",
///         GroupId = @default.Id,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultAlidnsInstance = new AliCloud.Dns.AlidnsInstance("default", new()
///     {
///         DnsSecurity = "basic",
///         DomainNumbers = "3",
///         VersionCode = "version_personal",
///         Period = 1,
///         RenewalStatus = "ManualRenewal",
///     });
///
///     var defaultAlidnsDomainAttachment = new AliCloud.Dns.AlidnsDomainAttachment("default", new()
///     {
///         InstanceId = defaultAlidnsInstance.Id,
///         DomainNames = new[]
///         {
///             defaultAlidnsDomain.DomainName,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := dns.NewDomainGroup(ctx, "default", &dns.DomainGroupArgs{
/// 			DomainGroupName: pulumi.String("tf-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlidnsDomain, err := dns.NewAlidnsDomain(ctx, "default", &dns.AlidnsDomainArgs{
/// 			DomainName: pulumi.String("starmove.com"),
/// 			GroupId:    _default.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlidnsInstance, err := dns.NewAlidnsInstance(ctx, "default", &dns.AlidnsInstanceArgs{
/// 			DnsSecurity:   pulumi.String("basic"),
/// 			DomainNumbers: pulumi.String("3"),
/// 			VersionCode:   pulumi.String("version_personal"),
/// 			Period:        pulumi.Int(1),
/// 			RenewalStatus: pulumi.String("ManualRenewal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewAlidnsDomainAttachment(ctx, "default", &dns.AlidnsDomainAttachmentArgs{
/// 			InstanceId: defaultAlidnsInstance.ID(),
/// 			DomainNames: pulumi.StringArray{
/// 				defaultAlidnsDomain.DomainName,
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
/// import com.pulumi.alicloud.dns.DomainGroup;
/// import com.pulumi.alicloud.dns.DomainGroupArgs;
/// import com.pulumi.alicloud.dns.AlidnsDomain;
/// import com.pulumi.alicloud.dns.AlidnsDomainArgs;
/// import com.pulumi.alicloud.dns.AlidnsInstance;
/// import com.pulumi.alicloud.dns.AlidnsInstanceArgs;
/// import com.pulumi.alicloud.dns.AlidnsDomainAttachment;
/// import com.pulumi.alicloud.dns.AlidnsDomainAttachmentArgs;
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
///         var default_ = new DomainGroup("default", DomainGroupArgs.builder()
///             .domainGroupName("tf-example")
///             .build());
///
///         var defaultAlidnsDomain = new AlidnsDomain("defaultAlidnsDomain", AlidnsDomainArgs.builder()
///             .domainName("starmove.com")
///             .groupId(default_.id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultAlidnsInstance = new AlidnsInstance("defaultAlidnsInstance", AlidnsInstanceArgs.builder()
///             .dnsSecurity("basic")
///             .domainNumbers("3")
///             .versionCode("version_personal")
///             .period(1)
///             .renewalStatus("ManualRenewal")
///             .build());
///
///         var defaultAlidnsDomainAttachment = new AlidnsDomainAttachment("defaultAlidnsDomainAttachment", AlidnsDomainAttachmentArgs.builder()
///             .instanceId(defaultAlidnsInstance.id())
///             .domainNames(defaultAlidnsDomain.domainName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:dns:DomainGroup
///     properties:
///       domainGroupName: tf-example
///   defaultAlidnsDomain:
///     type: alicloud:dns:AlidnsDomain
///     name: default
///     properties:
///       domainName: starmove.com
///       groupId: ${default.id}
///       tags:
///         Created: TF
///         For: example
///   defaultAlidnsInstance:
///     type: alicloud:dns:AlidnsInstance
///     name: default
///     properties:
///       dnsSecurity: basic
///       domainNumbers: 3
///       versionCode: version_personal
///       period: 1
///       renewalStatus: ManualRenewal
///   defaultAlidnsDomainAttachment:
///     type: alicloud:dns:AlidnsDomainAttachment
///     name: default
///     properties:
///       instanceId: ${defaultAlidnsInstance.id}
///       domainNames:
///         - ${defaultAlidnsDomain.domainName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DNS domain attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/alidnsDomainAttachment:AlidnsDomainAttachment example dns-cn-v0h1ldjhxxx
/// ```
class AlidnsDomainAttachment extends pulumi.CustomResource {
  /// The domain names bound to the DNS instance.
  late final pulumi.Output<List<String>> domainNames;
  /// The id of the DNS instance.
  late final pulumi.Output<String> instanceId;

  /// Creates a new [AlidnsDomainAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlidnsDomainAttachment]. {@macro pulumi_dns_alidns_domain_attachment_alidns_domain_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlidnsDomainAttachment(
    String name, {
    AlidnsDomainAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/alidnsDomainAttachment:AlidnsDomainAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainNames = registerOutput<List<String>>('domainNames');
    instanceId = registerOutput<String>('instanceId');
  }

  /// Gets an existing [AlidnsDomainAttachment] resource's state with the given [name] and [id].
  static AlidnsDomainAttachment get(
    String name,
    pulumi.Input<String> id, {
    AlidnsDomainAttachmentState? state,
  }) {
    return AlidnsDomainAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlidnsDomainAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/alidnsDomainAttachment:AlidnsDomainAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainNames = registerOutput<List<String>>('domainNames');
    instanceId = registerOutput<String>('instanceId');
  }
}
