// ignore_for_file: unused_element, unnecessary_cast


class MemcacheParametersMemcacheV1beta2 {
  /// User defined set of parameters to use in the memcached process.
  final Map<String, String>? params;

  /// Creates a new [MemcacheParametersMemcacheV1beta2].
  /// [params] User defined set of parameters to use in the memcached process.
  MemcacheParametersMemcacheV1beta2({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params,
    };
  }

  factory MemcacheParametersMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return MemcacheParametersMemcacheV1beta2(
      params: map['params'] == null ? null : (map['params'] as Map).cast<String, String>(),
    );
  }
}

