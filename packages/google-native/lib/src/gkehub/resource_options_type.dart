// ignore_for_file: unused_element, unnecessary_cast


/// ResourceOptions represent options for Kubernetes resource generation.
class ResourceOptionsType {
  /// Optional. The Connect agent version to use for connect_resources. Defaults to the latest GKE Connect version. The version must be a currently supported version, obsolete versions will be rejected.
  final String? connectVersion;
  /// Optional. Major version of the Kubernetes cluster. This is only used to determine which version to use for the CustomResourceDefinition resources, `apiextensions/v1beta1` or`apiextensions/v1`.
  final String? k8sVersion;
  /// Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for CustomResourceDefinition resources. This option should be set for clusters with Kubernetes apiserver versions <1.16.
  final bool? v1beta1Crd;

  /// Creates a new [ResourceOptionsType].
  /// [connectVersion] Optional. The Connect agent version to use for connect_resources. Defaults to the latest GKE Connect version. The version must be a currently supported version, obsolete versions will be rejected.
  /// [k8sVersion] Optional. Major version of the Kubernetes cluster. This is only used to determine which version to use for the CustomResourceDefinition resources, `apiextensions/v1beta1` or`apiextensions/v1`.
  /// [v1beta1Crd] Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for CustomResourceDefinition resources. This option should be set for clusters with Kubernetes apiserver versions <1.16.
  ResourceOptionsType({
    this.connectVersion,
    this.k8sVersion,
    this.v1beta1Crd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectVersion': ?connectVersion,
      'k8sVersion': ?k8sVersion,
      'v1beta1Crd': ?v1beta1Crd,
    };
  }

  factory ResourceOptionsType.fromMap(Map<String, dynamic> map) {
    return ResourceOptionsType(
      connectVersion: map['connectVersion'] == null ? null : map['connectVersion'] as String,
      k8sVersion: map['k8sVersion'] == null ? null : map['k8sVersion'] as String,
      v1beta1Crd: map['v1beta1Crd'] == null ? null : map['v1beta1Crd'] as bool,
    );
  }
}

