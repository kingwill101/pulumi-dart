// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for creating multiple virtual machines as a single action.
class BulkCreationParametersResponse {
  /// The number of virtual machine instances to create.
  final pulumi.Input<int>? instanceCount;

  /// Creates a new [BulkCreationParametersResponse].
  /// [instanceCount] The number of virtual machine instances to create.
  const BulkCreationParametersResponse({
    this.instanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
    };
  }

  factory BulkCreationParametersResponse.fromMap(Map<String, dynamic> map) {
    return BulkCreationParametersResponse(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
