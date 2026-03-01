// ignore_for_file: unused_element, unnecessary_cast


/// Represents an Azure resource group.
class ResourceGroupValueResponse {
  /// Location of the resource group.
  final String? location;
  /// Name of the resource group.
  final String? name;

  /// Creates a new [ResourceGroupValueResponse].
  /// [location] Location of the resource group.
  /// [name] Name of the resource group.
  ResourceGroupValueResponse({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ResourceGroupValueResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGroupValueResponse(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

