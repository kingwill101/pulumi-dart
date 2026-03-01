// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_response.dart';
import 'nsp_access_rule_properties_subscriptions_item_response.dart';

/// Properties of Access Rule
class NspAccessRulePropertiesResponse {
  /// Address prefixes in the CIDR format for inbound rules
  final List<String>? addressPrefixes;
  /// Direction of Access Rule
  final String? direction;
  /// Email addresses for outbound rules
  final List<String> emailAddresses;
  /// FQDN for outbound rules
  final List<String> fullyQualifiedDomainNames;
  /// NetworkSecurityPerimeters for inbound rules
  final List<NetworkSecurityPerimeterResponse> networkSecurityPerimeters;
  /// Phone numbers for outbound rules
  final List<String> phoneNumbers;
  /// Subscriptions for inbound rules
  final List<NspAccessRulePropertiesSubscriptionsItemResponse>? subscriptions;

  /// Creates a new [NspAccessRulePropertiesResponse].
  /// [addressPrefixes] Address prefixes in the CIDR format for inbound rules
  /// [direction] Direction of Access Rule
  /// [emailAddresses] Email addresses for outbound rules
  /// [fullyQualifiedDomainNames] FQDN for outbound rules
  /// [networkSecurityPerimeters] NetworkSecurityPerimeters for inbound rules
  /// [phoneNumbers] Phone numbers for outbound rules
  /// [subscriptions] Subscriptions for inbound rules
  NspAccessRulePropertiesResponse({
    this.addressPrefixes,
    this.direction,
    required this.emailAddresses,
    required this.fullyQualifiedDomainNames,
    required this.networkSecurityPerimeters,
    required this.phoneNumbers,
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'direction': ?direction,
      'emailAddresses': emailAddresses,
      'fullyQualifiedDomainNames': fullyQualifiedDomainNames,
      'networkSecurityPerimeters': pulumi.Input.encodeList<NetworkSecurityPerimeterResponse, Map<String, dynamic>>(networkSecurityPerimeters, (value) => value.toMap()),
      'phoneNumbers': phoneNumbers,
      'subscriptions': ?subscriptions == null ? null : pulumi.Input.encodeList<NspAccessRulePropertiesSubscriptionsItemResponse, Map<String, dynamic>>(subscriptions!, (value) => value.toMap()),
    };
  }

  factory NspAccessRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NspAccessRulePropertiesResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      direction: map['direction'] == null ? null : map['direction'] as String,
      emailAddresses: (map['emailAddresses'] as List).cast<String>(),
      fullyQualifiedDomainNames: (map['fullyQualifiedDomainNames'] as List).cast<String>(),
      networkSecurityPerimeters: pulumi.Input.decodeList<NetworkSecurityPerimeterResponse>(map['networkSecurityPerimeters'], (value) => NetworkSecurityPerimeterResponse.fromMap((value as Map).cast<String, dynamic>())),
      phoneNumbers: (map['phoneNumbers'] as List).cast<String>(),
      subscriptions: map['subscriptions'] == null ? null : pulumi.Input.decodeList<NspAccessRulePropertiesSubscriptionsItemResponse>(map['subscriptions'], (value) => NspAccessRulePropertiesSubscriptionsItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

