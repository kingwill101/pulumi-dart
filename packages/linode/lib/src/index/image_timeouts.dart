// ignore_for_file: unused_element, unnecessary_cast


class ImageTimeouts {
  /// Used when creating the instance image (until the instance is available)
  final String? create;

  /// Creates a new [ImageTimeouts].
  /// [create] Used when creating the instance image (until the instance is available)
  ImageTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
    };
  }

  factory ImageTimeouts.fromMap(Map<String, dynamic> map) {
    return ImageTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
    );
  }
}

