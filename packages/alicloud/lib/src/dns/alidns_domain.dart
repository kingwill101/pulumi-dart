import 'package:pulumi/pulumi.dart' as pulumi;
import 'alidns_domain_args.dart';

/// Provides a Alidns domain resource.
///
/// > **NOTE:** The domain name which you want to add must be already registered and had not added by another account. Every domain name can only exist in a unique group.
///
/// > **NOTE:** Available since v1.95.0.
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
/// 		_, err = dns.NewAlidnsDomain(ctx, "default", &dns.AlidnsDomainArgs{
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alidns domain can be imported using the id or domain name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/alidnsDomain:AlidnsDomain example aliyun.com
/// ```
class AlidnsDomain extends pulumi.CustomResource {
  /// A list of the dns server name.
  late final pulumi.Output<List<String>> dnsServers;
  /// The domain ID.
  late final pulumi.Output<String> domainId;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters(domain name subject, excluding suffix), must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> domainName;
  /// Id of the group in which the domain will add. If not supplied, then use default group.
  late final pulumi.Output<String?> groupId;
  /// Domain name group name.
  late final pulumi.Output<String> groupName;
  /// User language.
  late final pulumi.Output<String?> lang;
  /// Only return punycode codes for Chinese domain names.
  late final pulumi.Output<String> punyCode;
  /// Remarks information for your domain name.
  late final pulumi.Output<String?> remark;
  /// The Id of resource group which the dns domain belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be [1, 20] characters in length. It can contain A-Z, a-z, numbers, underscores (_), and hyphens (-). It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be [1, 20] characters in length. It can contain A-Z, a-z, numbers, underscores (_), and hyphens (-). It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AlidnsDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlidnsDomain]. {@macro pulumi_dns_alidns_domain_alidns_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlidnsDomain(
    String name, {
    AlidnsDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/alidnsDomain:AlidnsDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dnsServers = registerOutput<List<String>>('dnsServers');
    this.domainId = registerOutput<String>('domainId');
    this.domainName = registerOutput<String>('domainName');
    this.groupId = registerOutput<String?>('groupId');
    this.groupName = registerOutput<String>('groupName');
    this.lang = registerOutput<String?>('lang');
    this.punyCode = registerOutput<String>('punyCode');
    this.remark = registerOutput<String?>('remark');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
