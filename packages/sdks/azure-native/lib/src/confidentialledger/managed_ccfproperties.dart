// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_type.dart';
import 'member_identity_certificate.dart';

/// Additional Managed CCF properties.
class ManagedCCFProperties {
  /// Deployment Type of Managed CCF
  final pulumi.Input<DeploymentType>? deploymentType;
  /// List of member identity certificates for  Managed CCF
  final pulumi.Input<List<MemberIdentityCertificate>>? memberIdentityCertificates;
  /// Number of CCF nodes in the Managed CCF.
  final pulumi.Input<int>? nodeCount;
  /// Object representing RunningState for Managed CCF.
  final pulumi.Input<String>? runningState;

  /// Creates a new [ManagedCCFProperties].
  /// [deploymentType] Deployment Type of Managed CCF
  /// [memberIdentityCertificates] List of member identity certificates for  Managed CCF
  /// [nodeCount] Number of CCF nodes in the Managed CCF.
  /// [runningState] Object representing RunningState for Managed CCF.
  const ManagedCCFProperties({
    this.deploymentType,
    this.memberIdentityCertificates,
    this.nodeCount,
    this.runningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentType': ?pulumi.Input.mapOptionalInputValue<DeploymentType, Map<String, dynamic>>(deploymentType, (value) => value.toMap()),
      'memberIdentityCertificates': ?pulumi.Input.mapOptionalInputValue<List<MemberIdentityCertificate>, List<Map<String, dynamic>>>(memberIdentityCertificates, (value) => pulumi.Input.encodeList<MemberIdentityCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeCount': ?nodeCount,
      'runningState': ?runningState,
    };
  }

  factory ManagedCCFProperties.fromMap(Map<String, dynamic> map) {
    return ManagedCCFProperties(
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memberIdentityCertificates: (() { final guardedValue = map['memberIdentityCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MemberIdentityCertificate>(guardedValue, (value) => MemberIdentityCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      runningState: (() { final guardedValue = map['runningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
