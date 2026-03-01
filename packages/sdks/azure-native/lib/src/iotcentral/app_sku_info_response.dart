// ignore_for_file: unused_element, unnecessary_cast


/// Information about the SKU of the IoT Central application.
class AppSkuInfoResponse {
  /// The name of the SKU.
  final String name;

  /// Creates a new [AppSkuInfoResponse].
  /// [name] The name of the SKU.
  AppSkuInfoResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AppSkuInfoResponse.fromMap(Map<String, dynamic> map) {
    return AppSkuInfoResponse(
      name: map['name'] as String,
    );
  }
}

