// ignore_for_file: unused_element, unnecessary_cast

class SourceApiAssociationSourceApiAssociationConfig {
  /// Merge type. Valid values: `MANUAL_MERGE`, `AUTO_MERGE`
  final String mergeType;

  /// Creates a new [SourceApiAssociationSourceApiAssociationConfig].
  /// [mergeType] Merge type. Valid values: `MANUAL_MERGE`, `AUTO_MERGE`
  SourceApiAssociationSourceApiAssociationConfig({
    required this.mergeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mergeType'] = mergeType;
    return map;
  }

  factory SourceApiAssociationSourceApiAssociationConfig.fromMap(
      Map<String, dynamic> map) {
    return SourceApiAssociationSourceApiAssociationConfig(
      mergeType: map['mergeType'] as String,
    );
  }
}
