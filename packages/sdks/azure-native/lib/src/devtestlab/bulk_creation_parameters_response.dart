// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for creating multiple virtual machines as a single action.
class BulkCreationParametersResponse {
  /// The number of virtual machine instances to create.
  final pulumi.Input<int>? instanceCount;

  /// Creates a new [BulkCreationParametersResponse].
  /// [instanceCount] The number of virtual machine instances to create.
  BulkCreationParametersResponse({
    this.instanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
    };
  }

  factory BulkCreationParametersResponse.fromMap(Map<String, dynamic> map) {
    return BulkCreationParametersResponse(
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount']! as int).input(),
    );
  }
}

