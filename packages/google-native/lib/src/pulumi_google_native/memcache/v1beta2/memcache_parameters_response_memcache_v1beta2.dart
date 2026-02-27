// ignore_for_file: unused_element, unnecessary_cast

class MemcacheParametersResponseMemcacheV1beta2 {
  /// User defined set of parameters to use in the memcached process.
  final Map<String, String> params;

  MemcacheParametersResponseMemcacheV1beta2({
    required this.params,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['params'] = params;
    return map;
  }

  factory MemcacheParametersResponseMemcacheV1beta2.fromMap(
      Map<String, dynamic> map) {
    return MemcacheParametersResponseMemcacheV1beta2(
      params: (map['params'] as Map).cast<String, String>(),
    );
  }
}
