// ignore_for_file: unused_element, unnecessary_cast


class WorkloadWorkloadPropertyExtendedMetadataValue {
  /// (Output)
  /// The resource name for the Extended Metadata Schema.
  final String? extendedMetadataSchema;
  /// (Output)
  /// The metadata contents as a JSON string.
  final String? metadataStruct;

  /// Creates a new [WorkloadWorkloadPropertyExtendedMetadataValue].
  /// [extendedMetadataSchema] (Output)
  /// [metadataStruct] (Output)
  WorkloadWorkloadPropertyExtendedMetadataValue({
    this.extendedMetadataSchema,
    this.metadataStruct,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedMetadataSchema': ?extendedMetadataSchema,
      'metadataStruct': ?metadataStruct,
    };
  }

  factory WorkloadWorkloadPropertyExtendedMetadataValue.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyExtendedMetadataValue(
      extendedMetadataSchema: map['extendedMetadataSchema'] == null ? null : map['extendedMetadataSchema'] as String,
      metadataStruct: map['metadataStruct'] == null ? null : map['metadataStruct'] as String,
    );
  }
}

