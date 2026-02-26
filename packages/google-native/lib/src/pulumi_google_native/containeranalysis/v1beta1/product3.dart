// ignore_for_file: unused_element, unnecessary_cast

/// Product contains information about a product and how to uniquely identify it.
class Product3 {
  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final String? genericUri;

  /// Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  final String? id;

  /// Name of the product.
  final String? name;

  Product3({
    this.genericUri,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final genericUriValue = genericUri;
    if (genericUriValue != null) {
      map['genericUri'] = genericUriValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory Product3.fromMap(Map<String, dynamic> map) {
    return Product3(
      genericUri:
          map['genericUri'] == null ? null : map['genericUri'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
