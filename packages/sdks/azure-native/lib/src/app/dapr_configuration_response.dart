// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties Dapr component
class DaprConfigurationResponse {
  /// The version of Dapr
  final pulumi.Input<String> version;

  /// Creates a new [DaprConfigurationResponse].
  /// [version] The version of Dapr
  DaprConfigurationResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory DaprConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DaprConfigurationResponse(
      version: (map['version'] as String).input(),
    );
  }
}

