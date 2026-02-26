import 'package:pulumi/pulumi.dart';
import '../domain_admin_contact/domain_admin_contact.dart';
import '../domain_billing_contact/domain_billing_contact.dart';
import '../domain_name_server/domain_name_server.dart';
import '../domain_registrant_contact/domain_registrant_contact.dart';
import '../domain_tech_contact/domain_tech_contact.dart';
import '../domain_timeouts/domain_timeouts2.dart';
import 'domain_args8.dart';

/// Provides a resource to manage a domain. This resource registers, renews and deregisters a domain name. If a domain name's lifecycle is managed outside of Terraform use the <span pulumi-lang-nodejs="`aws.route53domains.RegisteredDomain`" pulumi-lang-dotnet="`aws.route53domains.RegisteredDomain`" pulumi-lang-go="`route53domains.RegisteredDomain`" pulumi-lang-python="`route53domains.RegisteredDomain`" pulumi-lang-yaml="`aws.route53domains.RegisteredDomain`" pulumi-lang-java="`aws.route53domains.RegisteredDomain`">`aws.route53domains.RegisteredDomain`</span> resource instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53domains.Domain("example", {
/// domainName: "example.com",
/// autoRenew: false,
/// adminContact: {
/// addressLine1: "101 Main Street",
/// city: "San Francisco",
/// contactType: "COMPANY",
/// countryCode: "US",
/// email: "pulumi-acctest@example.com",
/// fax: "+1.4155551234",
/// firstName: "Terraform",
/// lastName: "Team",
/// organizationName: "HashiCorp",
/// phoneNumber: "+1.4155551234",
/// state: "CA",
/// zipCode: "94105",
/// },
/// registrantContact: {
/// addressLine1: "101 Main Street",
/// city: "San Francisco",
/// contactType: "COMPANY",
/// countryCode: "US",
/// email: "pulumi-acctest@example.com",
/// fax: "+1.4155551234",
/// firstName: "Terraform",
/// lastName: "Team",
/// organizationName: "HashiCorp",
/// phoneNumber: "+1.4155551234",
/// state: "CA",
/// zipCode: "94105",
/// },
/// techContact: {
/// addressLine1: "101 Main Street",
/// city: "San Francisco",
/// contactType: "COMPANY",
/// countryCode: "US",
/// email: "pulumi-acctest@example.com",
/// fax: "+1.4155551234",
/// firstName: "Terraform",
/// lastName: "Team",
/// organizationName: "HashiCorp",
/// phoneNumber: "+1.4155551234",
/// state: "CA",
/// zipCode: "94105",
/// },
/// tags: {
/// Environment: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53domains.Domain("example",
/// domain_name="example.com",
/// auto_renew=False,
/// admin_contact={
/// "address_line1": "101 Main Street",
/// "city": "San Francisco",
/// "contact_type": "COMPANY",
/// "country_code": "US",
/// "email": "pulumi-acctest@example.com",
/// "fax": "+1.4155551234",
/// "first_name": "Terraform",
/// "last_name": "Team",
/// "organization_name": "HashiCorp",
/// "phone_number": "+1.4155551234",
/// "state": "CA",
/// "zip_code": "94105",
/// },
/// registrant_contact={
/// "address_line1": "101 Main Street",
/// "city": "San Francisco",
/// "contact_type": "COMPANY",
/// "country_code": "US",
/// "email": "pulumi-acctest@example.com",
/// "fax": "+1.4155551234",
/// "first_name": "Terraform",
/// "last_name": "Team",
/// "organization_name": "HashiCorp",
/// "phone_number": "+1.4155551234",
/// "state": "CA",
/// "zip_code": "94105",
/// },
/// tech_contact={
/// "address_line1": "101 Main Street",
/// "city": "San Francisco",
/// "contact_type": "COMPANY",
/// "country_code": "US",
/// "email": "pulumi-acctest@example.com",
/// "fax": "+1.4155551234",
/// "first_name": "Terraform",
/// "last_name": "Team",
/// "organization_name": "HashiCorp",
/// "phone_number": "+1.4155551234",
/// "state": "CA",
/// "zip_code": "94105",
/// },
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
/// var example = new Aws.Route53Domains.Domain("example", new()
/// {
/// DomainName = "example.com",
/// AutoRenew = false,
/// AdminContact = new Aws.Route53Domains.Inputs.DomainAdminContactArgs
/// {
/// AddressLine1 = "101 Main Street",
/// City = "San Francisco",
/// ContactType = "COMPANY",
/// CountryCode = "US",
/// Email = "pulumi-acctest@example.com",
/// Fax = "+1.4155551234",
/// FirstName = "Terraform",
/// LastName = "Team",
/// OrganizationName = "HashiCorp",
/// PhoneNumber = "+1.4155551234",
/// State = "CA",
/// ZipCode = "94105",
/// },
/// RegistrantContact = new Aws.Route53Domains.Inputs.DomainRegistrantContactArgs
/// {
/// AddressLine1 = "101 Main Street",
/// City = "San Francisco",
/// ContactType = "COMPANY",
/// CountryCode = "US",
/// Email = "pulumi-acctest@example.com",
/// Fax = "+1.4155551234",
/// FirstName = "Terraform",
/// LastName = "Team",
/// OrganizationName = "HashiCorp",
/// PhoneNumber = "+1.4155551234",
/// State = "CA",
/// ZipCode = "94105",
/// },
/// TechContact = new Aws.Route53Domains.Inputs.DomainTechContactArgs
/// {
/// AddressLine1 = "101 Main Street",
/// City = "San Francisco",
/// ContactType = "COMPANY",
/// CountryCode = "US",
/// Email = "pulumi-acctest@example.com",
/// Fax = "+1.4155551234",
/// FirstName = "Terraform",
/// LastName = "Team",
/// OrganizationName = "HashiCorp",
/// PhoneNumber = "+1.4155551234",
/// State = "CA",
/// ZipCode = "94105",
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
/// _, err := route53domains.NewDomain(ctx, "example", &route53domains.DomainArgs{
/// DomainName: pulumi.String("example.com"),
/// AutoRenew:  pulumi.Bool(false),
/// AdminContact: &route53domains.DomainAdminContactArgs{
/// AddressLine1:     pulumi.String("101 Main Street"),
/// City:             pulumi.String("San Francisco"),
/// ContactType:      pulumi.String("COMPANY"),
/// CountryCode:      pulumi.String("US"),
/// Email:            pulumi.String("pulumi-acctest@example.com"),
/// Fax:              pulumi.String("+1.4155551234"),
/// FirstName:        pulumi.String("Terraform"),
/// LastName:         pulumi.String("Team"),
/// OrganizationName: pulumi.String("HashiCorp"),
/// PhoneNumber:      pulumi.String("+1.4155551234"),
/// State:            pulumi.String("CA"),
/// ZipCode:          pulumi.String("94105"),
/// },
/// RegistrantContact: &route53domains.DomainRegistrantContactArgs{
/// AddressLine1:     pulumi.String("101 Main Street"),
/// City:             pulumi.String("San Francisco"),
/// ContactType:      pulumi.String("COMPANY"),
/// CountryCode:      pulumi.String("US"),
/// Email:            pulumi.String("pulumi-acctest@example.com"),
/// Fax:              pulumi.String("+1.4155551234"),
/// FirstName:        pulumi.String("Terraform"),
/// LastName:         pulumi.String("Team"),
/// OrganizationName: pulumi.String("HashiCorp"),
/// PhoneNumber:      pulumi.String("+1.4155551234"),
/// State:            pulumi.String("CA"),
/// ZipCode:          pulumi.String("94105"),
/// },
/// TechContact: &route53domains.DomainTechContactArgs{
/// AddressLine1:     pulumi.String("101 Main Street"),
/// City:             pulumi.String("San Francisco"),
/// ContactType:      pulumi.String("COMPANY"),
/// CountryCode:      pulumi.String("US"),
/// Email:            pulumi.String("pulumi-acctest@example.com"),
/// Fax:              pulumi.String("+1.4155551234"),
/// FirstName:        pulumi.String("Terraform"),
/// LastName:         pulumi.String("Team"),
/// OrganizationName: pulumi.String("HashiCorp"),
/// PhoneNumber:      pulumi.String("+1.4155551234"),
/// State:            pulumi.String("CA"),
/// ZipCode:          pulumi.String("94105"),
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
/// import com.pulumi.aws.route53domains.Domain;
/// import com.pulumi.aws.route53domains.DomainArgs;
/// import com.pulumi.aws.route53domains.inputs.DomainAdminContactArgs;
/// import com.pulumi.aws.route53domains.inputs.DomainRegistrantContactArgs;
/// import com.pulumi.aws.route53domains.inputs.DomainTechContactArgs;
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
/// var example = new Domain("example", DomainArgs.builder()
/// .domainName("example.com")
/// .autoRenew(false)
/// .adminContact(DomainAdminContactArgs.builder()
/// .addressLine1("101 Main Street")
/// .city("San Francisco")
/// .contactType("COMPANY")
/// .countryCode("US")
/// .email("pulumi-acctest@example.com")
/// .fax("+1.4155551234")
/// .firstName("Terraform")
/// .lastName("Team")
/// .organizationName("HashiCorp")
/// .phoneNumber("+1.4155551234")
/// .state("CA")
/// .zipCode("94105")
/// .build())
/// .registrantContact(DomainRegistrantContactArgs.builder()
/// .addressLine1("101 Main Street")
/// .city("San Francisco")
/// .contactType("COMPANY")
/// .countryCode("US")
/// .email("pulumi-acctest@example.com")
/// .fax("+1.4155551234")
/// .firstName("Terraform")
/// .lastName("Team")
/// .organizationName("HashiCorp")
/// .phoneNumber("+1.4155551234")
/// .state("CA")
/// .zipCode("94105")
/// .build())
/// .techContact(DomainTechContactArgs.builder()
/// .addressLine1("101 Main Street")
/// .city("San Francisco")
/// .contactType("COMPANY")
/// .countryCode("US")
/// .email("pulumi-acctest@example.com")
/// .fax("+1.4155551234")
/// .firstName("Terraform")
/// .lastName("Team")
/// .organizationName("HashiCorp")
/// .phoneNumber("+1.4155551234")
/// .state("CA")
/// .zipCode("94105")
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
/// type: aws:route53domains:Domain
/// properties:
/// domainName: example.com
/// autoRenew: false
/// adminContact:
/// addressLine1: 101 Main Street
/// city: San Francisco
/// contactType: COMPANY
/// countryCode: US
/// email: pulumi-acctest@example.com
/// fax: '+1.4155551234'
/// firstName: Terraform
/// lastName: Team
/// organizationName: HashiCorp
/// phoneNumber: '+1.4155551234'
/// state: CA
/// zipCode: '94105'
/// registrantContact:
/// addressLine1: 101 Main Street
/// city: San Francisco
/// contactType: COMPANY
/// countryCode: US
/// email: pulumi-acctest@example.com
/// fax: '+1.4155551234'
/// firstName: Terraform
/// lastName: Team
/// organizationName: HashiCorp
/// phoneNumber: '+1.4155551234'
/// state: CA
/// zipCode: '94105'
/// techContact:
/// addressLine1: 101 Main Street
/// city: San Francisco
/// contactType: COMPANY
/// countryCode: US
/// email: pulumi-acctest@example.com
/// fax: '+1.4155551234'
/// firstName: Terraform
/// lastName: Team
/// organizationName: HashiCorp
/// phoneNumber: '+1.4155551234'
/// state: CA
/// zipCode: '94105'
/// tags:
/// Environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import domains using the <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/domain:Domain example example.com
/// ```
class Domain8 extends CustomResource {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  late final Output<String> abuseContactEmail;

  /// Phone number for reporting abuse.
  late final Output<String> abuseContactPhone;

  /// Details about the domain administrative contact. See Contact Blocks for more details.
  late final Output<DomainAdminContact> adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  late final Output<List<DomainBillingContact>> billingContacts;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> billingPrivacy;

  /// The date when the domain was created as found in the response to a WHOIS query.
  late final Output<String> creationDate;

  /// The name of the domain.
  late final Output<String> domainName;

  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  late final Output<int> durationInYears;

  /// The date when the registration for the domain is set to expire.
  late final Output<String> expirationDate;

  /// The ID of the public Route 53 hosted zone created for the domain. This hosted zone is deleted when the domain is deregistered.
  late final Output<String> hostedZoneId;

  /// The list of nameservers for the domain. See <span pulumi-lang-nodejs="`nameServer`" pulumi-lang-dotnet="`NameServer`" pulumi-lang-go="`nameServer`" pulumi-lang-python="`name_server`" pulumi-lang-yaml="`nameServer`" pulumi-lang-java="`nameServer`">`name_server`</span> Blocks for more details.
  late final Output<List<DomainNameServer>> nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  late final Output<DomainRegistrantContact> registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> registrantPrivacy;

  /// Name of the registrar of the domain as identified in the registry.
  late final Output<String> registrarName;

  /// Web address of the registrar.
  late final Output<String> registrarUrl;

  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  late final Output<List<String>> statusLists;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  late final Output<DomainTechContact> techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> techPrivacy;
  late final Output<DomainTimeouts2?> timeouts;

  /// Whether the domain is locked for transfer. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// > **NOTE:** You must specify the same privacy setting for <span pulumi-lang-nodejs="`adminPrivacy`" pulumi-lang-dotnet="`AdminPrivacy`" pulumi-lang-go="`adminPrivacy`" pulumi-lang-python="`admin_privacy`" pulumi-lang-yaml="`adminPrivacy`" pulumi-lang-java="`adminPrivacy`">`admin_privacy`</span>, <span pulumi-lang-nodejs="`registrantPrivacy`" pulumi-lang-dotnet="`RegistrantPrivacy`" pulumi-lang-go="`registrantPrivacy`" pulumi-lang-python="`registrant_privacy`" pulumi-lang-yaml="`registrantPrivacy`" pulumi-lang-java="`registrantPrivacy`">`registrant_privacy`</span> and <span pulumi-lang-nodejs="`techPrivacy`" pulumi-lang-dotnet="`TechPrivacy`" pulumi-lang-go="`techPrivacy`" pulumi-lang-python="`tech_privacy`" pulumi-lang-yaml="`techPrivacy`" pulumi-lang-java="`techPrivacy`">`tech_privacy`</span>.
  late final Output<bool> transferLock;

  /// The last updated date of the domain as found in the response to a WHOIS query.
  late final Output<String> updatedDate;

  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  late final Output<String> whoisServer;

  Domain8(
    String name, {
    DomainArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/domain:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.abuseContactEmail = Output.createUnknown<String>();
    this.abuseContactPhone = Output.createUnknown<String>();
    this.adminContact = Output.createUnknown<DomainAdminContact>();
    this.adminPrivacy = Output.createUnknown<bool>();
    this.autoRenew = Output.createUnknown<bool>();
    this.billingContacts = Output.createUnknown<List<DomainBillingContact>>();
    this.billingPrivacy = Output.createUnknown<bool>();
    this.creationDate = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String>();
    this.durationInYears = Output.createUnknown<int>();
    this.expirationDate = Output.createUnknown<String>();
    this.hostedZoneId = Output.createUnknown<String>();
    this.nameServers = Output.createUnknown<List<DomainNameServer>>();
    this.registrantContact = Output.createUnknown<DomainRegistrantContact>();
    this.registrantPrivacy = Output.createUnknown<bool>();
    this.registrarName = Output.createUnknown<String>();
    this.registrarUrl = Output.createUnknown<String>();
    this.statusLists = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.techContact = Output.createUnknown<DomainTechContact>();
    this.techPrivacy = Output.createUnknown<bool>();
    this.timeouts = Output.createUnknown<DomainTimeouts2?>();
    this.transferLock = Output.createUnknown<bool>();
    this.updatedDate = Output.createUnknown<String>();
    this.whoisServer = Output.createUnknown<String>();
  }
}
