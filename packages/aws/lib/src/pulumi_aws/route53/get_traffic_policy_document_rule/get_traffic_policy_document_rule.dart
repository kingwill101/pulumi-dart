// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_traffic_policy_document_rule_geo_proximity_location/get_traffic_policy_document_rule_geo_proximity_location.dart';
import '../get_traffic_policy_document_rule_item/get_traffic_policy_document_rule_item.dart';
import '../get_traffic_policy_document_rule_location/get_traffic_policy_document_rule_location.dart';
import '../get_traffic_policy_document_rule_primary/get_traffic_policy_document_rule_primary.dart';
import '../get_traffic_policy_document_rule_region/get_traffic_policy_document_rule_region.dart';
import '../get_traffic_policy_document_rule_secondary/get_traffic_policy_document_rule_secondary.dart';

class GetTrafficPolicyDocumentRule {
  /// Configuration block for when you add a geoproximity rule, you configure Amazon Route 53 to route traffic to your resources based on the geographic location of your resources. Only valid for <span pulumi-lang-nodejs="`geoproximity`" pulumi-lang-dotnet="`Geoproximity`" pulumi-lang-go="`geoproximity`" pulumi-lang-python="`geoproximity`" pulumi-lang-yaml="`geoproximity`" pulumi-lang-java="`geoproximity`">`geoproximity`</span> type. See below
  final List<GetTrafficPolicyDocumentRuleGeoProximityLocation>?
      geoProximityLocations;

  /// ID of a rule you want to assign.
  final String id;

  /// Configuration block for when you add a multivalue answer rule, you configure your traffic policy to route traffic approximately randomly to your healthy resources.  Only valid for <span pulumi-lang-nodejs="`multivalue`" pulumi-lang-dotnet="`Multivalue`" pulumi-lang-go="`multivalue`" pulumi-lang-python="`multivalue`" pulumi-lang-yaml="`multivalue`" pulumi-lang-java="`multivalue`">`multivalue`</span> type. See below
  final List<GetTrafficPolicyDocumentRuleItem>? items;

  /// Configuration block for when you add a geolocation rule, you configure your traffic policy to route your traffic based on the geographic location of your users.  Only valid for <span pulumi-lang-nodejs="`geo`" pulumi-lang-dotnet="`Geo`" pulumi-lang-go="`geo`" pulumi-lang-python="`geo`" pulumi-lang-yaml="`geo`" pulumi-lang-java="`geo`">`geo`</span> type. See below
  final List<GetTrafficPolicyDocumentRuleLocation>? locations;

  /// Configuration block for the settings for the rule or endpoint that you want to route traffic to whenever the corresponding resources are available. Only valid for <span pulumi-lang-nodejs="`failover`" pulumi-lang-dotnet="`Failover`" pulumi-lang-go="`failover`" pulumi-lang-python="`failover`" pulumi-lang-yaml="`failover`" pulumi-lang-java="`failover`">`failover`</span> type. See below
  final GetTrafficPolicyDocumentRulePrimary? primary;
  final List<GetTrafficPolicyDocumentRuleRegion>? regions;

  /// Configuration block for the rule or endpoint that you want to route traffic to whenever the primary resources are not available. Only valid for <span pulumi-lang-nodejs="`failover`" pulumi-lang-dotnet="`Failover`" pulumi-lang-go="`failover`" pulumi-lang-python="`failover`" pulumi-lang-yaml="`failover`" pulumi-lang-java="`failover`">`failover`</span> type. See below
  final GetTrafficPolicyDocumentRuleSecondary? secondary;

  /// Type of the rule.
  final String? type;

  GetTrafficPolicyDocumentRule({
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
    final map = <String, dynamic>{};
    final geoProximityLocationsValue = geoProximityLocations;
    if (geoProximityLocationsValue != null) {
      map['geoProximityLocations'] = Input.encodeList<
              GetTrafficPolicyDocumentRuleGeoProximityLocation,
              Map<String, dynamic>>(
          geoProximityLocationsValue, (value) => value.toMap());
    }
    map['id'] = id;
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = Input.encodeList<GetTrafficPolicyDocumentRuleItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = Input.encodeList<GetTrafficPolicyDocumentRuleLocation,
          Map<String, dynamic>>(locationsValue, (value) => value.toMap());
    }
    final primaryValue = primary;
    if (primaryValue != null) {
      map['primary'] = primaryValue.toMap();
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = Input.encodeList<GetTrafficPolicyDocumentRuleRegion,
          Map<String, dynamic>>(regionsValue, (value) => value.toMap());
    }
    final secondaryValue = secondary;
    if (secondaryValue != null) {
      map['secondary'] = secondaryValue.toMap();
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetTrafficPolicyDocumentRule.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRule(
      geoProximityLocations: map['geoProximityLocations'] == null
          ? null
          : Input.decodeList<GetTrafficPolicyDocumentRuleGeoProximityLocation>(
              map['geoProximityLocations'],
              (value) =>
                  GetTrafficPolicyDocumentRuleGeoProximityLocation.fromMap(
                      (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      items: map['items'] == null
          ? null
          : Input.decodeList<GetTrafficPolicyDocumentRuleItem>(
              map['items'],
              (value) => GetTrafficPolicyDocumentRuleItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      locations: map['locations'] == null
          ? null
          : Input.decodeList<GetTrafficPolicyDocumentRuleLocation>(
              map['locations'],
              (value) => GetTrafficPolicyDocumentRuleLocation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      primary: map['primary'] == null
          ? null
          : GetTrafficPolicyDocumentRulePrimary.fromMap(
              (map['primary'] as Map).cast<String, dynamic>()),
      regions: map['regions'] == null
          ? null
          : Input.decodeList<GetTrafficPolicyDocumentRuleRegion>(
              map['regions'],
              (value) => GetTrafficPolicyDocumentRuleRegion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secondary: map['secondary'] == null
          ? null
          : GetTrafficPolicyDocumentRuleSecondary.fromMap(
              (map['secondary'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
