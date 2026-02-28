// ignore_for_file: unused_element, unnecessary_cast


class MemcacheParametersResponse {
  /// User defined set of parameters to use in the memcached process.
  final Map<String, String> params;

  /// Creates a new [MemcacheParametersResponse].
  /// [params] User defined set of parameters to use in the memcached process.
  MemcacheParametersResponse({
    required this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': params,
    };
  }

  factory MemcacheParametersResponse.fromMap(Map<String, dynamic> map) {
    return MemcacheParametersResponse(
      params: (map['params'] as Map).cast<String, String>(),
    );
  }
}

