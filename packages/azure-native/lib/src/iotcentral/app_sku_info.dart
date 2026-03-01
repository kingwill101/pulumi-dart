// ignore_for_file: unused_element, unnecessary_cast


/// Information about the SKU of the IoT Central application.
class AppSkuInfo {
  /// The name of the SKU.
  final String name;

  /// Creates a new [AppSkuInfo].
  /// [name] The name of the SKU.
  AppSkuInfo({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AppSkuInfo.fromMap(Map<String, dynamic> map) {
    return AppSkuInfo(
      name: map['name'] as String,
    );
  }
}

