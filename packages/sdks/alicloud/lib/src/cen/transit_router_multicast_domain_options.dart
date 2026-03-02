// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransitRouterMulticastDomainOptions {
  /// Whether to enable IGMP function for multicast domain. Default value: `disable`. Valid values: `enable`, `disable`.
  final pulumi.Input<String>? igmpv2Support;

  /// Creates a new [TransitRouterMulticastDomainOptions].
  /// [igmpv2Support] Whether to enable IGMP function for multicast domain. Default value: `disable`. Valid values: `enable`, `disable`.
  TransitRouterMulticastDomainOptions({
    this.igmpv2Support,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'igmpv2Support': ?igmpv2Support,
    };
  }

  factory TransitRouterMulticastDomainOptions.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainOptions(
      igmpv2Support: map['igmpv2Support'] == null ? null : (map['igmpv2Support'] as String).input(),
    );
  }
}

