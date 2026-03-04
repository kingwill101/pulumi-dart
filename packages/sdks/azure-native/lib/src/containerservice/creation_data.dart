// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data used when creating a target resource from a source resource.
class CreationData {
  /// This is the ARM ID of the source object to be used to create the target object.
  final pulumi.Input<String>? sourceResourceId;

  /// Creates a new [CreationData].
  /// [sourceResourceId] This is the ARM ID of the source object to be used to create the target object.
  CreationData({this.sourceResourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sourceResourceId': ?sourceResourceId};
  }

  factory CreationData.fromMap(Map<String, dynamic> map) {
    return CreationData(
      sourceResourceId: (() {
        final guardedValue = map['sourceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
