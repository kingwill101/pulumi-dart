// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// Defines the parameters for the origin group override configuration.
class OriginGroupOverrideResponse {
  /// Protocol this rule will use when forwarding traffic to backends.
  final String? forwardingProtocol;
  /// defines the OriginGroup that would override the DefaultOriginGroup on route.
  final ResourceReferenceResponse? originGroup;

  /// Creates a new [OriginGroupOverrideResponse].
  /// [forwardingProtocol] Protocol this rule will use when forwarding traffic to backends.
  /// [originGroup] defines the OriginGroup that would override the DefaultOriginGroup on route.
  OriginGroupOverrideResponse({
    this.forwardingProtocol,
    this.originGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingProtocol': ?forwardingProtocol,
      'originGroup': ?originGroup == null ? null : originGroup!.toMap(),
    };
  }

  factory OriginGroupOverrideResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideResponse(
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
      originGroup: map['originGroup'] == null ? null : ResourceReferenceResponse.fromMap((map['originGroup'] as Map).cast<String, dynamic>()),
    );
  }
}

