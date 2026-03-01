// ignore_for_file: unused_element, unnecessary_cast


/// Specifies configuration of a redis module
class ModuleResponse {
  /// Configuration options for the module, e.g. 'ERROR_RATE 0.01 INITIAL_SIZE 400'.
  final String? args;
  /// The name of the module, e.g. 'RedisBloom', 'RediSearch', 'RedisTimeSeries'
  final String name;
  /// The version of the module, e.g. '1.0'.
  final String version;

  /// Creates a new [ModuleResponse].
  /// [args] Configuration options for the module, e.g. 'ERROR_RATE 0.01 INITIAL_SIZE 400'.
  /// [name] The name of the module, e.g. 'RedisBloom', 'RediSearch', 'RedisTimeSeries'
  /// [version] The version of the module, e.g. '1.0'.
  ModuleResponse({
    this.args,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'name': name,
      'version': version,
    };
  }

  factory ModuleResponse.fromMap(Map<String, dynamic> map) {
    return ModuleResponse(
      args: map['args'] == null ? null : map['args'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

