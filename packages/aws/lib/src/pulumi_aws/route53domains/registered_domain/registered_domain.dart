import 'package:pulumi/pulumi.dart';
import '../registered_domain_admin_contact/registered_domain_admin_contact.dart';
import '../registered_domain_billing_contact/registered_domain_billing_contact.dart';
import '../registered_domain_name_server/registered_domain_name_server.dart';
import '../registered_domain_registrant_contact/registered_domain_registrant_contact.dart';
import '../registered_domain_tech_contact/registered_domain_tech_contact.dart';
import 'registered_domain_args.dart';

/// Provides a resource to manage a domain that has been [registered](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) and associated with the current AWS account. To register, renew and deregister a domain use the <span pulumi-lang-nodejs="`aws.route53domains.Domain`" pulumi-lang-dotnet="`aws.route53domains.Domain`" pulumi-lang-go="`route53domains.Domain`" pulumi-lang-python="`route53domains.Domain`" pulumi-lang-yaml="`aws.route53domains.Domain`" pulumi-lang-java="`aws.route53domains.Domain`">`aws.route53domains.Domain`</span> resource instead.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The <span pulumi-lang-nodejs="`aws.route53domains.RegisteredDomain`" pulumi-lang-dotnet="`aws.route53domains.RegisteredDomain`" pulumi-lang-go="`route53domains.RegisteredDomain`" pulumi-lang-python="`route53domains.RegisteredDomain`" pulumi-lang-yaml="`aws.route53domains.RegisteredDomain`" pulumi-lang-java="`aws.route53domains.RegisteredDomain`">`aws.route53domains.RegisteredDomain`</span> resource behaves differently from normal resources in that if a domain has been registered, the provider does not _register_ this domain, but instead "adopts" it into management. A destroy does not delete the domain but does remove the resource from state.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53domains.RegisteredDomain("example", {
/// domainName: "example.com",
/// nameServers: [
/// {
/// name: "ns-195.awsdns-24.com",
/// },
/// {
/// name: "ns-874.awsdns-45.net",
/// },
/// ],
/// tags: {
/// Environment: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53domains.RegisteredDomain("example",
/// domain_name="example.com",
/// name_servers=[
/// {
/// "name": "ns-195.awsdns-24.com",
/// },
/// {
/// "name": "ns-874.awsdns-45.net",
/// },
/// ],
/// tags={
/// "Environment": "test",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53Domains.RegisteredDomain("example", new()
/// {
/// DomainName = "example.com",
/// NameServers = new[]
/// {
/// new Aws.Route53Domains.Inputs.RegisteredDomainNameServerArgs
/// {
/// Name = "ns-195.awsdns-24.com",
/// },
/// new Aws.Route53Domains.Inputs.RegisteredDomainNameServerArgs
/// {
/// Name = "ns-874.awsdns-45.net",
/// },
/// },
/// Tags =
/// {
/// { "Environment", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53domains"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53domains.NewRegisteredDomain(ctx, "example", &route53domains.RegisteredDomainArgs{
/// DomainName: pulumi.String("example.com"),
/// NameServers: route53domains.RegisteredDomainNameServerArray{
/// &route53domains.RegisteredDomainNameServerArgs{
/// Name: pulumi.String("ns-195.awsdns-24.com"),
/// },
/// &route53domains.RegisteredDomainNameServerArgs{
/// Name: pulumi.String("ns-874.awsdns-45.net"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("test"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new RegisteredDomain("example", RegisteredDomainArgs.builder()
/// .domainName("example.com")
/// .nameServers(
/// RegisteredDomainNameServerArgs.builder()
/// .name("ns-195.awsdns-24.com")
/// .build(),
/// RegisteredDomainNameServerArgs.builder()
/// .name("ns-874.awsdns-45.net")
/// .build())
/// .tags(Map.of("Environment", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53domains:RegisteredDomain
/// properties:
/// domainName: example.com
/// nameServers:
/// - name: ns-195.awsdns-24.com
/// - name: ns-874.awsdns-45.net
/// tags:
/// Environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import domains using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/registeredDomain:RegisteredDomain example example.com
/// ```
class RegisteredDomain extends CustomResource {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  late final Output<String> abuseContactEmail;

  /// Phone number for reporting abuse.
  late final Output<String> abuseContactPhone;

  /// Details about the domain administrative contact. See Contact Blocks for more details.
  late final Output<RegisteredDomainAdminContact> adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  late final Output<RegisteredDomainBillingContact> billingContact;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> billingPrivacy;

  /// The date when the domain was created as found in the response to a WHOIS query.
  late final Output<String> creationDate;

  /// The name of the registered domain.
  late final Output<String> domainName;

  /// The date when the registration for the domain is set to expire.
  late final Output<String> expirationDate;

  /// The list of nameservers for the domain. See <span pulumi-lang-nodejs="`nameServer`" pulumi-lang-dotnet="`NameServer`" pulumi-lang-go="`nameServer`" pulumi-lang-python="`name_server`" pulumi-lang-yaml="`nameServer`" pulumi-lang-java="`nameServer`">`name_server`</span> Blocks for more details.
  late final Output<List<RegisteredDomainNameServer>> nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  late final Output<RegisteredDomainRegistrantContact> registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> registrantPrivacy;

  /// Name of the registrar of the domain as identified in the registry.
  late final Output<String> registrarName;

  /// Web address of the registrar.
  late final Output<String> registrarUrl;

  /// Reseller of the domain.
  late final Output<String> reseller;

  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  late final Output<List<String>> statusLists;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  late final Output<RegisteredDomainTechContact> techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> techPrivacy;

  /// Whether the domain is locked for transfer. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// > **NOTE:** You must specify the same privacy setting for <span pulumi-lang-nodejs="`adminPrivacy`" pulumi-lang-dotnet="`AdminPrivacy`" pulumi-lang-go="`adminPrivacy`" pulumi-lang-python="`admin_privacy`" pulumi-lang-yaml="`adminPrivacy`" pulumi-lang-java="`adminPrivacy`">`admin_privacy`</span>, <span pulumi-lang-nodejs="`registrantPrivacy`" pulumi-lang-dotnet="`RegistrantPrivacy`" pulumi-lang-go="`registrantPrivacy`" pulumi-lang-python="`registrant_privacy`" pulumi-lang-yaml="`registrantPrivacy`" pulumi-lang-java="`registrantPrivacy`">`registrant_privacy`</span> and <span pulumi-lang-nodejs="`techPrivacy`" pulumi-lang-dotnet="`TechPrivacy`" pulumi-lang-go="`techPrivacy`" pulumi-lang-python="`tech_privacy`" pulumi-lang-yaml="`techPrivacy`" pulumi-lang-java="`techPrivacy`">`tech_privacy`</span>.
  late final Output<bool?> transferLock;

  /// The last updated date of the domain as found in the response to a WHOIS query.
  late final Output<String> updatedDate;

  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  late final Output<String> whoisServer;

  RegisteredDomain(
    String name, {
    RegisteredDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/registeredDomain:RegisteredDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.abuseContactEmail = registerOutput<String>('abuseContactEmail');
    this.abuseContactPhone = registerOutput<String>('abuseContactPhone');
    this.adminContact =
        registerOutput<RegisteredDomainAdminContact>('adminContact');
    this.adminPrivacy = registerOutput<bool?>('adminPrivacy');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.billingContact =
        registerOutput<RegisteredDomainBillingContact>('billingContact');
    this.billingPrivacy = registerOutput<bool?>('billingPrivacy');
    this.creationDate = registerOutput<String>('creationDate');
    this.domainName = registerOutput<String>('domainName');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.nameServers =
        registerOutput<List<RegisteredDomainNameServer>>('nameServers');
    this.registrantContact =
        registerOutput<RegisteredDomainRegistrantContact>('registrantContact');
    this.registrantPrivacy = registerOutput<bool?>('registrantPrivacy');
    this.registrarName = registerOutput<String>('registrarName');
    this.registrarUrl = registerOutput<String>('registrarUrl');
    this.reseller = registerOutput<String>('reseller');
    this.statusLists = registerOutput<List<String>>('statusLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.techContact =
        registerOutput<RegisteredDomainTechContact>('techContact');
    this.techPrivacy = registerOutput<bool?>('techPrivacy');
    this.transferLock = registerOutput<bool?>('transferLock');
    this.updatedDate = registerOutput<String>('updatedDate');
    this.whoisServer = registerOutput<String>('whoisServer');
  }
}
