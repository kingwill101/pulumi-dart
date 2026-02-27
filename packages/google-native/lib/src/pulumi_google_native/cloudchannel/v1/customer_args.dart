// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_contact_info.dart';
import 'google_type_postal_address.dart';

/// The set of arguments for Customer.
class CustomerArgs {
  final pulumi.Input<String> accountId;

  /// Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.
  final pulumi.Input<String>? alternateEmail;

  /// Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.
  final pulumi.Input<String>? channelPartnerId;
  final pulumi.Input<String> channelPartnerLinkId;

  /// Optional. External CRM ID for the customer. Populated only if a CRM ID exists for this customer.
  final pulumi.Input<String>? correlationId;

  /// The customer's primary domain. Must match the primary contact email's domain.
  final pulumi.Input<String> domain;

  /// Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  final pulumi.Input<String>? languageCode;

  /// Name of the organization that the customer entity represents.
  final pulumi.Input<String> orgDisplayName;

  /// The organization address for the customer. To enforce US laws and embargoes, we require a region, postal code, and address lines. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.
  final pulumi.Input<GoogleTypePostalAddress> orgPostalAddress;

  /// Primary contact info.
  final pulumi.Input<GoogleCloudChannelV1ContactInfo>? primaryContactInfo;

  CustomerArgs({
    required this.accountId,
    this.alternateEmail,
    this.channelPartnerId,
    required this.channelPartnerLinkId,
    this.correlationId,
    required this.domain,
    this.languageCode,
    required this.orgDisplayName,
    required this.orgPostalAddress,
    this.primaryContactInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final alternateEmailValue = alternateEmail;
    if (alternateEmailValue != null) {
      map['alternateEmail'] = alternateEmailValue;
    }
    final channelPartnerIdValue = channelPartnerId;
    if (channelPartnerIdValue != null) {
      map['channelPartnerId'] = channelPartnerIdValue;
    }
    map['channelPartnerLinkId'] = channelPartnerLinkId;
    final correlationIdValue = correlationId;
    if (correlationIdValue != null) {
      map['correlationId'] = correlationIdValue;
    }
    map['domain'] = domain;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['orgDisplayName'] = orgDisplayName;
    map['orgPostalAddress'] = pulumi.Input.mapInputValue<
        GoogleTypePostalAddress,
        Map<String, dynamic>>(orgPostalAddress, (value) => value.toMap());
    final primaryContactInfoValue = primaryContactInfo;
    if (primaryContactInfoValue != null) {
      map['primaryContactInfo'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudChannelV1ContactInfo, Map<String, dynamic>>(
          primaryContactInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory CustomerArgs.fromMap(Map<String, dynamic> map) {
    return CustomerArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      alternateEmail:
          pulumi.Input.asOptionalInput<String>(map['alternateEmail']),
      channelPartnerId:
          pulumi.Input.asOptionalInput<String>(map['channelPartnerId']),
      channelPartnerLinkId:
          pulumi.Input.asInput<String>(map['channelPartnerLinkId']),
      correlationId: pulumi.Input.asOptionalInput<String>(map['correlationId']),
      domain: pulumi.Input.asInput<String>(map['domain']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      orgDisplayName: pulumi.Input.asInput<String>(map['orgDisplayName']),
      orgPostalAddress: pulumi.Input.asInput<GoogleTypePostalAddress>(
          map['orgPostalAddress']),
      primaryContactInfo:
          pulumi.Input.asOptionalInput<GoogleCloudChannelV1ContactInfo>(
              map['primaryContactInfo']),
    );
  }
}
