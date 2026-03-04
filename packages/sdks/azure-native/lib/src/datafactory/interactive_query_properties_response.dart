// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Interactive authoring capability type properties.
class InteractiveQueryPropertiesResponse {
  /// The allowed idle time for interactive authoring.
  final pulumi.Input<int> autoTerminationMinutes;

  /// The interactive authoring capability status. Must be one of InteractiveCapabilityStatus. The default value is 'Enabling'.
  final pulumi.Input<String> status;

  /// Creates a new [InteractiveQueryPropertiesResponse].
  /// [autoTerminationMinutes] The allowed idle time for interactive authoring.
  /// [status] The interactive authoring capability status. Must be one of InteractiveCapabilityStatus. The default value is 'Enabling'.
  InteractiveQueryPropertiesResponse({
    required this.autoTerminationMinutes,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTerminationMinutes': autoTerminationMinutes,
      'status': status,
    };
  }

  factory InteractiveQueryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryPropertiesResponse(
      autoTerminationMinutes: pulumi.Input.fromValue(
        map['autoTerminationMinutes'] as int,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
