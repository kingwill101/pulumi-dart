// ignore_for_file: unused_element, unnecessary_cast


class FeaturesPostgresqlFlexibleServer {
  final bool? restartServerOnConfigurationValueChange;

  /// Creates a new [FeaturesPostgresqlFlexibleServer].
  /// [restartServerOnConfigurationValueChange] Optional.
  FeaturesPostgresqlFlexibleServer({
    this.restartServerOnConfigurationValueChange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartServerOnConfigurationValueChange': ?restartServerOnConfigurationValueChange,
    };
  }

  factory FeaturesPostgresqlFlexibleServer.fromMap(Map<String, dynamic> map) {
    return FeaturesPostgresqlFlexibleServer(
      restartServerOnConfigurationValueChange: map['restartServerOnConfigurationValueChange'] == null ? null : map['restartServerOnConfigurationValueChange'] as bool,
    );
  }
}

