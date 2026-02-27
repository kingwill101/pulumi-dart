// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIstioCanonicalService.
class GetIstioCanonicalServiceArgs {
  /// The name of the canonical service underlying this service.
  /// Corresponds to the destination_canonical_service_name metric label in label in Istio metrics.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final pulumi.Input<String> canonicalService;

  /// The namespace of the canonical service underlying this service.
  /// Corresponds to the destination_canonical_service_namespace metric label in Istio metrics.
  final pulumi.Input<String> canonicalServiceNamespace;

  /// Identifier for the mesh in which this Istio service is defined.
  /// Corresponds to the meshUid metric label in Istio metrics.
  final pulumi.Input<String> meshUid;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetIstioCanonicalServiceArgs({
    required this.canonicalService,
    required this.canonicalServiceNamespace,
    required this.meshUid,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalService'] = canonicalService;
    map['canonicalServiceNamespace'] = canonicalServiceNamespace;
    map['meshUid'] = meshUid;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIstioCanonicalServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetIstioCanonicalServiceArgs(
      canonicalService: pulumi.Input.asInput<String>(map['canonicalService']),
      canonicalServiceNamespace:
          pulumi.Input.asInput<String>(map['canonicalServiceNamespace']),
      meshUid: pulumi.Input.asInput<String>(map['meshUid']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
