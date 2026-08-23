// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_rule_status_provisioning_status_response.dart';

/// The observed state of inbound rule
class InboundRuleStatusResponse {
  /// InboundRule provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// InboundRule provisioning status
  final pulumi.Input<InboundRuleStatusProvisioningStatusResponse>? provisioningStatus;

  /// Creates a new [InboundRuleStatusResponse].
  /// [errorCode] InboundRule provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] InboundRule provisioning status
  const InboundRuleStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<InboundRuleStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory InboundRuleStatusResponse.fromMap(Map<String, dynamic> map) {
    return InboundRuleStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InboundRuleStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
