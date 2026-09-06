// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Contains the DDoS protection settings of the public IP.
class DdosSettingsInterfaceEndpointResponse {
  /// The DDoS custom policy associated with the public IP.
  final pulumi.Input<SubResourceResponse?>? ddosCustomPolicy;
  /// The DDoS protection policy customizability of the public IP. Only standard coverage will have the ability to be customized.
  final pulumi.Input<String?>? protectionCoverage;

  /// Creates a new [DdosSettingsInterfaceEndpointResponse].
  /// [ddosCustomPolicy] The DDoS custom policy associated with the public IP.
  /// [protectionCoverage] The DDoS protection policy customizability of the public IP. Only standard coverage will have the ability to be customized.
  const DdosSettingsInterfaceEndpointResponse({
    this.ddosCustomPolicy,
    this.protectionCoverage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosCustomPolicy': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(ddosCustomPolicy, (value) => value.toMap()),
      'protectionCoverage': ?protectionCoverage,
    };
  }

  factory DdosSettingsInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DdosSettingsInterfaceEndpointResponse(
      ddosCustomPolicy: (() { final guardedValue = map['ddosCustomPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectionCoverage: (() { final guardedValue = map['protectionCoverage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
