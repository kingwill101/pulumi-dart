// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProduct.
class GetProductResult {
  final String? acceptLanguage;
  /// ARN of the product.
  final String? arn;
  /// Time when the product was created.
  final String? createdTime;
  /// Description of the product.
  final String? description;
  /// Vendor of the product.
  final String? distributor;
  /// Whether the product has a default path.
  final bool? hasDefaultPath;
  final String? id;
  /// Name of the product.
  final String? name;
  /// Owner of the product.
  final String? owner;
  final String? region;
  /// Status of the product.
  final String? status;
  /// Field that provides support information about the product.
  final String? supportDescription;
  /// Contact email for product support.
  final String? supportEmail;
  /// Contact URL for product support.
  final String? supportUrl;
  /// Tags applied to the product.
  final Map<String, String>? tags;
  /// Type of product.
  final String? type;

  /// Creates a new [GetProductResult].
  /// [acceptLanguage] Optional.
  /// [arn] ARN of the product.
  /// [createdTime] Time when the product was created.
  /// [description] Description of the product.
  /// [distributor] Vendor of the product.
  /// [hasDefaultPath] Whether the product has a default path.
  /// [id] Optional.
  /// [name] Name of the product.
  /// [owner] Owner of the product.
  /// [region] Optional.
  /// [status] Status of the product.
  /// [supportDescription] Field that provides support information about the product.
  /// [supportEmail] Contact email for product support.
  /// [supportUrl] Contact URL for product support.
  /// [tags] Tags applied to the product.
  /// [type] Type of product.
  const GetProductResult({
    this.acceptLanguage,
    this.arn,
    this.createdTime,
    this.description,
    this.distributor,
    this.hasDefaultPath,
    this.id,
    this.name,
    this.owner,
    this.region,
    this.status,
    this.supportDescription,
    this.supportEmail,
    this.supportUrl,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'arn': ?arn,
      'createdTime': ?createdTime,
      'description': ?description,
      'distributor': ?distributor,
      'hasDefaultPath': ?hasDefaultPath,
      'id': ?id,
      'name': ?name,
      'owner': ?owner,
      'region': ?region,
      'status': ?status,
      'supportDescription': ?supportDescription,
      'supportEmail': ?supportEmail,
      'supportUrl': ?supportUrl,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributor: (() { final guardedValue = map['distributor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hasDefaultPath: (() { final guardedValue = map['hasDefaultPath']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportDescription: (() { final guardedValue = map['supportDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportEmail: (() { final guardedValue = map['supportEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
