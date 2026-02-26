// ignore_for_file: unused_element, unnecessary_cast

class MemcacheParametersResponse2 {
  /// User defined set of parameters to use in the memcached process.
  final Map<String, String> params;

  MemcacheParametersResponse2({
    required this.params,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['params'] = params;
    return map;
  }

  factory MemcacheParametersResponse2.fromMap(Map<String, dynamic> map) {
    return MemcacheParametersResponse2(
      params: (map['params'] as Map).cast<String, String>(),
    );
  }
}
