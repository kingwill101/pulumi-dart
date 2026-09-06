// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning status of Inbound Rule
class InboundRuleStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the inbound rule
  final pulumi.Input<String?>? operationId;
  /// The status of the operation performed on the inbound rule [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [InboundRuleStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the inbound rule
  /// [status] The status of the operation performed on the inbound rule [Succeeded, Failed, InProgress]
  const InboundRuleStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory InboundRuleStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return InboundRuleStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
