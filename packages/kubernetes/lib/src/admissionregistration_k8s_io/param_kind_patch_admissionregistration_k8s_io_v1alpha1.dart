// ignore_for_file: unused_element, unnecessary_cast


/// ParamKind is a tuple of Group Kind and Version.
class ParamKindPatchAdmissionregistrationK8sIoV1alpha1 {
  /// APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  final String? apiVersion;
  /// Kind is the API kind the resources belong to. Required.
  final String? kind;

  /// Creates a new [ParamKindPatchAdmissionregistrationK8sIoV1alpha1].
  /// [apiVersion] APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  /// [kind] Kind is the API kind the resources belong to. Required.
  ParamKindPatchAdmissionregistrationK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
    };
  }

  factory ParamKindPatchAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ParamKindPatchAdmissionregistrationK8sIoV1alpha1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}

