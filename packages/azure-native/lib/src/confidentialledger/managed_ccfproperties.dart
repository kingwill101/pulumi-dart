// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_type.dart';
import 'member_identity_certificate.dart';

/// Additional Managed CCF properties.
class ManagedCCFProperties {
  /// Deployment Type of Managed CCF
  final DeploymentType? deploymentType;
  /// List of member identity certificates for  Managed CCF
  final List<MemberIdentityCertificate>? memberIdentityCertificates;
  /// Number of CCF nodes in the Managed CCF.
  final int? nodeCount;
  /// Object representing RunningState for Managed CCF.
  final String? runningState;

  /// Creates a new [ManagedCCFProperties].
  /// [deploymentType] Deployment Type of Managed CCF
  /// [memberIdentityCertificates] List of member identity certificates for  Managed CCF
  /// [nodeCount] Number of CCF nodes in the Managed CCF.
  /// [runningState] Object representing RunningState for Managed CCF.
  ManagedCCFProperties({
    this.deploymentType,
    this.memberIdentityCertificates,
    this.nodeCount,
    this.runningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentType': ?deploymentType == null ? null : deploymentType!.toMap(),
      'memberIdentityCertificates': ?memberIdentityCertificates == null ? null : pulumi.Input.encodeList<MemberIdentityCertificate, Map<String, dynamic>>(memberIdentityCertificates!, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'runningState': ?runningState,
    };
  }

  factory ManagedCCFProperties.fromMap(Map<String, dynamic> map) {
    return ManagedCCFProperties(
      deploymentType: map['deploymentType'] == null ? null : DeploymentType.fromMap((map['deploymentType'] as Map).cast<String, dynamic>()),
      memberIdentityCertificates: map['memberIdentityCertificates'] == null ? null : pulumi.Input.decodeList<MemberIdentityCertificate>(map['memberIdentityCertificates'], (value) => MemberIdentityCertificate.fromMap((value as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      runningState: map['runningState'] == null ? null : map['runningState'] as String,
    );
  }
}

