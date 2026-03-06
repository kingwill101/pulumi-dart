// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEcsList {
  /// The ID of the ECS instance.
  final pulumi.Input<String>? ecsId;

  /// Creates a new [InstanceEcsList].
  /// [ecsId] The ID of the ECS instance.
  const InstanceEcsList({
    this.ecsId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecsId': ?ecsId,
    };
  }

  factory InstanceEcsList.fromMap(Map<String, dynamic> map) {
    return InstanceEcsList(
      ecsId: (() { final guardedValue = map['ecsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

