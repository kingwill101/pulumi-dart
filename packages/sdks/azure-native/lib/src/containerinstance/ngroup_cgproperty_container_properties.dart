// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_mount.dart';

/// container properties
class NGroupCGPropertyContainerProperties {
  final pulumi.Input<List<VolumeMount>>? volumeMounts;

  /// Creates a new [NGroupCGPropertyContainerProperties].
  /// [volumeMounts] Optional.
  NGroupCGPropertyContainerProperties({this.volumeMounts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeMounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<VolumeMount>,
            List<Map<String, dynamic>>
          >(
            volumeMounts,
            (value) =>
                pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory NGroupCGPropertyContainerProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return NGroupCGPropertyContainerProperties(
      volumeMounts: (() {
        final guardedValue = map['volumeMounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VolumeMount>(
            guardedValue,
            (value) =>
                VolumeMount.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
