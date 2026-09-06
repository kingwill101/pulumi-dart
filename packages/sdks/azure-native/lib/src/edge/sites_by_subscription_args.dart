// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_properties.dart';

/// {@template pulumi_edge_sites_by_subscription_args_doc}
/// The set of arguments for SitesBySubscription.
/// {@endtemplate}
/// {@macro pulumi_edge_sites_by_subscription_args_doc}
class SitesBySubscriptionArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<SiteProperties?>? properties;
  /// The name of the Site
  final pulumi.Input<String?>? siteName;

  /// Creates a new [SitesBySubscriptionArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [siteName] The name of the Site
  const SitesBySubscriptionArgs({
    this.properties,
    this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SiteProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'siteName': ?siteName,
    };
  }

  factory SitesBySubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SitesBySubscriptionArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
