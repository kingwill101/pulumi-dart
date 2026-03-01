// ignore_for_file: unused_element, unnecessary_cast


/// Subnet of container group
class SubnetResponse {
  /// Specifies ARM resource id of the subnet.
  final String id;

  /// Creates a new [SubnetResponse].
  /// [id] Specifies ARM resource id of the subnet.
  SubnetResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      id: map['id'] as String,
    );
  }
}

