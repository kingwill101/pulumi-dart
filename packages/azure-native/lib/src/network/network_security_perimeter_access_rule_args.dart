// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_id.dart';

/// {@template pulumi_network_network_security_perimeter_access_rule_args_doc}
/// The set of arguments for NetworkSecurityPerimeterAccessRule.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_access_rule_args_doc}
class NetworkSecurityPerimeterAccessRuleArgs {
  /// The name of the NSP access rule.
  final pulumi.Input<String>? accessRuleName;
  /// Inbound address prefixes (IPv4/IPv6)
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Direction that specifies whether the access rules is inbound/outbound.
  final pulumi.Input<String>? direction;
  /// Outbound rules email address format.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Outbound rules fully qualified domain name format.
  final pulumi.Input<List<String>>? fullyQualifiedDomainNames;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// Outbound rules phone number format.
  final pulumi.Input<List<String>>? phoneNumbers;
  /// The name of the NSP profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Inbound rules service tag names.
  final pulumi.Input<List<String>>? serviceTags;
  /// List of subscription ids
  final pulumi.Input<List<SubscriptionId>>? subscriptions;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityPerimeterAccessRuleArgs].
  /// [accessRuleName] The name of the NSP access rule.
  /// [addressPrefixes] Inbound address prefixes (IPv4/IPv6)
  /// [direction] Direction that specifies whether the access rules is inbound/outbound.
  /// [emailAddresses] Outbound rules email address format.
  /// [fullyQualifiedDomainNames] Outbound rules fully qualified domain name format.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [phoneNumbers] Outbound rules phone number format.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceTags] Inbound rules service tag names.
  /// [subscriptions] List of subscription ids
  /// [tags] Resource tags.
  NetworkSecurityPerimeterAccessRuleArgs({
    String? accessRuleName,
    List<String>? addressPrefixes,
    String? direction,
    List<String>? emailAddresses,
    List<String>? fullyQualifiedDomainNames,
    String? id,
    String? location,
    required String networkSecurityPerimeterName,
    List<String>? phoneNumbers,
    required String profileName,
    required String resourceGroupName,
    List<String>? serviceTags,
    List<SubscriptionId>? subscriptions,
    Map<String, String>? tags,
  }) :
      accessRuleName = pulumi.Input.asOptionalInput<String>(accessRuleName),
      addressPrefixes = pulumi.Input.asOptionalInput<List<String>>(addressPrefixes),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      fullyQualifiedDomainNames = pulumi.Input.asOptionalInput<List<String>>(fullyQualifiedDomainNames),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      phoneNumbers = pulumi.Input.asOptionalInput<List<String>>(phoneNumbers),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceTags = pulumi.Input.asOptionalInput<List<String>>(serviceTags),
      subscriptions = pulumi.Input.asOptionalInput<List<SubscriptionId>>(subscriptions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRuleName': ?accessRuleName,
      'addressPrefixes': ?addressPrefixes,
      'direction': ?direction,
      'emailAddresses': ?emailAddresses,
      'fullyQualifiedDomainNames': ?fullyQualifiedDomainNames,
      'id': ?id,
      'location': ?location,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'phoneNumbers': ?phoneNumbers,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'serviceTags': ?serviceTags,
      'subscriptions': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionId>, List<Map<String, dynamic>>>(subscriptions, (value) => pulumi.Input.encodeList<SubscriptionId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory NetworkSecurityPerimeterAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterAccessRuleArgs(
      accessRuleName: map['accessRuleName'] == null ? null : map['accessRuleName'] as String,
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      direction: map['direction'] == null ? null : map['direction'] as String,
      emailAddresses: map['emailAddresses'] == null ? null : (map['emailAddresses'] as List).cast<String>(),
      fullyQualifiedDomainNames: map['fullyQualifiedDomainNames'] == null ? null : (map['fullyQualifiedDomainNames'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      networkSecurityPerimeterName: map['networkSecurityPerimeterName'] as String,
      phoneNumbers: map['phoneNumbers'] == null ? null : (map['phoneNumbers'] as List).cast<String>(),
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceTags: map['serviceTags'] == null ? null : (map['serviceTags'] as List).cast<String>(),
      subscriptions: map['subscriptions'] == null ? null : pulumi.Input.decodeList<SubscriptionId>(map['subscriptions'], (value) => SubscriptionId.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

