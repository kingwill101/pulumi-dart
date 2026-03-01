// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_configuration_response.dart';

/// Dynamic pool configuration.
class DynamicPoolConfigurationResponse {
  /// The lifecycle configuration of a session in the dynamic session pool
  final LifecycleConfigurationResponse? lifecycleConfiguration;

  /// Creates a new [DynamicPoolConfigurationResponse].
  /// [lifecycleConfiguration] The lifecycle configuration of a session in the dynamic session pool
  DynamicPoolConfigurationResponse({
    this.lifecycleConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifecycleConfiguration': ?lifecycleConfiguration == null ? null : lifecycleConfiguration!.toMap(),
    };
  }

  factory DynamicPoolConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DynamicPoolConfigurationResponse(
      lifecycleConfiguration: map['lifecycleConfiguration'] == null ? null : LifecycleConfigurationResponse.fromMap((map['lifecycleConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

