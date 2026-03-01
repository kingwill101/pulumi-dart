// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_get_kubernetes_versions_args_doc}
/// Arguments for getKubernetesVersions.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_get_kubernetes_versions_args_doc}
class GetKubernetesVersionsArgs {
  /// The fully qualified Azure Resource Manager identifier of the custom location resource.
  final pulumi.Input<String> customLocationResourceUri;

  /// Creates a new [GetKubernetesVersionsArgs].
  /// [customLocationResourceUri] The fully qualified Azure Resource Manager identifier of the custom location resource.
  GetKubernetesVersionsArgs({
    required String customLocationResourceUri,
  }) :
      customLocationResourceUri = pulumi.Input.asInput<String>(customLocationResourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationResourceUri': customLocationResourceUri,
    };
  }

  factory GetKubernetesVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionsArgs(
      customLocationResourceUri: map['customLocationResourceUri'] as String,
    );
  }
}

