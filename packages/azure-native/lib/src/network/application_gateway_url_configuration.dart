// ignore_for_file: unused_element, unnecessary_cast


/// Url configuration of the Actions set in Application Gateway.
class ApplicationGatewayUrlConfiguration {
  /// Url path which user has provided for url rewrite. Null means no path will be updated. Default value is null.
  final String? modifiedPath;
  /// Query string which user has provided for url rewrite. Null means no query string will be updated. Default value is null.
  final String? modifiedQueryString;
  /// If set as true, it will re-evaluate the url path map provided in path based request routing rules using modified path. Default value is false.
  final bool? reroute;

  /// Creates a new [ApplicationGatewayUrlConfiguration].
  /// [modifiedPath] Url path which user has provided for url rewrite. Null means no path will be updated. Default value is null.
  /// [modifiedQueryString] Query string which user has provided for url rewrite. Null means no query string will be updated. Default value is null.
  /// [reroute] If set as true, it will re-evaluate the url path map provided in path based request routing rules using modified path. Default value is false.
  ApplicationGatewayUrlConfiguration({
    this.modifiedPath,
    this.modifiedQueryString,
    this.reroute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiedPath': ?modifiedPath,
      'modifiedQueryString': ?modifiedQueryString,
      'reroute': ?reroute,
    };
  }

  factory ApplicationGatewayUrlConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlConfiguration(
      modifiedPath: map['modifiedPath'] == null ? null : map['modifiedPath'] as String,
      modifiedQueryString: map['modifiedQueryString'] == null ? null : map['modifiedQueryString'] as String,
      reroute: map['reroute'] == null ? null : map['reroute'] as bool,
    );
  }
}

