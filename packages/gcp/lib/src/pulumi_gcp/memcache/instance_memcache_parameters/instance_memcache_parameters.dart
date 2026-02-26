// ignore_for_file: unused_element, unnecessary_cast

class InstanceMemcacheParameters {
  /// (Output)
  /// This is a unique ID associated with this set of parameters.
  final String? id;

  /// User-defined set of parameters to use in the memcache process.
  final Map<String, String>? params;

  InstanceMemcacheParameters({
    this.id,
    this.params,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = paramsValue;
    }
    return map;
  }

  factory InstanceMemcacheParameters.fromMap(Map<String, dynamic> map) {
    return InstanceMemcacheParameters(
      id: map['id'] == null ? null : map['id'] as String,
      params: map['params'] == null
          ? null
          : (map['params'] as Map).cast<String, String>(),
    );
  }
}
