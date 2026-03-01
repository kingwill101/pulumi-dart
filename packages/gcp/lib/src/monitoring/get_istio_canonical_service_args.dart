// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_istio_canonical_service_get_istio_canonical_service_args_doc}
/// Arguments for getIstioCanonicalService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_istio_canonical_service_get_istio_canonical_service_args_doc}
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

  /// Creates a new [GetIstioCanonicalServiceArgs].
  /// [canonicalService] The name of the canonical service underlying this service.
  /// [canonicalServiceNamespace] The namespace of the canonical service underlying this service.
  /// [meshUid] Identifier for the mesh in which this Istio service is defined.
  /// [project] The ID of the project in which the resource belongs.
  GetIstioCanonicalServiceArgs({
    required String canonicalService,
    required String canonicalServiceNamespace,
    required String meshUid,
    String? project,
  }) :
      canonicalService = pulumi.Input.asInput<String>(canonicalService),
      canonicalServiceNamespace = pulumi.Input.asInput<String>(canonicalServiceNamespace),
      meshUid = pulumi.Input.asInput<String>(meshUid),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalService': canonicalService,
      'canonicalServiceNamespace': canonicalServiceNamespace,
      'meshUid': meshUid,
      'project': ?project,
    };
  }

  factory GetIstioCanonicalServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetIstioCanonicalServiceArgs(
      canonicalService: map['canonicalService'] as String,
      canonicalServiceNamespace: map['canonicalServiceNamespace'] as String,
      meshUid: map['meshUid'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

