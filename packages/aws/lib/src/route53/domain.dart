import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_admin_contact.dart';
import 'domain_args.dart';
import 'domain_billing_contact.dart';
import 'domain_name_server.dart';
import 'domain_registrant_contact.dart';
import 'domain_tech_contact.dart';
import 'domain_timeouts.dart';

/// Provides a resource to manage a domain. This resource registers, renews and deregisters a domain name. If a domain name's lifecycle is managed outside of Terraform use the `aws.route53domains.RegisteredDomain` resource instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53domains.Domain("example", {
///     domainName: "example.com",
///     autoRenew: false,
///     adminContact: {
///         addressLine1: "101 Main Street",
///         city: "San Francisco",
///         contactType: "COMPANY",
///         countryCode: "US",
///         email: "pulumi-acctest@example.com",
///         fax: "+1.4155551234",
///         firstName: "Terraform",
///         lastName: "Team",
///         organizationName: "HashiCorp",
///         phoneNumber: "+1.4155551234",
///         state: "CA",
///         zipCode: "94105",
///     },
///     registrantContact: {
///         addressLine1: "101 Main Street",
///         city: "San Francisco",
///         contactType: "COMPANY",
///         countryCode: "US",
///         email: "pulumi-acctest@example.com",
///         fax: "+1.4155551234",
///         firstName: "Terraform",
///         lastName: "Team",
///         organizationName: "HashiCorp",
///         phoneNumber: "+1.4155551234",
///         state: "CA",
///         zipCode: "94105",
///     },
///     techContact: {
///         addressLine1: "101 Main Street",
///         city: "San Francisco",
///         contactType: "COMPANY",
///         countryCode: "US",
///         email: "pulumi-acctest@example.com",
///         fax: "+1.4155551234",
///         firstName: "Terraform",
///         lastName: "Team",
///         organizationName: "HashiCorp",
///         phoneNumber: "+1.4155551234",
///         state: "CA",
///         zipCode: "94105",
///     },
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53domains.Domain("example",
///     domain_name="example.com",
///     auto_renew=False,
///     admin_contact={
///         "address_line1": "101 Main Street",
///         "city": "San Francisco",
///         "contact_type": "COMPANY",
///         "country_code": "US",
///         "email": "pulumi-acctest@example.com",
///         "fax": "+1.4155551234",
///         "first_name": "Terraform",
///         "last_name": "Team",
///         "organization_name": "HashiCorp",
///         "phone_number": "+1.4155551234",
///         "state": "CA",
///         "zip_code": "94105",
///     },
///     registrant_contact={
///         "address_line1": "101 Main Street",
///         "city": "San Francisco",
///         "contact_type": "COMPANY",
///         "country_code": "US",
///         "email": "pulumi-acctest@example.com",
///         "fax": "+1.4155551234",
///         "first_name": "Terraform",
///         "last_name": "Team",
///         "organization_name": "HashiCorp",
///         "phone_number": "+1.4155551234",
///         "state": "CA",
///         "zip_code": "94105",
///     },
///     tech_contact={
///         "address_line1": "101 Main Street",
///         "city": "San Francisco",
///         "contact_type": "COMPANY",
///         "country_code": "US",
///         "email": "pulumi-acctest@example.com",
///         "fax": "+1.4155551234",
///         "first_name": "Terraform",
///         "last_name": "Team",
///         "organization_name": "HashiCorp",
///         "phone_number": "+1.4155551234",
///         "state": "CA",
///         "zip_code": "94105",
///     },
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
///     var example = new Aws.Route53Domains.Domain("example", new()
///     {
///         DomainName = "example.com",
///         AutoRenew = false,
///         AdminContact = new Aws.Route53Domains.Inputs.DomainAdminContactArgs
///         {
///             AddressLine1 = "101 Main Street",
///             City = "San Francisco",
///             ContactType = "COMPANY",
///             CountryCode = "US",
///             Email = "pulumi-acctest@example.com",
///             Fax = "+1.4155551234",
///             FirstName = "Terraform",
///             LastName = "Team",
///             OrganizationName = "HashiCorp",
///             PhoneNumber = "+1.4155551234",
///             State = "CA",
///             ZipCode = "94105",
///         },
///         RegistrantContact = new Aws.Route53Domains.Inputs.DomainRegistrantContactArgs
///         {
///             AddressLine1 = "101 Main Street",
///             City = "San Francisco",
///             ContactType = "COMPANY",
///             CountryCode = "US",
///             Email = "pulumi-acctest@example.com",
///             Fax = "+1.4155551234",
///             FirstName = "Terraform",
///             LastName = "Team",
///             OrganizationName = "HashiCorp",
///             PhoneNumber = "+1.4155551234",
///             State = "CA",
///             ZipCode = "94105",
///         },
///         TechContact = new Aws.Route53Domains.Inputs.DomainTechContactArgs
///         {
///             AddressLine1 = "101 Main Street",
///             City = "San Francisco",
///             ContactType = "COMPANY",
///             CountryCode = "US",
///             Email = "pulumi-acctest@example.com",
///             Fax = "+1.4155551234",
///             FirstName = "Terraform",
///             LastName = "Team",
///             OrganizationName = "HashiCorp",
///             PhoneNumber = "+1.4155551234",
///             State = "CA",
///             ZipCode = "94105",
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
/// 		_, err := route53domains.NewDomain(ctx, "example", &route53domains.DomainArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 			AutoRenew:  pulumi.Bool(false),
/// 			AdminContact: &route53domains.DomainAdminContactArgs{
/// 				AddressLine1:     pulumi.String("101 Main Street"),
/// 				City:             pulumi.String("San Francisco"),
/// 				ContactType:      pulumi.String("COMPANY"),
/// 				CountryCode:      pulumi.String("US"),
/// 				Email:            pulumi.String("pulumi-acctest@example.com"),
/// 				Fax:              pulumi.String("+1.4155551234"),
/// 				FirstName:        pulumi.String("Terraform"),
/// 				LastName:         pulumi.String("Team"),
/// 				OrganizationName: pulumi.String("HashiCorp"),
/// 				PhoneNumber:      pulumi.String("+1.4155551234"),
/// 				State:            pulumi.String("CA"),
/// 				ZipCode:          pulumi.String("94105"),
/// 			},
/// 			RegistrantContact: &route53domains.DomainRegistrantContactArgs{
/// 				AddressLine1:     pulumi.String("101 Main Street"),
/// 				City:             pulumi.String("San Francisco"),
/// 				ContactType:      pulumi.String("COMPANY"),
/// 				CountryCode:      pulumi.String("US"),
/// 				Email:            pulumi.String("pulumi-acctest@example.com"),
/// 				Fax:              pulumi.String("+1.4155551234"),
/// 				FirstName:        pulumi.String("Terraform"),
/// 				LastName:         pulumi.String("Team"),
/// 				OrganizationName: pulumi.String("HashiCorp"),
/// 				PhoneNumber:      pulumi.String("+1.4155551234"),
/// 				State:            pulumi.String("CA"),
/// 				ZipCode:          pulumi.String("94105"),
/// 			},
/// 			TechContact: &route53domains.DomainTechContactArgs{
/// 				AddressLine1:     pulumi.String("101 Main Street"),
/// 				City:             pulumi.String("San Francisco"),
/// 				ContactType:      pulumi.String("COMPANY"),
/// 				CountryCode:      pulumi.String("US"),
/// 				Email:            pulumi.String("pulumi-acctest@example.com"),
/// 				Fax:              pulumi.String("+1.4155551234"),
/// 				FirstName:        pulumi.String("Terraform"),
/// 				LastName:         pulumi.String("Team"),
/// 				OrganizationName: pulumi.String("HashiCorp"),
/// 				PhoneNumber:      pulumi.String("+1.4155551234"),
/// 				State:            pulumi.String("CA"),
/// 				ZipCode:          pulumi.String("94105"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("example.com")
///             .autoRenew(false)
///             .adminContact(DomainAdminContactArgs.builder()
///                 .addressLine1("101 Main Street")
///                 .city("San Francisco")
///                 .contactType("COMPANY")
///                 .countryCode("US")
///                 .email("pulumi-acctest@example.com")
///                 .fax("+1.4155551234")
///                 .firstName("Terraform")
///                 .lastName("Team")
///                 .organizationName("HashiCorp")
///                 .phoneNumber("+1.4155551234")
///                 .state("CA")
///                 .zipCode("94105")
///                 .build())
///             .registrantContact(DomainRegistrantContactArgs.builder()
///                 .addressLine1("101 Main Street")
///                 .city("San Francisco")
///                 .contactType("COMPANY")
///                 .countryCode("US")
///                 .email("pulumi-acctest@example.com")
///                 .fax("+1.4155551234")
///                 .firstName("Terraform")
///                 .lastName("Team")
///                 .organizationName("HashiCorp")
///                 .phoneNumber("+1.4155551234")
///                 .state("CA")
///                 .zipCode("94105")
///                 .build())
///             .techContact(DomainTechContactArgs.builder()
///                 .addressLine1("101 Main Street")
///                 .city("San Francisco")
///                 .contactType("COMPANY")
///                 .countryCode("US")
///                 .email("pulumi-acctest@example.com")
///                 .fax("+1.4155551234")
///                 .firstName("Terraform")
///                 .lastName("Team")
///                 .organizationName("HashiCorp")
///                 .phoneNumber("+1.4155551234")
///                 .state("CA")
///                 .zipCode("94105")
///                 .build())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53domains:Domain
///     properties:
///       domainName: example.com
///       autoRenew: false
///       adminContact:
///         addressLine1: 101 Main Street
///         city: San Francisco
///         contactType: COMPANY
///         countryCode: US
///         email: pulumi-acctest@example.com
///         fax: '+1.4155551234'
///         firstName: Terraform
///         lastName: Team
///         organizationName: HashiCorp
///         phoneNumber: '+1.4155551234'
///         state: CA
///         zipCode: '94105'
///       registrantContact:
///         addressLine1: 101 Main Street
///         city: San Francisco
///         contactType: COMPANY
///         countryCode: US
///         email: pulumi-acctest@example.com
///         fax: '+1.4155551234'
///         firstName: Terraform
///         lastName: Team
///         organizationName: HashiCorp
///         phoneNumber: '+1.4155551234'
///         state: CA
///         zipCode: '94105'
///       techContact:
///         addressLine1: 101 Main Street
///         city: San Francisco
///         contactType: COMPANY
///         countryCode: US
///         email: pulumi-acctest@example.com
///         fax: '+1.4155551234'
///         firstName: Terraform
///         lastName: Team
///         organizationName: HashiCorp
///         phoneNumber: '+1.4155551234'
///         state: CA
///         zipCode: '94105'
///       tags:
///         Environment: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import domains using the `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/domain:Domain example example.com
/// ```
class Domain extends pulumi.CustomResource {
  /// Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
  late final pulumi.Output<String> abuseContactEmail;

  /// Phone number for reporting abuse.
  late final pulumi.Output<String> abuseContactPhone;

  /// Details about the domain administrative contact. See Contact Blocks for more details.
  late final pulumi.Output<DomainAdminContact> adminContact;

  /// Whether domain administrative contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> adminPrivacy;

  /// Whether the domain registration is set to renew automatically. Default: `true`.
  late final pulumi.Output<bool> autoRenew;

  /// Details about the domain billing contact. See Contact Blocks for more details.
  late final pulumi.Output<List<DomainBillingContact>> billingContacts;

  /// Whether domain billing contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> billingPrivacy;

  /// The date when the domain was created as found in the response to a WHOIS query.
  late final pulumi.Output<String> creationDate;

  /// The name of the domain.
  late final pulumi.Output<String> domainName;

  /// The number of years that you want to register the domain for. Domains are registered for a minimum of one year. Increasing the duration renews the domain.
  late final pulumi.Output<int> durationInYears;

  /// The date when the registration for the domain is set to expire.
  late final pulumi.Output<String> expirationDate;

  /// The ID of the public Route 53 hosted zone created for the domain. This hosted zone is deleted when the domain is deregistered.
  late final pulumi.Output<String> hostedZoneId;

  /// The list of nameservers for the domain. See `name_server` Blocks for more details.
  late final pulumi.Output<List<DomainNameServer>> nameServers;

  /// Details about the domain registrant. See Contact Blocks for more details.
  late final pulumi.Output<DomainRegistrantContact> registrantContact;

  /// Whether domain registrant contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> registrantPrivacy;

  /// Name of the registrar of the domain as identified in the registry.
  late final pulumi.Output<String> registrarName;

  /// Web address of the registrar.
  late final pulumi.Output<String> registrarUrl;

  /// List of [domain name status codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  late final pulumi.Output<List<String>> statusLists;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Details about the domain technical contact. See Contact Blocks for more details.
  late final pulumi.Output<DomainTechContact> techContact;

  /// Whether domain technical contact information is concealed from WHOIS queries. Default: `true`.
  late final pulumi.Output<bool> techPrivacy;
  late final pulumi.Output<DomainTimeouts?> timeouts;

  /// Whether the domain is locked for transfer. Default: `true`.
  ///
  /// > **NOTE:** You must specify the same privacy setting for `admin_privacy`, `registrant_privacy` and `tech_privacy`.
  late final pulumi.Output<bool> transferLock;

  /// The last updated date of the domain as found in the response to a WHOIS query.
  late final pulumi.Output<String> updatedDate;

  /// The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
  late final pulumi.Output<String> whoisServer;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_route53_domains_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(String name, {DomainArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:route53domains/domain:Domain',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.abuseContactEmail = registerOutput<String>('abuseContactEmail');
    this.abuseContactPhone = registerOutput<String>('abuseContactPhone');
    this.adminContact = registerOutput<DomainAdminContact>('adminContact');
    this.adminPrivacy = registerOutput<bool>('adminPrivacy');
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.billingContacts = registerOutput<List<DomainBillingContact>>(
      'billingContacts',
    );
    this.billingPrivacy = registerOutput<bool>('billingPrivacy');
    this.creationDate = registerOutput<String>('creationDate');
    this.domainName = registerOutput<String>('domainName');
    this.durationInYears = registerOutput<int>('durationInYears');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.nameServers = registerOutput<List<DomainNameServer>>('nameServers');
    this.registrantContact = registerOutput<DomainRegistrantContact>(
      'registrantContact',
    );
    this.registrantPrivacy = registerOutput<bool>('registrantPrivacy');
    this.registrarName = registerOutput<String>('registrarName');
    this.registrarUrl = registerOutput<String>('registrarUrl');
    this.statusLists = registerOutput<List<String>>('statusLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.techContact = registerOutput<DomainTechContact>('techContact');
    this.techPrivacy = registerOutput<bool>('techPrivacy');
    this.timeouts = registerOutput<DomainTimeouts?>('timeouts');
    this.transferLock = registerOutput<bool>('transferLock');
    this.updatedDate = registerOutput<String>('updatedDate');
    this.whoisServer = registerOutput<String>('whoisServer');
  }
}
