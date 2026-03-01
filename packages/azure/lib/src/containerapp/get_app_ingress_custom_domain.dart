// ignore_for_file: unused_element, unnecessary_cast


class GetAppIngressCustomDomain {
  /// The Binding type.
  final String certificateBindingType;
  /// The ID of the Container App Environment Certificate.
  final String certificateId;
  /// The name of the Container App.
  final String name;

  /// Creates a new [GetAppIngressCustomDomain].
  /// [certificateBindingType] The Binding type.
  /// [certificateId] The ID of the Container App Environment Certificate.
  /// [name] The name of the Container App.
  GetAppIngressCustomDomain({
    required this.certificateBindingType,
    required this.certificateId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBindingType': certificateBindingType,
      'certificateId': certificateId,
      'name': name,
    };
  }

  factory GetAppIngressCustomDomain.fromMap(Map<String, dynamic> map) {
    return GetAppIngressCustomDomain(
      certificateBindingType: map['certificateBindingType'] as String,
      certificateId: map['certificateId'] as String,
      name: map['name'] as String,
    );
  }
}

