// ignore_for_file: unused_element, unnecessary_cast


/// Holds details about product hierarchy information.
class HierarchyInformationResponse {
  /// Represents Model Display Name.
  final String? configurationIdDisplayName;
  /// Represents configuration name that uniquely identifies configuration.
  final String? configurationName;
  /// Represents product family name that uniquely identifies product family.
  final String? productFamilyName;
  /// Represents product line name that uniquely identifies product line.
  final String? productLineName;
  /// Represents product name that uniquely identifies product.
  final String? productName;

  /// Creates a new [HierarchyInformationResponse].
  /// [configurationIdDisplayName] Represents Model Display Name.
  /// [configurationName] Represents configuration name that uniquely identifies configuration.
  /// [productFamilyName] Represents product family name that uniquely identifies product family.
  /// [productLineName] Represents product line name that uniquely identifies product line.
  /// [productName] Represents product name that uniquely identifies product.
  HierarchyInformationResponse({
    this.configurationIdDisplayName,
    this.configurationName,
    this.productFamilyName,
    this.productLineName,
    this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationIdDisplayName': ?configurationIdDisplayName,
      'configurationName': ?configurationName,
      'productFamilyName': ?productFamilyName,
      'productLineName': ?productLineName,
      'productName': ?productName,
    };
  }

  factory HierarchyInformationResponse.fromMap(Map<String, dynamic> map) {
    return HierarchyInformationResponse(
      configurationIdDisplayName: map['configurationIdDisplayName'] == null ? null : map['configurationIdDisplayName'] as String,
      configurationName: map['configurationName'] == null ? null : map['configurationName'] as String,
      productFamilyName: map['productFamilyName'] == null ? null : map['productFamilyName'] as String,
      productLineName: map['productLineName'] == null ? null : map['productLineName'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
    );
  }
}

