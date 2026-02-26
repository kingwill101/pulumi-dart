// ignore_for_file: unused_element, unnecessary_cast

class MemcacheParameters2 {
  /// User defined set of parameters to use in the memcached process.
  final Map<String, String>? params;

  MemcacheParameters2({
    this.params,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = paramsValue;
    }
    return map;
  }

  factory MemcacheParameters2.fromMap(Map<String, dynamic> map) {
    return MemcacheParameters2(
      params: map['params'] == null
          ? null
          : (map['params'] as Map).cast<String, String>(),
    );
  }
}
