import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_state.dart';

/// &gt; **DEPRECATED:** This resource has been renamed to alicloud.dns.AlidnsDomain from version 1.95.0.
///
/// Provides a DNS resource.
///
/// &gt; **NOTE:** The domain name which you want to add must be already registered and had not added by another account. Every domain name can only exist in a unique group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Add a new Domain.
/// const dns = new alicloud.dns.Domain("dns", {
///     name: "starmove.com",
///     groupId: "85ab8713-4a30-4de4-9d20-155ff830f651",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Add a new Domain.
/// dns = alicloud.dns.Domain("dns",
///     name="starmove.com",
///     group_id="85ab8713-4a30-4de4-9d20-155ff830f651")
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
///     var dns = new AliCloud.Dns.Domain("dns", new()
///     {
///         Name = "starmove.com",
///         GroupId = "85ab8713-4a30-4de4-9d20-155ff830f651",
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
/// 		_, err := dns.NewDomain(ctx, "dns", &dns.DomainArgs{
/// 			Name:    pulumi.String("starmove.com"),
/// 			GroupId: pulumi.String("85ab8713-4a30-4de4-9d20-155ff830f651"),
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
/// import com.pulumi.alicloud.dns.Domain;
/// import com.pulumi.alicloud.dns.DomainArgs;
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
///         var dns = new Domain("dns", DomainArgs.builder()
///             .name("starmove.com")
///             .groupId("85ab8713-4a30-4de4-9d20-155ff830f651")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Add a new Domain.
///   dns:
///     type: alicloud:dns:Domain
///     properties:
///       name: starmove.com
///       groupId: 85ab8713-4a30-4de4-9d20-155ff830f651
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DNS can be imported using the id or domain name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/domain:Domain example "aliyun.com"
/// ```
class Domain extends pulumi.CustomResource {
  /// A list of the dns server name.
  late final pulumi.Output<List<String>> dnsServers;
  /// The domain ID.
  late final pulumi.Output<String> domainId;
  /// Id of the group in which the domain will add. If not supplied, then use default group.
  late final pulumi.Output<String?> groupId;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> name;
  /// The Id of resource group which the dns belongs.
  late final pulumi.Output<String?> resourceGroupId;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_dns_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnsServers = registerOutput<List<String>>('dnsServers');
    domainId = registerOutput<String>('domainId');
    groupId = registerOutput<String?>('groupId');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
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
          'alicloud:dns/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnsServers = registerOutput<List<String>>('dnsServers');
    domainId = registerOutput<String>('domainId');
    groupId = registerOutput<String?>('groupId');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
  }
}
