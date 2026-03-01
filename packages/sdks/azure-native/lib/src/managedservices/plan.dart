// ignore_for_file: unused_element, unnecessary_cast


/// The details for the Managed Services offer’s plan in Azure Marketplace.
class Plan {
  /// Azure Marketplace plan name.
  final String name;
  /// Azure Marketplace product code.
  final String product;
  /// Azure Marketplace publisher ID.
  final String publisher;
  /// Azure Marketplace plan's version.
  final String version;

  /// Creates a new [Plan].
  /// [name] Azure Marketplace plan name.
  /// [product] Azure Marketplace product code.
  /// [publisher] Azure Marketplace publisher ID.
  /// [version] Azure Marketplace plan's version.
  Plan({
    required this.name,
    required this.product,
    required this.publisher,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'publisher': publisher,
      'version': version,
    };
  }

  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      name: map['name'] as String,
      product: map['product'] as String,
      publisher: map['publisher'] as String,
      version: map['version'] as String,
    );
  }
}

