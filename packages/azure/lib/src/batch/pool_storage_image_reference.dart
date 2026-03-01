// ignore_for_file: unused_element, unnecessary_cast


class PoolStorageImageReference {
  /// Specifies the ID of the Custom Image which the virtual machines should be created from. Changing this forces a new resource to be created. See [official documentation](https://docs.microsoft.com/azure/batch/batch-custom-images) for more details.
  final String? id;
  /// Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String? offer;
  /// Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String? publisher;
  /// Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String? sku;
  /// Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created.
  ///
  /// To provision a Custom Image, the following fields are applicable:
  final String? version;

  /// Creates a new [PoolStorageImageReference].
  /// [id] Specifies the ID of the Custom Image which the virtual machines should be created from. Changing this forces a new resource to be created. See [official documentation](https://docs.microsoft.com/azure/batch/batch-custom-images) for more details.
  /// [offer] Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [sku] Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created.
  PoolStorageImageReference({
    this.id,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory PoolStorageImageReference.fromMap(Map<String, dynamic> map) {
    return PoolStorageImageReference(
      id: map['id'] == null ? null : map['id'] as String,
      offer: map['offer'] == null ? null : map['offer'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

