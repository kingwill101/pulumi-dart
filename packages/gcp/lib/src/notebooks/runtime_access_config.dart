// ignore_for_file: unused_element, unnecessary_cast

class RuntimeAccessConfig {
  /// The type of access mode this instance. For valid values, see
  /// `https://cloud.google.com/vertex-ai/docs/workbench/reference/
  /// rest/v1/projects.locations.runtimes#RuntimeAccessType`.
  final String? accessType;

  /// (Output)
  /// The proxy endpoint that is used to access the runtime.
  final String? proxyUri;

  /// The owner of this runtime after creation. Format: `alias@example.com`.
  /// Currently supports one owner only.
  final String? runtimeOwner;

  /// Creates a new [RuntimeAccessConfig].
  /// [accessType] The type of access mode this instance. For valid values, see
  /// [proxyUri] (Output)
  /// [runtimeOwner] The owner of this runtime after creation. Format: `alias@example.com`.
  RuntimeAccessConfig({this.accessType, this.proxyUri, this.runtimeOwner});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'proxyUri': ?proxyUri,
      'runtimeOwner': ?runtimeOwner,
    };
  }

  factory RuntimeAccessConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeAccessConfig(
      accessType: map['accessType'] == null
          ? null
          : map['accessType'] as String,
      proxyUri: map['proxyUri'] == null ? null : map['proxyUri'] as String,
      runtimeOwner: map['runtimeOwner'] == null
          ? null
          : map['runtimeOwner'] as String,
    );
  }
}
