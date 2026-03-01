// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_type_response.dart';
import 'member_identity_certificate_response.dart';

/// Additional Managed CCF properties.
class ManagedCCFPropertiesResponse {
  /// Unique name for the Managed CCF.
  final String appName;
  /// Endpoint for calling Managed CCF Service.
  final String appUri;
  /// Deployment Type of Managed CCF
  final DeploymentTypeResponse? deploymentType;
  /// Endpoint for accessing network identity.
  final String identityServiceUri;
  /// List of member identity certificates for  Managed CCF
  final List<MemberIdentityCertificateResponse>? memberIdentityCertificates;
  /// Number of CCF nodes in the Managed CCF.
  final int? nodeCount;
  /// Provisioning state of Managed CCF Resource
  final String provisioningState;
  /// Object representing RunningState for Managed CCF.
  final String? runningState;

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
      'deploymentType': ?deploymentType == null ? null : deploymentType!.toMap(),
      'identityServiceUri': identityServiceUri,
      'memberIdentityCertificates': ?memberIdentityCertificates == null ? null : pulumi.Input.encodeList<MemberIdentityCertificateResponse, Map<String, dynamic>>(memberIdentityCertificates!, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'provisioningState': provisioningState,
      'runningState': ?runningState,
    };
  }

  factory ManagedCCFPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedCCFPropertiesResponse(
      appName: map['appName'] as String,
      appUri: map['appUri'] as String,
      deploymentType: map['deploymentType'] == null ? null : DeploymentTypeResponse.fromMap((map['deploymentType'] as Map).cast<String, dynamic>()),
      identityServiceUri: map['identityServiceUri'] as String,
      memberIdentityCertificates: map['memberIdentityCertificates'] == null ? null : pulumi.Input.decodeList<MemberIdentityCertificateResponse>(map['memberIdentityCertificates'], (value) => MemberIdentityCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      provisioningState: map['provisioningState'] as String,
      runningState: map['runningState'] == null ? null : map['runningState'] as String,
    );
  }
}

