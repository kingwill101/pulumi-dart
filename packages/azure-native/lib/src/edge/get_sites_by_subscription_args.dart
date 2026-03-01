// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_sites_by_subscription_args_doc}
/// Arguments for getSitesBySubscription.
/// {@endtemplate}
/// {@macro pulumi_edge_get_sites_by_subscription_args_doc}
class GetSitesBySubscriptionArgs {
  /// The name of the Site
  final pulumi.Input<String> siteName;

  /// Creates a new [GetSitesBySubscriptionArgs].
  /// [siteName] The name of the Site
  GetSitesBySubscriptionArgs({
    required String siteName,
  }) :
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteName': siteName,
    };
  }

  factory GetSitesBySubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSitesBySubscriptionArgs(
      siteName: map['siteName'] as String,
    );
  }
}

