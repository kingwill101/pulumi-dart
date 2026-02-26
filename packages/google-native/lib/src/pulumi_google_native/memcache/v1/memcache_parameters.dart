// ignore_for_file: unused_element, unnecessary_cast

class MemcacheParameters {
  /// User defined set of parameters to use in the memcached process.
  final Map<String, String>? params;

  MemcacheParameters({
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

  factory MemcacheParameters.fromMap(Map<String, dynamic> map) {
    return MemcacheParameters(
      params: map['params'] == null
          ? null
          : (map['params'] as Map).cast<String, String>(),
    );
  }
}
