// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Deny Assignment Exclusions
class DenyAssignmentExclusion {
  /// Object Id of Identity
  final pulumi.Input<String> id;
  /// Type of Identity
  final pulumi.Input<String> type;

  /// Creates a new [DenyAssignmentExclusion].
  /// [id] Object Id of Identity
  /// [type] Type of Identity
  DenyAssignmentExclusion({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory DenyAssignmentExclusion.fromMap(Map<String, dynamic> map) {
    return DenyAssignmentExclusion(
      id: (map['id'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

