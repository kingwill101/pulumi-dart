// ignore_for_file: unused_element, unnecessary_cast


/// Describes product display information.
class DisplayInfoResponse {
  /// Configuration display name.
  final String configurationDisplayName;
  /// Product family display name.
  final String productFamilyDisplayName;

  /// Creates a new [DisplayInfoResponse].
  /// [configurationDisplayName] Configuration display name.
  /// [productFamilyDisplayName] Product family display name.
  DisplayInfoResponse({
    required this.configurationDisplayName,
    required this.productFamilyDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationDisplayName': configurationDisplayName,
      'productFamilyDisplayName': productFamilyDisplayName,
    };
  }

  factory DisplayInfoResponse.fromMap(Map<String, dynamic> map) {
    return DisplayInfoResponse(
      configurationDisplayName: map['configurationDisplayName'] as String,
      productFamilyDisplayName: map['productFamilyDisplayName'] as String,
    );
  }
}

