// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_mount_response.dart';

/// container properties
class NGroupCGPropertyContainerResponseProperties {
  final List<VolumeMountResponse>? volumeMounts;

  /// Creates a new [NGroupCGPropertyContainerResponseProperties].
  /// [volumeMounts] Optional.
  NGroupCGPropertyContainerResponseProperties({
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory NGroupCGPropertyContainerResponseProperties.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyContainerResponseProperties(
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts'], (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

