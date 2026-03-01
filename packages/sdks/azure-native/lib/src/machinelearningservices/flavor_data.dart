// ignore_for_file: unused_element, unnecessary_cast


class FlavorData {
  /// Model flavor-specific data.
  final Map<String, String>? data;

  /// Creates a new [FlavorData].
  /// [data] Model flavor-specific data.
  FlavorData({
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
    };
  }

  factory FlavorData.fromMap(Map<String, dynamic> map) {
    return FlavorData(
      data: map['data'] == null ? null : (map['data'] as Map).cast<String, String>(),
    );
  }
}

