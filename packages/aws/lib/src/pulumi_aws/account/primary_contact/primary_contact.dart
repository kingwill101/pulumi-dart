import 'package:pulumi/pulumi.dart';
import 'primary_contact_args.dart';

/// Manages the specified primary contact information associated with an AWS Account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the Primary Contact using the `account_id`. For example:
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
