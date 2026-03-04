// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to the APM
class ApmReference {
  /// Resource Id of the APM
  final pulumi.Input<String> resourceId;

  /// Creates a new [ApmReference].
  /// [resourceId] Resource Id of the APM
  ApmReference({required this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceId': resourceId};
  }

  factory ApmReference.fromMap(Map<String, dynamic> map) {
    return ApmReference(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
