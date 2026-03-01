// ignore_for_file: unused_element, unnecessary_cast


/// Parameters for creating multiple virtual machines as a single action.
class BulkCreationParameters {
  /// The number of virtual machine instances to create.
  final int? instanceCount;

  /// Creates a new [BulkCreationParameters].
  /// [instanceCount] The number of virtual machine instances to create.
  BulkCreationParameters({
    this.instanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
    };
  }

  factory BulkCreationParameters.fromMap(Map<String, dynamic> map) {
    return BulkCreationParameters(
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
    );
  }
}

