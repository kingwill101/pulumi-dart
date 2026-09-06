// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_mount_response.dart';

/// container properties
class NGroupCGPropertyContainerPropertiesResponse {
  final pulumi.Input<List<VolumeMountResponse>?>? volumeMounts;

  /// Creates a new [NGroupCGPropertyContainerPropertiesResponse].
  /// [volumeMounts] Optional.
  const NGroupCGPropertyContainerPropertiesResponse({
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountResponse>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NGroupCGPropertyContainerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyContainerPropertiesResponse(
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMountResponse>(guardedValue, (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
