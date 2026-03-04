// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SourceApiAssociationSourceApiAssociationConfig {
  /// Merge type. Valid values: `MANUAL_MERGE`, `AUTO_MERGE`
  final pulumi.Input<String> mergeType;

  /// Creates a new [SourceApiAssociationSourceApiAssociationConfig].
  /// [mergeType] Merge type. Valid values: `MANUAL_MERGE`, `AUTO_MERGE`
  SourceApiAssociationSourceApiAssociationConfig({required this.mergeType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mergeType': mergeType};
  }

  factory SourceApiAssociationSourceApiAssociationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceApiAssociationSourceApiAssociationConfig(
      mergeType: pulumi.Input.fromValue(map['mergeType'] as String),
    );
  }
}
