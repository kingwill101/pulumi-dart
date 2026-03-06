// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenZfsVolumeUserAndGroupQuota {
  /// The ID of the user or group. Valid values between `0` and `2147483647`
  final pulumi.Input<int> id;
  /// The amount of storage that the user or group can use in gibibytes (GiB). Valid values between `0` and `2147483647`
  /// * `Type` - (Required) - A value that specifies whether the quota applies to a user or group. Valid values are `USER` or `GROUP`.
  final pulumi.Input<int> storageCapacityQuotaGib;
  final pulumi.Input<String> type;

  /// Creates a new [OpenZfsVolumeUserAndGroupQuota].
  /// [id] The ID of the user or group. Valid values between `0` and `2147483647`
  /// [storageCapacityQuotaGib] The amount of storage that the user or group can use in gibibytes (GiB). Valid values between `0` and `2147483647`
  /// [type] Required.
  const OpenZfsVolumeUserAndGroupQuota({
    required this.id,
    required this.storageCapacityQuotaGib,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storageCapacityQuotaGib': storageCapacityQuotaGib,
      'type': type,
    };
  }

  factory OpenZfsVolumeUserAndGroupQuota.fromMap(Map<String, dynamic> map) {
    return OpenZfsVolumeUserAndGroupQuota(
      id: pulumi.Input.fromValue(map['id'] as int),
      storageCapacityQuotaGib: pulumi.Input.fromValue(map['storageCapacityQuotaGib'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

