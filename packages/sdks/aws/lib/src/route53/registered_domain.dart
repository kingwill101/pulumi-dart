import 'package:pulumi/pulumi.dart' as pulumi;
import 'registered_domain_admin_contact.dart';
import 'registered_domain_args.dart';
import 'registered_domain_billing_contact.dart';
import 'registered_domain_name_server.dart';
import 'registered_domain_registrant_contact.dart';
import 'registered_domain_state.dart';
import 'registered_domain_tech_contact.dart';

/// Provides a resource to manage a domain that has been [registered](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) and associated with the current AWS account. To register, renew and deregister a domain use the `aws.route53domains.Domain` resource instead.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The `aws.route53domains.RegisteredDomain` resource behaves differently from normal resources in that if a domain has been registered, the provider does not _register_ this domain, but instead "adopts" it into management. A destroy does not delete the domain but does remove the resource from state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53domains.RegisteredDomain("example", {
///     domainName: "example.com",
///     nameServers: [
///         {
///             name: "ns-195.awsdns-24.com",
///         },
///         {
///             name: "ns-874.awsdns-45.net",
///         },
///     ],
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53domains.RegisteredDomain("example",
///     domain_name="example.com",
///     name_servers=[
///         {
///             "name": "ns-195.awsdns-24.com",
///         },
///         {
///             "name": "ns-874.awsdns-45.net",
///         },
///     ],
///     tags={
///         "Environment": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53Domains.RegisteredDomain("example", new()
///     {
///         DomainName = "example.com",
///         NameServers = new[]
///         {
///             new Aws.Route53Domains.Inputs.RegisteredDomainNameServerArgs
///             {
///                 Name = "ns-195.awsdns-24.com",
///             },
///             new Aws.Route53Domains.Inputs.RegisteredDomainNameServerArgs
///             {
///                 Name = "ns-874.awsdns-45.net",
///             },
///         },
///         Tags =
///         {
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53domains"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53domains.NewRegisteredDomain(ctx, "example", &route53domains.RegisteredDomainArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 			NameServers: route53domains.RegisteredDomainNameServerArray{
/// 				&route53domains.RegisteredDomainNameServerArgs{
/// 					Name: pulumi.String("ns-195.awsdns-24.com"),
/// 				},
/// 				&route53domains.RegisteredDomainNameServerArgs{
/// 					Name: pulumi.String("ns-874.awsdns-45.net"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
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
/// import com.pulumi.aws.route53domains.RegisteredDomain;
/// import com.pulumi.aws.route53domains.RegisteredDomainArgs;
/// import com.pulumi.aws.route53domains.inputs.RegisteredDomainNameServerArgs;
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
///         var example = new RegisteredDomain("example", RegisteredDomainArgs.builder()
///             .domainName("example.com")
///             .nameServers(
///                 RegisteredDomainNameServerArgs.builder()
///                     .name("ns-195.awsdns-24.com")
///                     .build(),
///                 RegisteredDomainNameServerArgs.builder()
///                     .name("ns-874.awsdns-45.net")
///                     .build())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53domains:RegisteredDomain
///     properties:
///       domainName: example.com
///       nameServers:
///         - name: ns-195.awsdns-24.com
///         - name: ns-874.awsdns-45.net
///       tags:
///         Environment: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import domains using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/registeredDomain:RegisteredDomain example example.com
/// ```
class RegisteredDomain extends pulumi.CustomResource {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  late final pulumi.Output<String> abuseContactEmail;
  /// Phone number for reporting abuse.
  late final pulumi.Output<String> abuseContactPhone;
  /// Details about the domain administrative contact. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainAdminContact> adminContact;
  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> adminPrivacy;
  /// Whether the domain registration is set to renew automatically. Default: `true`.
  late final pulumi.Output<bool?> autoRenew;
  /// Details about the domain billing contact. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainBillingContact> billingContact;
  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> billingPrivacy;
  /// The date when the domain was created as found in the response to a WHOIS query.
  late final pulumi.Output<String> creationDate;
  /// The name of the registered domain.
  late final pulumi.Output<String> domainName;
  /// The date when the registration for the domain is set to expire.
  late final pulumi.Output<String> expirationDate;
  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  late final pulumi.Output<List<RegisteredDomainNameServer>> nameServers;
  /// Details about the domain registrant. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainRegistrantContact> registrantContact;
  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> registrantPrivacy;
  /// Name of the registrar of the domain as identified in the registry.
  late final pulumi.Output<String> registrarName;
  /// Web address of the registrar.
  late final pulumi.Output<String> registrarUrl;
  /// Reseller of the domain.
  late final pulumi.Output<String> reseller;
  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  late final pulumi.Output<List<String>> statusLists;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Details about the domain technical contact. See Contact Blocks for more details.
  late final pulumi.Output<RegisteredDomainTechContact> techContact;
  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool?> techPrivacy;
  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  late final pulumi.Output<bool?> transferLock;
  /// The last updated date of the domain as found in the response to a WHOIS query.
  late final pulumi.Output<String> updatedDate;
  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  late final pulumi.Output<String> whoisServer;

  /// Creates a new [RegisteredDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegisteredDomain]. {@macro pulumi_route53_domains_registered_domain_registered_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegisteredDomain(
    String name, {
    RegisteredDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/registeredDomain:RegisteredDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abuseContactEmail = registerOutput<String>('abuseContactEmail');
    this.abuseContactPhone = registerOutput<String>('abuseContactPhone');
    this.adminContact = registerOutput<RegisteredDomainAdminContact>('adminContact');
    this.adminPrivacy = registerOutput<bool?>('adminPrivacy');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.billingContact = registerOutput<RegisteredDomainBillingContact>('billingContact');
    this.billingPrivacy = registerOutput<bool?>('billingPrivacy');
    this.creationDate = registerOutput<String>('creationDate');
    this.domainName = registerOutput<String>('domainName');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.nameServers = registerOutput<List<RegisteredDomainNameServer>>('nameServers');
    this.registrantContact = registerOutput<RegisteredDomainRegistrantContact>('registrantContact');
    this.registrantPrivacy = registerOutput<bool?>('registrantPrivacy');
    this.registrarName = registerOutput<String>('registrarName');
    this.registrarUrl = registerOutput<String>('registrarUrl');
    this.reseller = registerOutput<String>('reseller');
    this.statusLists = registerOutput<List<String>>('statusLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.techContact = registerOutput<RegisteredDomainTechContact>('techContact');
    this.techPrivacy = registerOutput<bool?>('techPrivacy');
    this.transferLock = registerOutput<bool?>('transferLock');
    this.updatedDate = registerOutput<String>('updatedDate');
    this.whoisServer = registerOutput<String>('whoisServer');
  }

  /// Gets an existing [RegisteredDomain] resource's state with the given [name] and [id].
  static RegisteredDomain get(
    String name,
    pulumi.Input<String> id, {
    RegisteredDomainState? state,
  }) {
    return RegisteredDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegisteredDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/registeredDomain:RegisteredDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abuseContactEmail = registerOutput<String>('abuseContactEmail');
    this.abuseContactPhone = registerOutput<String>('abuseContactPhone');
    this.adminContact = registerOutput<RegisteredDomainAdminContact>('adminContact');
    this.adminPrivacy = registerOutput<bool?>('adminPrivacy');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.billingContact = registerOutput<RegisteredDomainBillingContact>('billingContact');
    this.billingPrivacy = registerOutput<bool?>('billingPrivacy');
    this.creationDate = registerOutput<String>('creationDate');
    this.domainName = registerOutput<String>('domainName');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.nameServers = registerOutput<List<RegisteredDomainNameServer>>('nameServers');
    this.registrantContact = registerOutput<RegisteredDomainRegistrantContact>('registrantContact');
    this.registrantPrivacy = registerOutput<bool?>('registrantPrivacy');
    this.registrarName = registerOutput<String>('registrarName');
    this.registrarUrl = registerOutput<String>('registrarUrl');
    this.reseller = registerOutput<String>('reseller');
    this.statusLists = registerOutput<List<String>>('statusLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.techContact = registerOutput<RegisteredDomainTechContact>('techContact');
    this.techPrivacy = registerOutput<bool?>('techPrivacy');
    this.transferLock = registerOutput<bool?>('transferLock');
    this.updatedDate = registerOutput<String>('updatedDate');
    this.whoisServer = registerOutput<String>('whoisServer');
  }
}
