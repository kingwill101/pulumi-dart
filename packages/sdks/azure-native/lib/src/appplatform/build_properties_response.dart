// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_reference_response.dart';
import 'build_resource_requests_response.dart';
import 'certificate_reference_response.dart';
import 'triggered_build_result_response.dart';

/// Build resource properties payload
class BuildPropertiesResponse {
  /// The resource id of agent pool
  final pulumi.Input<String?>? agentPool;
  /// The APMs for this build
  final pulumi.Input<List<ApmReferenceResponse>?>? apms;
  /// The resource id of builder to build the source code
  final pulumi.Input<String?>? builder;
  /// The CA Certificates for this build
  final pulumi.Input<List<CertificateReferenceResponse>?>? certificates;
  /// The environment variables for this build
  final pulumi.Input<Map<String, String>?>? env;
  /// Provisioning state of the KPack build result
  final pulumi.Input<String> provisioningState;
  /// The relative path of source code
  final pulumi.Input<String?>? relativePath;
  /// The customized build resource for this build
  final pulumi.Input<BuildResourceRequestsResponse?>? resourceRequests;
  /// The build result triggered by this build
  final pulumi.Input<TriggeredBuildResultResponse> triggeredBuildResult;

  /// Creates a new [BuildPropertiesResponse].
  /// [agentPool] The resource id of agent pool
  /// [apms] The APMs for this build
  /// [builder] The resource id of builder to build the source code
  /// [certificates] The CA Certificates for this build
  /// [env] The environment variables for this build
  /// [provisioningState] Provisioning state of the KPack build result
  /// [relativePath] The relative path of source code
  /// [resourceRequests] The customized build resource for this build
  /// [triggeredBuildResult] The build result triggered by this build
  const BuildPropertiesResponse({
    this.agentPool,
    this.apms,
    this.builder,
    this.certificates,
    this.env,
    required this.provisioningState,
    this.relativePath,
    this.resourceRequests,
    required this.triggeredBuildResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPool': ?agentPool,
      'apms': ?pulumi.Input.mapOptionalInputValue<List<ApmReferenceResponse>, List<Map<String, dynamic>>>(apms, (value) => pulumi.Input.encodeList<ApmReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'builder': ?builder,
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<CertificateReferenceResponse>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<CertificateReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'env': ?env,
      'provisioningState': provisioningState,
      'relativePath': ?relativePath,
      'resourceRequests': ?pulumi.Input.mapOptionalInputValue<BuildResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
      'triggeredBuildResult': pulumi.Input.mapInputValue<TriggeredBuildResultResponse, Map<String, dynamic>>(triggeredBuildResult, (value) => value.toMap()),
    };
  }

  factory BuildPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildPropertiesResponse(
      agentPool: (() { final guardedValue = map['agentPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apms: (() { final guardedValue = map['apms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApmReferenceResponse>(guardedValue, (value) => ApmReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      builder: (() { final guardedValue = map['builder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateReferenceResponse>(guardedValue, (value) => CertificateReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRequests: (() { final guardedValue = map['resourceRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildResourceRequestsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggeredBuildResult: pulumi.Input.fromValue(TriggeredBuildResultResponse.fromMap((map['triggeredBuildResult']! as Map).cast<String, dynamic>())),
    );
  }
}
