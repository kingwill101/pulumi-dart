// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data used when creating a disk or snapshot
class CreationData {
  /// This enumerates the possible sources of a disk's creation
  final pulumi.Input<dynamic> createOption;
  /// ARM ID of the source resource used for disk creation. Required when createOption is Copy
  final pulumi.Input<String?>? sourceResourceId;

  /// Creates a new [CreationData].
  /// [createOption] This enumerates the possible sources of a disk's creation
  /// [sourceResourceId] ARM ID of the source resource used for disk creation. Required when createOption is Copy
  const CreationData({
    required this.createOption,
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': createOption,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory CreationData.fromMap(Map<String, dynamic> map) {
    return CreationData(
      createOption: pulumi.Input.fromValue(map['createOption']),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
