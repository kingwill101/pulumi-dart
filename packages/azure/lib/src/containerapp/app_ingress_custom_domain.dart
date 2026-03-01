// ignore_for_file: unused_element, unnecessary_cast


class AppIngressCustomDomain {
  /// The Binding type.
  final String? certificateBindingType;
  /// The ID of the Container App Environment Certificate.
  final String? certificateId;
  /// The name for this Container App. Changing this forces a new resource to be created.
  final String? name;

  /// Creates a new [AppIngressCustomDomain].
  /// [certificateBindingType] The Binding type.
  /// [certificateId] The ID of the Container App Environment Certificate.
  /// [name] The name for this Container App. Changing this forces a new resource to be created.
  AppIngressCustomDomain({
    this.certificateBindingType,
    this.certificateId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBindingType': ?certificateBindingType,
      'certificateId': ?certificateId,
      'name': ?name,
    };
  }

  factory AppIngressCustomDomain.fromMap(Map<String, dynamic> map) {
    return AppIngressCustomDomain(
      certificateBindingType: map['certificateBindingType'] == null ? null : map['certificateBindingType'] as String,
      certificateId: map['certificateId'] == null ? null : map['certificateId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

