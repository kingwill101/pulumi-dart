// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data used when creating a disk or snapshot
class CreationDataResponse {
  /// This enumerates the possible sources of a disk's creation
  final pulumi.Input<String> createOption;
  /// ARM ID of the source resource used for disk creation. Required when createOption is Copy
  final pulumi.Input<String?>? sourceResourceId;
  /// Unique ID of the source resource used for disk creation. Read-only and not required for disk creation.
  final pulumi.Input<String> sourceUniqueId;

  /// Creates a new [CreationDataResponse].
  /// [createOption] This enumerates the possible sources of a disk's creation
  /// [sourceResourceId] ARM ID of the source resource used for disk creation. Required when createOption is Copy
  /// [sourceUniqueId] Unique ID of the source resource used for disk creation. Read-only and not required for disk creation.
  const CreationDataResponse({
    required this.createOption,
    this.sourceResourceId,
    required this.sourceUniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': createOption,
      'sourceResourceId': ?sourceResourceId,
      'sourceUniqueId': sourceUniqueId,
    };
  }

  factory CreationDataResponse.fromMap(Map<String, dynamic> map) {
    return CreationDataResponse(
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUniqueId: pulumi.Input.fromValue(map['sourceUniqueId'] as String),
    );
  }
}
