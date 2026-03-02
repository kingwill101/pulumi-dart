// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_type_response.dart';
import 'member_identity_certificate_response.dart';

/// Additional Managed CCF properties.
class ManagedCCFPropertiesResponse {
  /// Unique name for the Managed CCF.
  final pulumi.Input<String> appName;
  /// Endpoint for calling Managed CCF Service.
  final pulumi.Input<String> appUri;
  /// Deployment Type of Managed CCF
  final pulumi.Input<DeploymentTypeResponse>? deploymentType;
  /// Endpoint for accessing network identity.
  final pulumi.Input<String> identityServiceUri;
  /// List of member identity certificates for  Managed CCF
  final pulumi.Input<List<MemberIdentityCertificateResponse>>? memberIdentityCertificates;
  /// Number of CCF nodes in the Managed CCF.
  final pulumi.Input<int>? nodeCount;
  /// Provisioning state of Managed CCF Resource
  final pulumi.Input<String> provisioningState;
  /// Object representing RunningState for Managed CCF.
  final pulumi.Input<String>? runningState;

  /// Creates a new [ManagedCCFPropertiesResponse].
  /// [appName] Unique name for the Managed CCF.
  /// [appUri] Endpoint for calling Managed CCF Service.
  /// [deploymentType] Deployment Type of Managed CCF
  /// [identityServiceUri] Endpoint for accessing network identity.
  /// [memberIdentityCertificates] List of member identity certificates for  Managed CCF
  /// [nodeCount] Number of CCF nodes in the Managed CCF.
  /// [provisioningState] Provisioning state of Managed CCF Resource
  /// [runningState] Object representing RunningState for Managed CCF.
  ManagedCCFPropertiesResponse({
    required this.appName,
    required this.appUri,
    this.deploymentType,
    required this.identityServiceUri,
    this.memberIdentityCertificates,
    this.nodeCount,
    required this.provisioningState,
    this.runningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'appUri': appUri,
      'deploymentType': ?pulumi.Input.mapOptionalInputValue<DeploymentTypeResponse, Map<String, dynamic>>(deploymentType, (value) => value.toMap()),
      'identityServiceUri': identityServiceUri,
      'memberIdentityCertificates': ?pulumi.Input.mapOptionalInputValue<List<MemberIdentityCertificateResponse>, List<Map<String, dynamic>>>(memberIdentityCertificates, (value) => pulumi.Input.encodeList<MemberIdentityCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeCount': ?nodeCount,
      'provisioningState': provisioningState,
      'runningState': ?runningState,
    };
  }

  factory ManagedCCFPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedCCFPropertiesResponse(
      appName: (map['appName'] as String).input(),
      appUri: (map['appUri'] as String).input(),
      deploymentType: map['deploymentType'] == null ? null : (DeploymentTypeResponse.fromMap((map['deploymentType']! as Map).cast<String, dynamic>())).input(),
      identityServiceUri: (map['identityServiceUri'] as String).input(),
      memberIdentityCertificates: map['memberIdentityCertificates'] == null ? null : (pulumi.Input.decodeList<MemberIdentityCertificateResponse>(map['memberIdentityCertificates']!, (value) => MemberIdentityCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      runningState: map['runningState'] == null ? null : (map['runningState']! as String).input(),
    );
  }
}

