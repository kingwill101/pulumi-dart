// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_reference.dart';
import 'build_resource_requests.dart';
import 'certificate_reference.dart';

/// Build resource properties payload
class BuildProperties {
  /// The resource id of agent pool
  final String? agentPool;
  /// The APMs for this build
  final List<ApmReference>? apms;
  /// The resource id of builder to build the source code
  final String? builder;
  /// The CA Certificates for this build
  final List<CertificateReference>? certificates;
  /// The environment variables for this build
  final Map<String, String>? env;
  /// The relative path of source code
  final String? relativePath;
  /// The customized build resource for this build
  final BuildResourceRequests? resourceRequests;

  /// Creates a new [BuildProperties].
  /// [agentPool] The resource id of agent pool
  /// [apms] The APMs for this build
  /// [builder] The resource id of builder to build the source code
  /// [certificates] The CA Certificates for this build
  /// [env] The environment variables for this build
  /// [relativePath] The relative path of source code
  /// [resourceRequests] The customized build resource for this build
  BuildProperties({
    this.agentPool,
    this.apms,
    this.builder,
    this.certificates,
    this.env,
    this.relativePath,
    this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPool': ?agentPool,
      'apms': ?apms == null ? null : pulumi.Input.encodeList<ApmReference, Map<String, dynamic>>(apms!, (value) => value.toMap()),
      'builder': ?builder,
      'certificates': ?certificates == null ? null : pulumi.Input.encodeList<CertificateReference, Map<String, dynamic>>(certificates!, (value) => value.toMap()),
      'env': ?env,
      'relativePath': ?relativePath,
      'resourceRequests': ?resourceRequests == null ? null : resourceRequests!.toMap(),
    };
  }

  factory BuildProperties.fromMap(Map<String, dynamic> map) {
    return BuildProperties(
      agentPool: map['agentPool'] == null ? null : map['agentPool'] as String,
      apms: map['apms'] == null ? null : pulumi.Input.decodeList<ApmReference>(map['apms'], (value) => ApmReference.fromMap((value as Map).cast<String, dynamic>())),
      builder: map['builder'] == null ? null : map['builder'] as String,
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeList<CertificateReference>(map['certificates'], (value) => CertificateReference.fromMap((value as Map).cast<String, dynamic>())),
      env: map['env'] == null ? null : (map['env'] as Map).cast<String, String>(),
      relativePath: map['relativePath'] == null ? null : map['relativePath'] as String,
      resourceRequests: map['resourceRequests'] == null ? null : BuildResourceRequests.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
    );
  }
}

