// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Action that need to performed.
class AccessControlListActionResponse {
  /// Name of the counter block to get match count information.
  final pulumi.Input<String>? counterName;
  /// Type of actions that can be performed.
  final pulumi.Input<String>? type;

  /// Creates a new [AccessControlListActionResponse].
  /// [counterName] Name of the counter block to get match count information.
  /// [type] Type of actions that can be performed.
  AccessControlListActionResponse({
    this.counterName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterName': ?counterName,
      'type': ?type,
    };
  }

  factory AccessControlListActionResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlListActionResponse(
      counterName: map['counterName'] == null ? null : (map['counterName'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

