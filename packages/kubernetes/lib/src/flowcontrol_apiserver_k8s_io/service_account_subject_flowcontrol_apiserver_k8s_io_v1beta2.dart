// ignore_for_file: unused_element, unnecessary_cast


/// ServiceAccountSubject holds detailed information for service-account-kind subject.
class ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2 {
  /// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  final String name;
  /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  final String namespace;

  /// Creates a new [ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2].
  /// [name] `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  /// [namespace] `namespace` is the namespace of matching ServiceAccount objects. Required.
  ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
    };
  }

  factory ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
    );
  }
}

