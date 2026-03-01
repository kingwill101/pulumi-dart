// ignore_for_file: unused_element, unnecessary_cast


class GetProductVersionsProductVersion {
  /// Whether the version is activated
  final bool active;
  /// The creation time of the resource
  final String createTime;
  /// Version description
  final String description;
  /// Administrator guidance
  final String guidance;
  /// ID of product version.
  final String id;
  /// Product ID
  final String productId;
  /// The first ID of the resource
  final String productVersionId;
  /// The name of the resource
  final String productVersionName;
  /// Template Type
  final String templateType;
  /// Template URL
  final String templateUrl;

  /// Creates a new [GetProductVersionsProductVersion].
  /// [active] Whether the version is activated
  /// [createTime] The creation time of the resource
  /// [description] Version description
  /// [guidance] Administrator guidance
  /// [id] ID of product version.
  /// [productId] Product ID
  /// [productVersionId] The first ID of the resource
  /// [productVersionName] The name of the resource
  /// [templateType] Template Type
  /// [templateUrl] Template URL
  GetProductVersionsProductVersion({
    required this.active,
    required this.createTime,
    required this.description,
    required this.guidance,
    required this.id,
    required this.productId,
    required this.productVersionId,
    required this.productVersionName,
    required this.templateType,
    required this.templateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'createTime': createTime,
      'description': description,
      'guidance': guidance,
      'id': id,
      'productId': productId,
      'productVersionId': productVersionId,
      'productVersionName': productVersionName,
      'templateType': templateType,
      'templateUrl': templateUrl,
    };
  }

  factory GetProductVersionsProductVersion.fromMap(Map<String, dynamic> map) {
    return GetProductVersionsProductVersion(
      active: map['active'] as bool,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      guidance: map['guidance'] as String,
      id: map['id'] as String,
      productId: map['productId'] as String,
      productVersionId: map['productVersionId'] as String,
      productVersionName: map['productVersionName'] as String,
      templateType: map['templateType'] as String,
      templateUrl: map['templateUrl'] as String,
    );
  }
}

