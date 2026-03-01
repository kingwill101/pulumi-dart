// ignore_for_file: unused_element, unnecessary_cast

class VectorsIndexMetadataConfiguration {
  /// List of non-filterable metadata keys.
  final List<String> nonFilterableMetadataKeys;

  /// Creates a new [VectorsIndexMetadataConfiguration].
  /// [nonFilterableMetadataKeys] List of non-filterable metadata keys.
  VectorsIndexMetadataConfiguration({required this.nonFilterableMetadataKeys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonFilterableMetadataKeys': nonFilterableMetadataKeys,
    };
  }

  factory VectorsIndexMetadataConfiguration.fromMap(Map<String, dynamic> map) {
    return VectorsIndexMetadataConfiguration(
      nonFilterableMetadataKeys: (map['nonFilterableMetadataKeys'] as List)
          .cast<String>(),
    );
  }
}
