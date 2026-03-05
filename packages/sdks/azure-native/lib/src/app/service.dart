// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App to be a dev service
class Service {
  /// Dev ContainerApp service type
  final pulumi.Input<String> type;

  /// Creates a new [Service].
  /// [type] Dev ContainerApp service type
  Service({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

