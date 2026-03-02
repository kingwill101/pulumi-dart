// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties Keda component
class KedaConfigurationResponse {
  /// The version of Keda
  final pulumi.Input<String> version;

  /// Creates a new [KedaConfigurationResponse].
  /// [version] The version of Keda
  KedaConfigurationResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory KedaConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return KedaConfigurationResponse(
      version: (map['version'] as String).input(),
    );
  }
}

