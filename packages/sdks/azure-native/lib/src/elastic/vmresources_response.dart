// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The vm resource properties that is currently being monitored by the Elastic monitor resource.
class VMResourcesResponse {
  /// The ARM id of the VM resource.
  final pulumi.Input<String>? vmResourceId;

  /// Creates a new [VMResourcesResponse].
  /// [vmResourceId] The ARM id of the VM resource.
  VMResourcesResponse({
    this.vmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmResourceId': ?vmResourceId,
    };
  }

  factory VMResourcesResponse.fromMap(Map<String, dynamic> map) {
    return VMResourcesResponse(
      vmResourceId: map['vmResourceId'] == null ? null : (map['vmResourceId']! as String).input(),
    );
  }
}

