// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data used when creating a target resource from a source resource.
class CreationDataResponse {
  /// This is the ARM ID of the source object to be used to create the target object.
  final pulumi.Input<String>? sourceResourceId;

  /// Creates a new [CreationDataResponse].
  /// [sourceResourceId] This is the ARM ID of the source object to be used to create the target object.
  CreationDataResponse({
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory CreationDataResponse.fromMap(Map<String, dynamic> map) {
    return CreationDataResponse(
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

