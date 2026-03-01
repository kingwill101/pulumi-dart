import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_domain_args.dart';
import 'dns_domain_state.dart';

/// Provides a DNS domain resource.
///
/// > **DEPRECATED:** This resource has been renamed to alicloud.dns.AlidnsDomain from version 1.95.0.
///
/// > **NOTE:** The domain name which you want to add must be already registered and had not added by another account. Every domain name can only exist in a unique group.
///
/// > **NOTE:** Available in v1.81.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Add a new Domain.
/// const dns = new alicloud.dns.DnsDomain("dns", {
///     domainName: "starmove.com",
///     groupId: "85ab8713-4a30-4de4-9d20-155ff830****",
///     tags: {
///         Created: "Terraform",
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Add a new Domain.
/// dns = alicloud.dns.DnsDomain("dns",
///     domain_name="starmove.com",
///     group_id="85ab8713-4a30-4de4-9d20-155ff830****",
///     tags={
///         "Created": "Terraform",
///         "Environment": "test",
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
///     // Add a new Domain.
///     var dns = new AliCloud.Dns.DnsDomain("dns", new()
///     {
///         DomainName = "starmove.com",
///         GroupId = "85ab8713-4a30-4de4-9d20-155ff830****",
///         Tags =
///         {
///             { "Created", "Terraform" },
///             { "Environment", "test" },
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
/// 		// Add a new Domain.
/// 		_, err := dns.NewDnsDomain(ctx, "dns", &dns.DnsDomainArgs{
/// 			DomainName: pulumi.String("starmove.com"),
/// 			GroupId:    pulumi.String("85ab8713-4a30-4de4-9d20-155ff830****"),
/// 			Tags: pulumi.StringMap{
/// 				"Created":     pulumi.String("Terraform"),
/// 				"Environment": pulumi.String("test"),
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
/// import com.pulumi.alicloud.dns.DnsDomain;
/// import com.pulumi.alicloud.dns.DnsDomainArgs;
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
///         // Add a new Domain.
///         var dns = new DnsDomain("dns", DnsDomainArgs.builder()
///             .domainName("starmove.com")
///             .groupId("85ab8713-4a30-4de4-9d20-155ff830****")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "Terraform"),
///                 Map.entry("Environment", "test")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Add a new Domain.
///   dns:
///     type: alicloud:dns:DnsDomain
///     properties:
///       domainName: starmove.com
///       groupId: 85ab8713-4a30-4de4-9d20-155ff830****
///       tags:
///         Created: Terraform
///         Environment: test
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DNS domain can be imported using the id or domain name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/dnsDomain:DnsDomain example aliyun.com
/// ```
class DnsDomain extends pulumi.CustomResource {
  late final pulumi.Output<List<String>> dnsServers;
  /// The domain ID.
  late final pulumi.Output<String> domainId;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters(domain name subject, excluding suffix), must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> domainName;
  /// Id of the group in which the domain will add. If not supplied, then use default group.
  late final pulumi.Output<String?> groupId;
  late final pulumi.Output<String> groupName;
  /// User language.
  late final pulumi.Output<String?> lang;
  late final pulumi.Output<String> punyCode;
  /// Remarks information for your domain name.
  late final pulumi.Output<String?> remark;
  /// The Id of resource group which the dns domain belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DnsDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsDomain]. {@macro pulumi_dns_dns_domain_dns_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsDomain(
    String name, {
    DnsDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/dnsDomain:DnsDomain',
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

  /// Gets an existing [DnsDomain] resource's state with the given [name] and [id].
  static DnsDomain get(
    String name,
    pulumi.Input<String> id, {
    DnsDomainState? state,
  }) {
    return DnsDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DnsDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/dnsDomain:DnsDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
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
