import 'package:pulumi/pulumi.dart';
import 'customer_args.dart';
import 'google_cloud_channel_v1_cloud_identity_info_response.dart';
import 'google_cloud_channel_v1_contact_info_response.dart';
import 'google_type_postal_address_response.dart';

/// Creates a new Customer resource under the reseller or distributor account. Possible error codes: * PERMISSION_DENIED: * The reseller account making the request is different from the reseller account in the API request. * You are not authorized to create a customer. See https://support.google.com/channelservices/answer/9759265 * INVALID_ARGUMENT: * Required request parameters are missing or invalid. * Domain field value doesn't match the primary email domain. Return value: The newly created Customer resource.
/// Auto-naming is currently not supported for this resource.
class Customer extends CustomResource {
  late final Output<String> accountId;

  /// Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.
  late final Output<String> alternateEmail;

  /// Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.
  late final Output<String> channelPartnerId;
  late final Output<String> channelPartnerLinkId;

  /// The customer's Cloud Identity ID if the customer has a Cloud Identity resource.
  late final Output<String> cloudIdentityId;

  /// Cloud Identity information for the customer. Populated only if a Cloud Identity account exists for this customer.
  late final Output<GoogleCloudChannelV1CloudIdentityInfoResponse>
      cloudIdentityInfo;

  /// Optional. External CRM ID for the customer. Populated only if a CRM ID exists for this customer.
  late final Output<String> correlationId;

  /// Time when the customer was created.
  late final Output<String> createTime;

  /// The customer's primary domain. Must match the primary contact email's domain.
  late final Output<String> domain;

  /// Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  late final Output<String> languageCode;

  /// Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}
  late final Output<String> name;

  /// Name of the organization that the customer entity represents.
  late final Output<String> orgDisplayName;

  /// The organization address for the customer. To enforce US laws and embargoes, we require a region, postal code, and address lines. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.
  late final Output<GoogleTypePostalAddressResponse> orgPostalAddress;

  /// Primary contact info.
  late final Output<GoogleCloudChannelV1ContactInfoResponse> primaryContactInfo;

  /// Time when the customer was updated.
  late final Output<String> updateTime;

  Customer(
    String name, {
    CustomerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudchannel/v1:Customer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.alternateEmail = Output.createUnknown<String>();
    this.channelPartnerId = Output.createUnknown<String>();
    this.channelPartnerLinkId = Output.createUnknown<String>();
    this.cloudIdentityId = Output.createUnknown<String>();
    this.cloudIdentityInfo =
        Output.createUnknown<GoogleCloudChannelV1CloudIdentityInfoResponse>();
    this.correlationId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.orgDisplayName = Output.createUnknown<String>();
    this.orgPostalAddress =
        Output.createUnknown<GoogleTypePostalAddressResponse>();
    this.primaryContactInfo =
        Output.createUnknown<GoogleCloudChannelV1ContactInfoResponse>();
    this.updateTime = Output.createUnknown<String>();
  }
}
