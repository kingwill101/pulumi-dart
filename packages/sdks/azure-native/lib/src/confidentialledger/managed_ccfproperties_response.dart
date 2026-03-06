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
  const ManagedCCFPropertiesResponse({
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
      appName: pulumi.Input.fromValue(map['appName'] as String),
      appUri: pulumi.Input.fromValue(map['appUri'] as String),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityServiceUri: pulumi.Input.fromValue(map['identityServiceUri'] as String),
      memberIdentityCertificates: (() { final guardedValue = map['memberIdentityCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MemberIdentityCertificateResponse>(guardedValue, (value) => MemberIdentityCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      runningState: (() { final guardedValue = map['runningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

