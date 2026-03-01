// ignore_for_file: unused_element, unnecessary_cast

class GetDomainClusterConfigColdStorageOption {
  /// Whether node to node encryption is enabled.
  final bool enabled;

  /// Creates a new [GetDomainClusterConfigColdStorageOption].
  /// [enabled] Whether node to node encryption is enabled.
  GetDomainClusterConfigColdStorageOption({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetDomainClusterConfigColdStorageOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDomainClusterConfigColdStorageOption(
      enabled: map['enabled'] as bool,
    );
  }
}
