// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolUpdateSettingsSurgeSettings {
  /// Optional. The maximum number of nodes that can be created beyond the current size of the node pool during the update process.
  final int? maxSurge;

  /// Optional. The maximum number of nodes that can be simultaneously unavailable during the update process. A node is considered unavailable if its status is not Ready.
  final int? maxUnavailable;

  /// Creates a new [AwsNodePoolUpdateSettingsSurgeSettings].
  /// [maxSurge] Optional. The maximum number of nodes that can be created beyond the current size of the node pool during the update process.
  /// [maxUnavailable] Optional. The maximum number of nodes that can be simultaneously unavailable during the update process. A node is considered unavailable if its status is not Ready.
  AwsNodePoolUpdateSettingsSurgeSettings({
    this.maxSurge,
    this.maxUnavailable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxSurgeValue = maxSurge;
    if (maxSurgeValue != null) {
      map['maxSurge'] = maxSurgeValue;
    }
    final maxUnavailableValue = maxUnavailable;
    if (maxUnavailableValue != null) {
      map['maxUnavailable'] = maxUnavailableValue;
    }
    return map;
  }

  factory AwsNodePoolUpdateSettingsSurgeSettings.fromMap(
      Map<String, dynamic> map) {
    return AwsNodePoolUpdateSettingsSurgeSettings(
      maxSurge: map['maxSurge'] == null ? null : map['maxSurge'] as int,
      maxUnavailable:
          map['maxUnavailable'] == null ? null : map['maxUnavailable'] as int,
    );
  }
}
