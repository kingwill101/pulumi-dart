// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_response.dart';
import 'nsp_access_rule_properties_subscriptions_item_response.dart';

/// Properties of Access Rule
class NspAccessRulePropertiesResponse {
  /// Address prefixes in the CIDR format for inbound rules
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Direction of Access Rule
  final pulumi.Input<String>? direction;
  /// Email addresses for outbound rules
  final pulumi.Input<List<String>> emailAddresses;
  /// FQDN for outbound rules
  final pulumi.Input<List<String>> fullyQualifiedDomainNames;
  /// NetworkSecurityPerimeters for inbound rules
  final pulumi.Input<List<NetworkSecurityPerimeterResponse>> networkSecurityPerimeters;
  /// Phone numbers for outbound rules
  final pulumi.Input<List<String>> phoneNumbers;
  /// Subscriptions for inbound rules
  final pulumi.Input<List<NspAccessRulePropertiesSubscriptionsItemResponse>>? subscriptions;

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
      'networkSecurityPerimeters': pulumi.Input.mapInputValue<List<NetworkSecurityPerimeterResponse>, List<Map<String, dynamic>>>(networkSecurityPerimeters, (value) => pulumi.Input.encodeList<NetworkSecurityPerimeterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'phoneNumbers': phoneNumbers,
      'subscriptions': ?pulumi.Input.mapOptionalInputValue<List<NspAccessRulePropertiesSubscriptionsItemResponse>, List<Map<String, dynamic>>>(subscriptions, (value) => pulumi.Input.encodeList<NspAccessRulePropertiesSubscriptionsItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NspAccessRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NspAccessRulePropertiesResponse(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddresses: pulumi.Input.fromValue((map['emailAddresses'] as List).cast<String>()),
      fullyQualifiedDomainNames: pulumi.Input.fromValue((map['fullyQualifiedDomainNames'] as List).cast<String>()),
      networkSecurityPerimeters: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkSecurityPerimeterResponse>(map['networkSecurityPerimeters']!, (value) => NetworkSecurityPerimeterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      phoneNumbers: pulumi.Input.fromValue((map['phoneNumbers'] as List).cast<String>()),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NspAccessRulePropertiesSubscriptionsItemResponse>(guardedValue, (value) => NspAccessRulePropertiesSubscriptionsItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

