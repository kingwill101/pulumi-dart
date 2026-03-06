// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_policy_document_rule_geo_proximity_location.dart';
import 'get_traffic_policy_document_rule_item.dart';
import 'get_traffic_policy_document_rule_location.dart';
import 'get_traffic_policy_document_rule_primary.dart';
import 'get_traffic_policy_document_rule_region.dart';
import 'get_traffic_policy_document_rule_secondary.dart';

class GetTrafficPolicyDocumentRule {
  /// Configuration block for when you add a geoproximity rule, you configure Amazon Route 53 to route traffic to your resources based on the geographic location of your resources. Only valid for `geoproximity` type. See below
  final pulumi.Input<List<GetTrafficPolicyDocumentRuleGeoProximityLocation>>? geoProximityLocations;
  /// ID of a rule you want to assign.
  final pulumi.Input<String> id;
  /// Configuration block for when you add a multivalue answer rule, you configure your traffic policy to route traffic approximately randomly to your healthy resources.  Only valid for `multivalue` type. See below
  final pulumi.Input<List<GetTrafficPolicyDocumentRuleItem>>? items;
  /// Configuration block for when you add a geolocation rule, you configure your traffic policy to route your traffic based on the geographic location of your users.  Only valid for `geo` type. See below
  final pulumi.Input<List<GetTrafficPolicyDocumentRuleLocation>>? locations;
  /// Configuration block for the settings for the rule or endpoint that you want to route traffic to whenever the corresponding resources are available. Only valid for `failover` type. See below
  final pulumi.Input<GetTrafficPolicyDocumentRulePrimary>? primary;
  final pulumi.Input<List<GetTrafficPolicyDocumentRuleRegion>>? regions;
  /// Configuration block for the rule or endpoint that you want to route traffic to whenever the primary resources are not available. Only valid for `failover` type. See below
  final pulumi.Input<GetTrafficPolicyDocumentRuleSecondary>? secondary;
  /// Type of the rule.
  final pulumi.Input<String>? type;

  /// Creates a new [GetTrafficPolicyDocumentRule].
  /// [geoProximityLocations] Configuration block for when you add a geoproximity rule, you configure Amazon Route 53 to route traffic to your resources based on the geographic location of your resources. Only valid for `geoproximity` type. See below
  /// [id] ID of a rule you want to assign.
  /// [items] Configuration block for when you add a multivalue answer rule, you configure your traffic policy to route traffic approximately randomly to your healthy resources.  Only valid for `multivalue` type. See below
  /// [locations] Configuration block for when you add a geolocation rule, you configure your traffic policy to route your traffic based on the geographic location of your users.  Only valid for `geo` type. See below
  /// [primary] Configuration block for the settings for the rule or endpoint that you want to route traffic to whenever the corresponding resources are available. Only valid for `failover` type. See below
  /// [regions] Optional.
  /// [secondary] Configuration block for the rule or endpoint that you want to route traffic to whenever the primary resources are not available. Only valid for `failover` type. See below
  /// [type] Type of the rule.
  const GetTrafficPolicyDocumentRule({
    this.geoProximityLocations,
    required this.id,
    this.items,
    this.locations,
    this.primary,
    this.regions,
    this.secondary,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoProximityLocations': ?pulumi.Input.mapOptionalInputValue<List<GetTrafficPolicyDocumentRuleGeoProximityLocation>, List<Map<String, dynamic>>>(geoProximityLocations, (value) => pulumi.Input.encodeList<GetTrafficPolicyDocumentRuleGeoProximityLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'items': ?pulumi.Input.mapOptionalInputValue<List<GetTrafficPolicyDocumentRuleItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GetTrafficPolicyDocumentRuleItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': ?pulumi.Input.mapOptionalInputValue<List<GetTrafficPolicyDocumentRuleLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<GetTrafficPolicyDocumentRuleLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primary': ?pulumi.Input.mapOptionalInputValue<GetTrafficPolicyDocumentRulePrimary, Map<String, dynamic>>(primary, (value) => value.toMap()),
      'regions': ?pulumi.Input.mapOptionalInputValue<List<GetTrafficPolicyDocumentRuleRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<GetTrafficPolicyDocumentRuleRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondary': ?pulumi.Input.mapOptionalInputValue<GetTrafficPolicyDocumentRuleSecondary, Map<String, dynamic>>(secondary, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory GetTrafficPolicyDocumentRule.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRule(
      geoProximityLocations: (() { final guardedValue = map['geoProximityLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTrafficPolicyDocumentRuleGeoProximityLocation>(guardedValue, (value) => GetTrafficPolicyDocumentRuleGeoProximityLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTrafficPolicyDocumentRuleItem>(guardedValue, (value) => GetTrafficPolicyDocumentRuleItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTrafficPolicyDocumentRuleLocation>(guardedValue, (value) => GetTrafficPolicyDocumentRuleLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTrafficPolicyDocumentRulePrimary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTrafficPolicyDocumentRuleRegion>(guardedValue, (value) => GetTrafficPolicyDocumentRuleRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondary: (() { final guardedValue = map['secondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTrafficPolicyDocumentRuleSecondary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

