import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';

/// Information about a domain.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native domainregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create App Service Domain
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domain = new AzureNative.DomainRegistration.Domain("domain", new()
///     {
///         AuthCode = "exampleAuthCode",
///         AutoRenew = true,
///         Consent = new AzureNative.DomainRegistration.Inputs.DomainPurchaseConsentArgs
///         {
///             AgreedAt = "2021-09-10T19:30:53Z",
///             AgreedBy = "192.0.2.1",
///             AgreementKeys = new[]
///             {
///                 "agreementKey1",
///             },
///         },
///         ContactAdmin = new AzureNative.DomainRegistration.Inputs.ContactArgs
///         {
///             AddressMailing = new AzureNative.DomainRegistration.Inputs.AddressArgs
///             {
///                 Address1 = "3400 State St",
///                 City = "Chicago",
///                 Country = "United States",
///                 PostalCode = "67098",
///                 State = "IL",
///             },
///             Email = "admin@email.com",
///             Fax = "1-245-534-2242",
///             JobTitle = "Admin",
///             NameFirst = "John",
///             NameLast = "Doe",
///             NameMiddle = "",
///             Organization = "Microsoft Inc.",
///             Phone = "1-245-534-2242",
///         },
///         ContactBilling = new AzureNative.DomainRegistration.Inputs.ContactArgs
///         {
///             AddressMailing = new AzureNative.DomainRegistration.Inputs.AddressArgs
///             {
///                 Address1 = "3400 State St",
///                 City = "Chicago",
///                 Country = "United States",
///                 PostalCode = "67098",
///                 State = "IL",
///             },
///             Email = "billing@email.com",
///             Fax = "1-245-534-2242",
///             JobTitle = "Billing",
///             NameFirst = "John",
///             NameLast = "Doe",
///             NameMiddle = "",
///             Organization = "Microsoft Inc.",
///             Phone = "1-245-534-2242",
///         },
///         ContactRegistrant = new AzureNative.DomainRegistration.Inputs.ContactArgs
///         {
///             AddressMailing = new AzureNative.DomainRegistration.Inputs.AddressArgs
///             {
///                 Address1 = "3400 State St",
///                 City = "Chicago",
///                 Country = "United States",
///                 PostalCode = "67098",
///                 State = "IL",
///             },
///             Email = "registrant@email.com",
///             Fax = "1-245-534-2242",
///             JobTitle = "Registrant",
///             NameFirst = "John",
///             NameLast = "Doe",
///             NameMiddle = "",
///             Organization = "Microsoft Inc.",
///             Phone = "1-245-534-2242",
///         },
///         ContactTech = new AzureNative.DomainRegistration.Inputs.ContactArgs
///         {
///             AddressMailing = new AzureNative.DomainRegistration.Inputs.AddressArgs
///             {
///                 Address1 = "3400 State St",
///                 City = "Chicago",
///                 Country = "United States",
///                 PostalCode = "67098",
///                 State = "IL",
///             },
///             Email = "tech@email.com",
///             Fax = "1-245-534-2242",
///             JobTitle = "Tech",
///             NameFirst = "John",
///             NameLast = "Doe",
///             NameMiddle = "",
///             Organization = "Microsoft Inc.",
///             Phone = "1-245-534-2242",
///         },
///         DnsType = AzureNative.DomainRegistration.DnsType.DefaultDomainRegistrarDns,
///         DomainName = "example.com",
///         Location = "global",
///         Privacy = false,
///         ResourceGroupName = "testrg123",
///         Tags = null,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	domainregistration "github.com/pulumi/pulumi-azure-native-sdk/domainregistration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := domainregistration.NewDomain(ctx, "domain", &domainregistration.DomainArgs{
/// 			AuthCode:  pulumi.String("exampleAuthCode"),
/// 			AutoRenew: pulumi.Bool(true),
/// 			Consent: &domainregistration.DomainPurchaseConsentArgs{
/// 				AgreedAt: pulumi.String("2021-09-10T19:30:53Z"),
/// 				AgreedBy: pulumi.String("192.0.2.1"),
/// 				AgreementKeys: pulumi.StringArray{
/// 					pulumi.String("agreementKey1"),
/// 				},
/// 			},
/// 			ContactAdmin: &domainregistration.ContactArgs{
/// 				AddressMailing: &domainregistration.AddressArgs{
/// 					Address1:   pulumi.String("3400 State St"),
/// 					City:       pulumi.String("Chicago"),
/// 					Country:    pulumi.String("United States"),
/// 					PostalCode: pulumi.String("67098"),
/// 					State:      pulumi.String("IL"),
/// 				},
/// 				Email:        pulumi.String("admin@email.com"),
/// 				Fax:          pulumi.String("1-245-534-2242"),
/// 				JobTitle:     pulumi.String("Admin"),
/// 				NameFirst:    pulumi.String("John"),
/// 				NameLast:     pulumi.String("Doe"),
/// 				NameMiddle:   pulumi.String(""),
/// 				Organization: pulumi.String("Microsoft Inc."),
/// 				Phone:        pulumi.String("1-245-534-2242"),
/// 			},
/// 			ContactBilling: &domainregistration.ContactArgs{
/// 				AddressMailing: &domainregistration.AddressArgs{
/// 					Address1:   pulumi.String("3400 State St"),
/// 					City:       pulumi.String("Chicago"),
/// 					Country:    pulumi.String("United States"),
/// 					PostalCode: pulumi.String("67098"),
/// 					State:      pulumi.String("IL"),
/// 				},
/// 				Email:        pulumi.String("billing@email.com"),
/// 				Fax:          pulumi.String("1-245-534-2242"),
/// 				JobTitle:     pulumi.String("Billing"),
/// 				NameFirst:    pulumi.String("John"),
/// 				NameLast:     pulumi.String("Doe"),
/// 				NameMiddle:   pulumi.String(""),
/// 				Organization: pulumi.String("Microsoft Inc."),
/// 				Phone:        pulumi.String("1-245-534-2242"),
/// 			},
/// 			ContactRegistrant: &domainregistration.ContactArgs{
/// 				AddressMailing: &domainregistration.AddressArgs{
/// 					Address1:   pulumi.String("3400 State St"),
/// 					City:       pulumi.String("Chicago"),
/// 					Country:    pulumi.String("United States"),
/// 					PostalCode: pulumi.String("67098"),
/// 					State:      pulumi.String("IL"),
/// 				},
/// 				Email:        pulumi.String("registrant@email.com"),
/// 				Fax:          pulumi.String("1-245-534-2242"),
/// 				JobTitle:     pulumi.String("Registrant"),
/// 				NameFirst:    pulumi.String("John"),
/// 				NameLast:     pulumi.String("Doe"),
/// 				NameMiddle:   pulumi.String(""),
/// 				Organization: pulumi.String("Microsoft Inc."),
/// 				Phone:        pulumi.String("1-245-534-2242"),
/// 			},
/// 			ContactTech: &domainregistration.ContactArgs{
/// 				AddressMailing: &domainregistration.AddressArgs{
/// 					Address1:   pulumi.String("3400 State St"),
/// 					City:       pulumi.String("Chicago"),
/// 					Country:    pulumi.String("United States"),
/// 					PostalCode: pulumi.String("67098"),
/// 					State:      pulumi.String("IL"),
/// 				},
/// 				Email:        pulumi.String("tech@email.com"),
/// 				Fax:          pulumi.String("1-245-534-2242"),
/// 				JobTitle:     pulumi.String("Tech"),
/// 				NameFirst:    pulumi.String("John"),
/// 				NameLast:     pulumi.String("Doe"),
/// 				NameMiddle:   pulumi.String(""),
/// 				Organization: pulumi.String("Microsoft Inc."),
/// 				Phone:        pulumi.String("1-245-534-2242"),
/// 			},
/// 			DnsType:           domainregistration.DnsTypeDefaultDomainRegistrarDns,
/// 			DomainName:        pulumi.String("example.com"),
/// 			Location:          pulumi.String("global"),
/// 			Privacy:           pulumi.Bool(false),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			Tags:              pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.domainregistration.Domain;
/// import com.pulumi.azurenative.domainregistration.DomainArgs;
/// import com.pulumi.azurenative.domainregistration.inputs.DomainPurchaseConsentArgs;
/// import com.pulumi.azurenative.domainregistration.inputs.ContactArgs;
/// import com.pulumi.azurenative.domainregistration.inputs.AddressArgs;
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
///         var domain = new Domain("domain", DomainArgs.builder()
///             .authCode("exampleAuthCode")
///             .autoRenew(true)
///             .consent(DomainPurchaseConsentArgs.builder()
///                 .agreedAt("2021-09-10T19:30:53Z")
///                 .agreedBy("192.0.2.1")
///                 .agreementKeys("agreementKey1")
///                 .build())
///             .contactAdmin(ContactArgs.builder()
///                 .addressMailing(AddressArgs.builder()
///                     .address1("3400 State St")
///                     .city("Chicago")
///                     .country("United States")
///                     .postalCode("67098")
///                     .state("IL")
///                     .build())
///                 .email("admin@email.com")
///                 .fax("1-245-534-2242")
///                 .jobTitle("Admin")
///                 .nameFirst("John")
///                 .nameLast("Doe")
///                 .nameMiddle("")
///                 .organization("Microsoft Inc.")
///                 .phone("1-245-534-2242")
///                 .build())
///             .contactBilling(ContactArgs.builder()
///                 .addressMailing(AddressArgs.builder()
///                     .address1("3400 State St")
///                     .city("Chicago")
///                     .country("United States")
///                     .postalCode("67098")
///                     .state("IL")
///                     .build())
///                 .email("billing@email.com")
///                 .fax("1-245-534-2242")
///                 .jobTitle("Billing")
///                 .nameFirst("John")
///                 .nameLast("Doe")
///                 .nameMiddle("")
///                 .organization("Microsoft Inc.")
///                 .phone("1-245-534-2242")
///                 .build())
///             .contactRegistrant(ContactArgs.builder()
///                 .addressMailing(AddressArgs.builder()
///                     .address1("3400 State St")
///                     .city("Chicago")
///                     .country("United States")
///                     .postalCode("67098")
///                     .state("IL")
///                     .build())
///                 .email("registrant@email.com")
///                 .fax("1-245-534-2242")
///                 .jobTitle("Registrant")
///                 .nameFirst("John")
///                 .nameLast("Doe")
///                 .nameMiddle("")
///                 .organization("Microsoft Inc.")
///                 .phone("1-245-534-2242")
///                 .build())
///             .contactTech(ContactArgs.builder()
///                 .addressMailing(AddressArgs.builder()
///                     .address1("3400 State St")
///                     .city("Chicago")
///                     .country("United States")
///                     .postalCode("67098")
///                     .state("IL")
///                     .build())
///                 .email("tech@email.com")
///                 .fax("1-245-534-2242")
///                 .jobTitle("Tech")
///                 .nameFirst("John")
///                 .nameLast("Doe")
///                 .nameMiddle("")
///                 .organization("Microsoft Inc.")
///                 .phone("1-245-534-2242")
///                 .build())
///             .dnsType("DefaultDomainRegistrarDns")
///             .domainName("example.com")
///             .location("global")
///             .privacy(false)
///             .resourceGroupName("testrg123")
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const domain = new azure_native.domainregistration.Domain("domain", {
///     authCode: "exampleAuthCode",
///     autoRenew: true,
///     consent: {
///         agreedAt: "2021-09-10T19:30:53Z",
///         agreedBy: "192.0.2.1",
///         agreementKeys: ["agreementKey1"],
///     },
///     contactAdmin: {
///         addressMailing: {
///             address1: "3400 State St",
///             city: "Chicago",
///             country: "United States",
///             postalCode: "67098",
///             state: "IL",
///         },
///         email: "admin@email.com",
///         fax: "1-245-534-2242",
///         jobTitle: "Admin",
///         nameFirst: "John",
///         nameLast: "Doe",
///         nameMiddle: "",
///         organization: "Microsoft Inc.",
///         phone: "1-245-534-2242",
///     },
///     contactBilling: {
///         addressMailing: {
///             address1: "3400 State St",
///             city: "Chicago",
///             country: "United States",
///             postalCode: "67098",
///             state: "IL",
///         },
///         email: "billing@email.com",
///         fax: "1-245-534-2242",
///         jobTitle: "Billing",
///         nameFirst: "John",
///         nameLast: "Doe",
///         nameMiddle: "",
///         organization: "Microsoft Inc.",
///         phone: "1-245-534-2242",
///     },
///     contactRegistrant: {
///         addressMailing: {
///             address1: "3400 State St",
///             city: "Chicago",
///             country: "United States",
///             postalCode: "67098",
///             state: "IL",
///         },
///         email: "registrant@email.com",
///         fax: "1-245-534-2242",
///         jobTitle: "Registrant",
///         nameFirst: "John",
///         nameLast: "Doe",
///         nameMiddle: "",
///         organization: "Microsoft Inc.",
///         phone: "1-245-534-2242",
///     },
///     contactTech: {
///         addressMailing: {
///             address1: "3400 State St",
///             city: "Chicago",
///             country: "United States",
///             postalCode: "67098",
///             state: "IL",
///         },
///         email: "tech@email.com",
///         fax: "1-245-534-2242",
///         jobTitle: "Tech",
///         nameFirst: "John",
///         nameLast: "Doe",
///         nameMiddle: "",
///         organization: "Microsoft Inc.",
///         phone: "1-245-534-2242",
///     },
///     dnsType: azure_native.domainregistration.DnsType.DefaultDomainRegistrarDns,
///     domainName: "example.com",
///     location: "global",
///     privacy: false,
///     resourceGroupName: "testrg123",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// domain = azure_native.domainregistration.Domain("domain",
///     auth_code="exampleAuthCode",
///     auto_renew=True,
///     consent={
///         "agreed_at": "2021-09-10T19:30:53Z",
///         "agreed_by": "192.0.2.1",
///         "agreement_keys": ["agreementKey1"],
///     },
///     contact_admin={
///         "address_mailing": {
///             "address1": "3400 State St",
///             "city": "Chicago",
///             "country": "United States",
///             "postal_code": "67098",
///             "state": "IL",
///         },
///         "email": "admin@email.com",
///         "fax": "1-245-534-2242",
///         "job_title": "Admin",
///         "name_first": "John",
///         "name_last": "Doe",
///         "name_middle": "",
///         "organization": "Microsoft Inc.",
///         "phone": "1-245-534-2242",
///     },
///     contact_billing={
///         "address_mailing": {
///             "address1": "3400 State St",
///             "city": "Chicago",
///             "country": "United States",
///             "postal_code": "67098",
///             "state": "IL",
///         },
///         "email": "billing@email.com",
///         "fax": "1-245-534-2242",
///         "job_title": "Billing",
///         "name_first": "John",
///         "name_last": "Doe",
///         "name_middle": "",
///         "organization": "Microsoft Inc.",
///         "phone": "1-245-534-2242",
///     },
///     contact_registrant={
///         "address_mailing": {
///             "address1": "3400 State St",
///             "city": "Chicago",
///             "country": "United States",
///             "postal_code": "67098",
///             "state": "IL",
///         },
///         "email": "registrant@email.com",
///         "fax": "1-245-534-2242",
///         "job_title": "Registrant",
///         "name_first": "John",
///         "name_last": "Doe",
///         "name_middle": "",
///         "organization": "Microsoft Inc.",
///         "phone": "1-245-534-2242",
///     },
///     contact_tech={
///         "address_mailing": {
///             "address1": "3400 State St",
///             "city": "Chicago",
///             "country": "United States",
///             "postal_code": "67098",
///             "state": "IL",
///         },
///         "email": "tech@email.com",
///         "fax": "1-245-534-2242",
///         "job_title": "Tech",
///         "name_first": "John",
///         "name_last": "Doe",
///         "name_middle": "",
///         "organization": "Microsoft Inc.",
///         "phone": "1-245-534-2242",
///     },
///     dns_type=azure_native.domainregistration.DnsType.DEFAULT_DOMAIN_REGISTRAR_DNS,
///     domain_name="example.com",
///     location="global",
///     privacy=False,
///     resource_group_name="testrg123",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   domain:
///     type: azure-native:domainregistration:Domain
///     properties:
///       authCode: exampleAuthCode
///       autoRenew: true
///       consent:
///         agreedAt: 2021-09-10T19:30:53Z
///         agreedBy: 192.0.2.1
///         agreementKeys:
///           - agreementKey1
///       contactAdmin:
///         addressMailing:
///           address1: 3400 State St
///           city: Chicago
///           country: United States
///           postalCode: '67098'
///           state: IL
///         email: admin@email.com
///         fax: 1-245-534-2242
///         jobTitle: Admin
///         nameFirst: John
///         nameLast: Doe
///         nameMiddle: ""
///         organization: Microsoft Inc.
///         phone: 1-245-534-2242
///       contactBilling:
///         addressMailing:
///           address1: 3400 State St
///           city: Chicago
///           country: United States
///           postalCode: '67098'
///           state: IL
///         email: billing@email.com
///         fax: 1-245-534-2242
///         jobTitle: Billing
///         nameFirst: John
///         nameLast: Doe
///         nameMiddle: ""
///         organization: Microsoft Inc.
///         phone: 1-245-534-2242
///       contactRegistrant:
///         addressMailing:
///           address1: 3400 State St
///           city: Chicago
///           country: United States
///           postalCode: '67098'
///           state: IL
///         email: registrant@email.com
///         fax: 1-245-534-2242
///         jobTitle: Registrant
///         nameFirst: John
///         nameLast: Doe
///         nameMiddle: ""
///         organization: Microsoft Inc.
///         phone: 1-245-534-2242
///       contactTech:
///         addressMailing:
///           address1: 3400 State St
///           city: Chicago
///           country: United States
///           postalCode: '67098'
///           state: IL
///         email: tech@email.com
///         fax: 1-245-534-2242
///         jobTitle: Tech
///         nameFirst: John
///         nameLast: Doe
///         nameMiddle: ""
///         organization: Microsoft Inc.
///         phone: 1-245-534-2242
///       dnsType: DefaultDomainRegistrarDns
///       domainName: example.com
///       location: global
///       privacy: false
///       resourceGroupName: testrg123
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:domainregistration:Domain example.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DomainRegistration/domains/{domainName}
/// ```
class Domain extends pulumi.CustomResource {
  late final pulumi.Output<String?> authCode;

  /// &lt;code&gt;true&lt;/code&gt; if the domain should be automatically renewed; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> autoRenew;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Domain creation timestamp.
  late final pulumi.Output<String> createdTime;

  /// Current DNS type
  late final pulumi.Output<String?> dnsType;

  /// Azure DNS Zone to use
  late final pulumi.Output<String?> dnsZoneId;

  /// Reasons why domain is not renewable.
  late final pulumi.Output<List<String>> domainNotRenewableReasons;

  /// Domain expiration timestamp.
  late final pulumi.Output<String> expirationTime;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;

  /// Timestamp when the domain was renewed last time.
  late final pulumi.Output<String> lastRenewedTime;

  /// Resource Location.
  late final pulumi.Output<String> location;

  /// All hostnames derived from the domain and assigned to Azure resources.
  late final pulumi.Output<List<Map<String, dynamic>>> managedHostNames;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// Name servers.
  late final pulumi.Output<List<String>> nameServers;

  /// &lt;code&gt;true&lt;/code&gt; if domain privacy is enabled for this domain; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> privacy;

  /// Domain provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// &lt;code&gt;true&lt;/code&gt; if Azure can assign this domain to App Service apps; otherwise, &lt;code&gt;false&lt;/code&gt;. This value will be &lt;code&gt;true&lt;/code&gt; if domain registration status is active and
  /// it is hosted on name servers Azure has programmatic access to.
  late final pulumi.Output<bool> readyForDnsRecordManagement;

  /// Domain registration status.
  late final pulumi.Output<String> registrationStatus;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Target DNS type (would be used for migration)
  late final pulumi.Output<String?> targetDnsType;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_domainregistration_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(String name, {DomainArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:domainregistration:Domain',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    authCode = registerOutput<String?>('authCode');
    autoRenew = registerOutput<bool?>('autoRenew');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTime = registerOutput<String>('createdTime');
    dnsType = registerOutput<String?>('dnsType');
    dnsZoneId = registerOutput<String?>('dnsZoneId');
    domainNotRenewableReasons = registerOutput<List<String>>(
      'domainNotRenewableReasons',
    );
    expirationTime = registerOutput<String>('expirationTime');
    kind = registerOutput<String?>('kind');
    lastRenewedTime = registerOutput<String>('lastRenewedTime');
    location = registerOutput<String>('location');
    managedHostNames = registerOutput<List<Map<String, dynamic>>>(
      'managedHostNames',
    );
    this.name = registerOutput<String>('name');
    nameServers = registerOutput<List<String>>('nameServers');
    privacy = registerOutput<bool?>('privacy');
    provisioningState = registerOutput<String>('provisioningState');
    readyForDnsRecordManagement = registerOutput<bool>(
      'readyForDnsRecordManagement',
    );
    registrationStatus = registerOutput<String>('registrationStatus');
    tags = registerOutput<Map<String, String>?>('tags');
    targetDnsType = registerOutput<String?>('targetDnsType');
    type = registerOutput<String>('type');
  }
}
