// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

class SubResourceWithColocationStatusResponse {
  /// Describes colocation status of a resource in the Proximity Placement Group.
  final pulumi.Input<InstanceViewStatusResponse>? colocationStatus;
  /// Resource Id
  final pulumi.Input<String>? id;

  /// Creates a new [SubResourceWithColocationStatusResponse].
  /// [colocationStatus] Describes colocation status of a resource in the Proximity Placement Group.
  /// [id] Resource Id
  const SubResourceWithColocationStatusResponse({
    this.colocationStatus,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colocationStatus': ?pulumi.Input.mapOptionalInputValue<InstanceViewStatusResponse, Map<String, dynamic>>(colocationStatus, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory SubResourceWithColocationStatusResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceWithColocationStatusResponse(
      colocationStatus: (() { final guardedValue = map['colocationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceViewStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
