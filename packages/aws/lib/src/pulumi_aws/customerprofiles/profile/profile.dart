import 'package:pulumi/pulumi.dart' as pulumi;
import '../profile_address/profile_address.dart';
import '../profile_billing_address/profile_billing_address.dart';
import '../profile_mailing_address/profile_mailing_address.dart';
import '../profile_shipping_address/profile_shipping_address.dart';
import 'profile_args.dart';

/// Resource for managing an Amazon Customer Profiles Profile.
/// See the [Create Profile](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateProfile.html) for more information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Customer Profiles Profile using the resource `id`. For example:
///
/// ```sh
/// $ pulumi import aws:customerprofiles/profile:Profile example domain-name/5f2f473dfbe841eb8d05cfc2a4c926df
/// ```
class Profile extends pulumi.CustomResource {
  /// A unique account number that you have given to the customer.
  late final pulumi.Output<String?> accountNumber;

  /// Any additional information relevant to the customer’s profile.
  late final pulumi.Output<String?> additionalInformation;

  /// A block that specifies a generic address associated with the customer that is not mailing, shipping, or billing. Documented below.
  late final pulumi.Output<ProfileAddress?> address;

  /// A key value pair of attributes of a customer profile.
  late final pulumi.Output<Map<String, String>?> attributes;

  /// A block that specifies the customer’s billing address. Documented below.
  late final pulumi.Output<ProfileBillingAddress?> billingAddress;

  /// The customer’s birth date.
  late final pulumi.Output<String?> birthDate;

  /// The customer’s business email address.
  late final pulumi.Output<String?> businessEmailAddress;

  /// The name of the customer’s business.
  late final pulumi.Output<String?> businessName;

  /// The customer’s business phone number.
  late final pulumi.Output<String?> businessPhoneNumber;

  /// The name of your Customer Profile domain. It must be unique for your AWS account.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;

  /// The customer’s email address, which has not been specified as a personal or business address.
  late final pulumi.Output<String?> emailAddress;

  /// The customer’s first name.
  late final pulumi.Output<String?> firstName;

  /// The gender with which the customer identifies.
  late final pulumi.Output<String?> genderString;

  /// The customer’s home phone number.
  late final pulumi.Output<String?> homePhoneNumber;

  /// The customer’s last name.
  late final pulumi.Output<String?> lastName;

  /// A block that specifies the customer’s mailing address. Documented below.
  late final pulumi.Output<ProfileMailingAddress?> mailingAddress;

  /// The customer’s middle name.
  late final pulumi.Output<String?> middleName;

  /// The customer’s mobile phone number.
  late final pulumi.Output<String?> mobilePhoneNumber;

  /// The type of profile used to describe the customer.
  late final pulumi.Output<String?> partyTypeString;

  /// The customer’s personal email address.
  late final pulumi.Output<String?> personalEmailAddress;

  /// The customer’s phone number, which has not been specified as a mobile, home, or business number.
  late final pulumi.Output<String?> phoneNumber;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A block that specifies the customer’s shipping address. Documented below.
  late final pulumi.Output<ProfileShippingAddress?> shippingAddress;

  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:customerprofiles/profile:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountNumber = registerOutput<String?>('accountNumber');
    this.additionalInformation =
        registerOutput<String?>('additionalInformation');
    this.address = registerOutput<ProfileAddress?>('address');
    this.attributes = registerOutput<Map<String, String>?>('attributes');
    this.billingAddress =
        registerOutput<ProfileBillingAddress?>('billingAddress');
    this.birthDate = registerOutput<String?>('birthDate');
    this.businessEmailAddress = registerOutput<String?>('businessEmailAddress');
    this.businessName = registerOutput<String?>('businessName');
    this.businessPhoneNumber = registerOutput<String?>('businessPhoneNumber');
    this.domainName = registerOutput<String>('domainName');
    this.emailAddress = registerOutput<String?>('emailAddress');
    this.firstName = registerOutput<String?>('firstName');
    this.genderString = registerOutput<String?>('genderString');
    this.homePhoneNumber = registerOutput<String?>('homePhoneNumber');
    this.lastName = registerOutput<String?>('lastName');
    this.mailingAddress =
        registerOutput<ProfileMailingAddress?>('mailingAddress');
    this.middleName = registerOutput<String?>('middleName');
    this.mobilePhoneNumber = registerOutput<String?>('mobilePhoneNumber');
    this.partyTypeString = registerOutput<String?>('partyTypeString');
    this.personalEmailAddress = registerOutput<String?>('personalEmailAddress');
    this.phoneNumber = registerOutput<String?>('phoneNumber');
    this.region = registerOutput<String>('region');
    this.shippingAddress =
        registerOutput<ProfileShippingAddress?>('shippingAddress');
  }
}
