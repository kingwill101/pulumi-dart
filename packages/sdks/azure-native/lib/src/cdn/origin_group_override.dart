// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference.dart';

/// Defines the parameters for the origin group override configuration.
class OriginGroupOverride {
  /// Protocol this rule will use when forwarding traffic to backends.
  final String? forwardingProtocol;
  /// defines the OriginGroup that would override the DefaultOriginGroup on route.
  final ResourceReference? originGroup;

  /// Creates a new [OriginGroupOverride].
  /// [forwardingProtocol] Protocol this rule will use when forwarding traffic to backends.
  /// [originGroup] defines the OriginGroup that would override the DefaultOriginGroup on route.
  OriginGroupOverride({
    this.forwardingProtocol,
    this.originGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingProtocol': ?forwardingProtocol,
      'originGroup': ?originGroup == null ? null : originGroup!.toMap(),
    };
  }

  factory OriginGroupOverride.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverride(
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
      originGroup: map['originGroup'] == null ? null : ResourceReference.fromMap((map['originGroup'] as Map).cast<String, dynamic>()),
    );
  }
}

