import 'package:pulumi/pulumi.dart';
import 'primary_contact_args.dart';

/// Manages the specified primary contact information associated with an AWS Account.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.account.PrimaryContact("test", {
/// addressLine1: "123 Any Street",
/// city: "Seattle",
/// companyName: "Example Corp, Inc.",
/// countryCode: "US",
/// districtOrCounty: "King",
/// fullName: "My Name",
/// phoneNumber: "+64211111111",
/// postalCode: "98101",
/// stateOrRegion: "WA",
/// websiteUrl: "https://www.examplecorp.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.account.PrimaryContact("test",
/// address_line1="123 Any Street",
/// city="Seattle",
/// company_name="Example Corp, Inc.",
/// country_code="US",
/// district_or_county="King",
/// full_name="My Name",
/// phone_number="+64211111111",
/// postal_code="98101",
/// state_or_region="WA",
/// website_url="https://www.examplecorp.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Account.PrimaryContact("test", new()
/// {
/// AddressLine1 = "123 Any Street",
/// City = "Seattle",
/// CompanyName = "Example Corp, Inc.",
/// CountryCode = "US",
/// DistrictOrCounty = "King",
/// FullName = "My Name",
/// PhoneNumber = "+64211111111",
/// PostalCode = "98101",
/// StateOrRegion = "WA",
/// WebsiteUrl = "https://www.examplecorp.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/account"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := account.NewPrimaryContact(ctx, "test", &account.PrimaryContactArgs{
/// AddressLine1:     pulumi.String("123 Any Street"),
/// City:             pulumi.String("Seattle"),
/// CompanyName:      pulumi.String("Example Corp, Inc."),
/// CountryCode:      pulumi.String("US"),
/// DistrictOrCounty: pulumi.String("King"),
/// FullName:         pulumi.String("My Name"),
/// PhoneNumber:      pulumi.String("+64211111111"),
/// PostalCode:       pulumi.String("98101"),
/// StateOrRegion:    pulumi.String("WA"),
/// WebsiteUrl:       pulumi.String("https://www.examplecorp.com"),
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
/// import com.pulumi.aws.account.PrimaryContact;
/// import com.pulumi.aws.account.PrimaryContactArgs;
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
/// var test = new PrimaryContact("test", PrimaryContactArgs.builder()
/// .addressLine1("123 Any Street")
/// .city("Seattle")
/// .companyName("Example Corp, Inc.")
/// .countryCode("US")
/// .districtOrCounty("King")
/// .fullName("My Name")
/// .phoneNumber("+64211111111")
/// .postalCode("98101")
/// .stateOrRegion("WA")
/// .websiteUrl("https://www.examplecorp.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:account:PrimaryContact
/// properties:
/// addressLine1: 123 Any Street
/// city: Seattle
/// companyName: Example Corp, Inc.
/// countryCode: US
/// districtOrCounty: King
/// fullName: My Name
/// phoneNumber: '+64211111111'
/// postalCode: '98101'
/// stateOrRegion: WA
/// websiteUrl: https://www.examplecorp.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the Primary Contact using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:account/primaryContact:PrimaryContact test 1234567890
/// ```
class PrimaryContact extends CustomResource {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  late final Output<String?> accountId;

  /// The first line of the primary contact address.
  late final Output<String> addressLine1;

  /// The second line of the primary contact address, if any.
  late final Output<String?> addressLine2;

  /// The third line of the primary contact address, if any.
  late final Output<String?> addressLine3;

  /// The city of the primary contact address.
  late final Output<String> city;

  /// The name of the company associated with the primary contact information, if any.
  late final Output<String?> companyName;

  /// The ISO-3166 two-letter country code for the primary contact address.
  late final Output<String> countryCode;

  /// The district or county of the primary contact address, if any.
  late final Output<String?> districtOrCounty;

  /// The full name of the primary contact address.
  late final Output<String> fullName;

  /// The phone number of the primary contact information. The number will be validated and, in some countries, checked for activation.
  late final Output<String> phoneNumber;

  /// The postal code of the primary contact address.
  late final Output<String> postalCode;

  /// The state or region of the primary contact address. This field is required in selected countries.
  late final Output<String?> stateOrRegion;

  /// The URL of the website associated with the primary contact information, if any.
  late final Output<String?> websiteUrl;

  PrimaryContact(
    String name, {
    PrimaryContactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:account/primaryContact:PrimaryContact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String?>('accountId');
    this.addressLine1 = registerOutput<String>('addressLine1');
    this.addressLine2 = registerOutput<String?>('addressLine2');
    this.addressLine3 = registerOutput<String?>('addressLine3');
    this.city = registerOutput<String>('city');
    this.companyName = registerOutput<String?>('companyName');
    this.countryCode = registerOutput<String>('countryCode');
    this.districtOrCounty = registerOutput<String?>('districtOrCounty');
    this.fullName = registerOutput<String>('fullName');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.postalCode = registerOutput<String>('postalCode');
    this.stateOrRegion = registerOutput<String?>('stateOrRegion');
    this.websiteUrl = registerOutput<String?>('websiteUrl');
  }
}
