// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIstioCanonicalService.
class GetIstioCanonicalServiceArgs {
  /// The name of the canonical service underlying this service.
  /// Corresponds to the<span pulumi-lang-nodejs=" destinationCanonicalServiceName " pulumi-lang-dotnet=" DestinationCanonicalServiceName " pulumi-lang-go=" destinationCanonicalServiceName " pulumi-lang-python=" destination_canonical_service_name " pulumi-lang-yaml=" destinationCanonicalServiceName " pulumi-lang-java=" destinationCanonicalServiceName "> destination_canonical_service_name </span>metric label in label in Istio metrics.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final Input<String> canonicalService;

  /// The namespace of the canonical service underlying this service.
  /// Corresponds to the<span pulumi-lang-nodejs=" destinationCanonicalServiceNamespace " pulumi-lang-dotnet=" DestinationCanonicalServiceNamespace " pulumi-lang-go=" destinationCanonicalServiceNamespace " pulumi-lang-python=" destination_canonical_service_namespace " pulumi-lang-yaml=" destinationCanonicalServiceNamespace " pulumi-lang-java=" destinationCanonicalServiceNamespace "> destination_canonical_service_namespace </span>metric label in Istio metrics.
  final Input<String> canonicalServiceNamespace;

  /// Identifier for the mesh in which this Istio service is defined.
  /// Corresponds to the meshUid metric label in Istio metrics.
  final Input<String> meshUid;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      canonicalService: Input.asInput<String>(map['canonicalService']),
      canonicalServiceNamespace:
          Input.asInput<String>(map['canonicalServiceNamespace']),
      meshUid: Input.asInput<String>(map['meshUid']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
