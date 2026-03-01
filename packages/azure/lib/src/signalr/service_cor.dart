// ignore_for_file: unused_element, unnecessary_cast


class ServiceCor {
  /// A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  final List<String> allowedOrigins;

  /// Creates a new [ServiceCor].
  /// [allowedOrigins] A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  ServiceCor({
    required this.allowedOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
    };
  }

  factory ServiceCor.fromMap(Map<String, dynamic> map) {
    return ServiceCor(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
    );
  }
}

