// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VectorsIndexMetadataConfiguration {
  /// List of non-filterable metadata keys.
  final pulumi.Input<List<String>> nonFilterableMetadataKeys;

  /// Creates a new [VectorsIndexMetadataConfiguration].
  /// [nonFilterableMetadataKeys] List of non-filterable metadata keys.
  const VectorsIndexMetadataConfiguration({
    required this.nonFilterableMetadataKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonFilterableMetadataKeys': nonFilterableMetadataKeys,
    };
  }

  factory VectorsIndexMetadataConfiguration.fromMap(Map<String, dynamic> map) {
    return VectorsIndexMetadataConfiguration(
      nonFilterableMetadataKeys: pulumi.Input.fromValue((map['nonFilterableMetadataKeys'] as List).cast<String>()),
    );
  }
}
