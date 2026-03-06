// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for creating multiple virtual machines as a single action.
class BulkCreationParameters {
  /// The number of virtual machine instances to create.
  final pulumi.Input<int>? instanceCount;

  /// Creates a new [BulkCreationParameters].
  /// [instanceCount] The number of virtual machine instances to create.
  const BulkCreationParameters({
    this.instanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
    };
  }

  factory BulkCreationParameters.fromMap(Map<String, dynamic> map) {
    return BulkCreationParameters(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

