// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProduct.
class GetProductServicecatalogResult {
  final String? acceptLanguage;

  /// ARN of the product.
  final String arn;

  /// Time when the product was created.
  final String createdTime;

  /// Description of the product.
  final String description;

  /// Vendor of the product.
  final String distributor;

  /// Whether the product has a default path.
  final bool hasDefaultPath;
  final String id;

  /// Name of the product.
  final String name;

  /// Owner of the product.
  final String owner;
  final String region;

  /// Status of the product.
  final String status;

  /// Field that provides support information about the product.
  final String supportDescription;

  /// Contact email for product support.
  final String supportEmail;

  /// Contact URL for product support.
  final String supportUrl;

  /// Tags applied to the product.
  final Map<String, String> tags;

  /// Type of product.
  final String type;

  GetProductServicecatalogResult({
    this.acceptLanguage,
    required this.arn,
    required this.createdTime,
    required this.description,
    required this.distributor,
    required this.hasDefaultPath,
    required this.id,
    required this.name,
    required this.owner,
    required this.region,
    required this.status,
    required this.supportDescription,
    required this.supportEmail,
    required this.supportUrl,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['arn'] = arn;
    map['createdTime'] = createdTime;
    map['description'] = description;
    map['distributor'] = distributor;
    map['hasDefaultPath'] = hasDefaultPath;
    map['id'] = id;
    map['name'] = name;
    map['owner'] = owner;
    map['region'] = region;
    map['status'] = status;
    map['supportDescription'] = supportDescription;
    map['supportEmail'] = supportEmail;
    map['supportUrl'] = supportUrl;
    map['tags'] = tags;
    map['type'] = type;
    return map;
  }

  factory GetProductServicecatalogResult.fromMap(Map<String, dynamic> map) {
    return GetProductServicecatalogResult(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      arn: map['arn'] as String,
      createdTime: map['createdTime'] as String,
      description: map['description'] as String,
      distributor: map['distributor'] as String,
      hasDefaultPath: map['hasDefaultPath'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      supportDescription: map['supportDescription'] as String,
      supportEmail: map['supportEmail'] as String,
      supportUrl: map['supportUrl'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
