// ignore_for_file: unused_element, unnecessary_cast

class VolumeCacheParametersCacheConfig {
  /// Optional. Flag indicating whether a CIFS change notification is enabled for the FlexCache volume.
  final bool? cifsChangeNotifyEnabled;

  VolumeCacheParametersCacheConfig({
    this.cifsChangeNotifyEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cifsChangeNotifyEnabledValue = cifsChangeNotifyEnabled;
    if (cifsChangeNotifyEnabledValue != null) {
      map['cifsChangeNotifyEnabled'] = cifsChangeNotifyEnabledValue;
    }
    return map;
  }

  factory VolumeCacheParametersCacheConfig.fromMap(Map<String, dynamic> map) {
    return VolumeCacheParametersCacheConfig(
      cifsChangeNotifyEnabled: map['cifsChangeNotifyEnabled'] == null
          ? null
          : map['cifsChangeNotifyEnabled'] as bool,
    );
  }
}
