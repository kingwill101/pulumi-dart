// ignore_for_file: unused_element, unnecessary_cast


/// Custom Domain of a Container App
class CustomDomain {
  /// Custom Domain binding type.
  final String? bindingType;
  /// Resource Id of the Certificate to be bound to this hostname. Must exist in the Managed Environment.
  final String? certificateId;
  /// Hostname.
  final String name;

  /// Creates a new [CustomDomain].
  /// [bindingType] Custom Domain binding type.
  /// [certificateId] Resource Id of the Certificate to be bound to this hostname. Must exist in the Managed Environment.
  /// [name] Hostname.
  CustomDomain({
    this.bindingType,
    this.certificateId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'certificateId': ?certificateId,
      'name': name,
    };
  }

  factory CustomDomain.fromMap(Map<String, dynamic> map) {
    return CustomDomain(
      bindingType: map['bindingType'] == null ? null : map['bindingType'] as String,
      certificateId: map['certificateId'] == null ? null : map['certificateId'] as String,
      name: map['name'] as String,
    );
  }
}

