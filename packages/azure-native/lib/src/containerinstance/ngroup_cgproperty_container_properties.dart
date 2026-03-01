// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_mount.dart';

/// container properties
class NGroupCGPropertyContainerProperties {
  final List<VolumeMount>? volumeMounts;

  /// Creates a new [NGroupCGPropertyContainerProperties].
  /// [volumeMounts] Optional.
  NGroupCGPropertyContainerProperties({
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory NGroupCGPropertyContainerProperties.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyContainerProperties(
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

