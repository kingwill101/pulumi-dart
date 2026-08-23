// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App to be a dev service
class ServiceResponse {
  /// Dev ContainerApp service type
  final pulumi.Input<String> type;

  /// Creates a new [ServiceResponse].
  /// [type] Dev ContainerApp service type
  const ServiceResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServiceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
