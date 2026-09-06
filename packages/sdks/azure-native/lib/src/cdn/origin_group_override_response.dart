// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Defines the parameters for the origin group override configuration.
class OriginGroupOverrideResponse {
  /// Protocol this rule will use when forwarding traffic to backends.
  final pulumi.Input<String?>? forwardingProtocol;
  /// defines the OriginGroup that would override the DefaultOriginGroup on route.
  final pulumi.Input<ResourceReferenceResponse?>? originGroup;

  /// Creates a new [OriginGroupOverrideResponse].
  /// [forwardingProtocol] Protocol this rule will use when forwarding traffic to backends.
  /// [originGroup] defines the OriginGroup that would override the DefaultOriginGroup on route.
  const OriginGroupOverrideResponse({
    this.forwardingProtocol,
    this.originGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingProtocol': ?forwardingProtocol,
      'originGroup': ?pulumi.Input.mapOptionalInputValue<ResourceReferenceResponse, Map<String, dynamic>>(originGroup, (value) => value.toMap()),
    };
  }

  factory OriginGroupOverrideResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideResponse(
      forwardingProtocol: (() { final guardedValue = map['forwardingProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originGroup: (() { final guardedValue = map['originGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
