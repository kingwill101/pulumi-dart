// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_configuration_response.dart';

/// Dynamic pool configuration.
class DynamicPoolConfigurationResponse {
  /// The lifecycle configuration of a session in the dynamic session pool
  final pulumi.Input<LifecycleConfigurationResponse>? lifecycleConfiguration;

  /// Creates a new [DynamicPoolConfigurationResponse].
  /// [lifecycleConfiguration] The lifecycle configuration of a session in the dynamic session pool
  DynamicPoolConfigurationResponse({this.lifecycleConfiguration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifecycleConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            LifecycleConfigurationResponse,
            Map<String, dynamic>
          >(lifecycleConfiguration, (value) => value.toMap()),
    };
  }

  factory DynamicPoolConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DynamicPoolConfigurationResponse(
      lifecycleConfiguration: (() {
        final guardedValue = map['lifecycleConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LifecycleConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
