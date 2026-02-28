// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_workload_property_extended_metadata_value.dart';

class WorkloadWorkloadPropertyExtendedMetadata {
  /// (Output)
  /// The key of the extended metadata.
  final String? key;
  /// (Output)
  /// The value of the extended metadata.
  /// Structure is documented below.
  final List<WorkloadWorkloadPropertyExtendedMetadataValue>? values;

  /// Creates a new [WorkloadWorkloadPropertyExtendedMetadata].
  /// [key] (Output)
  /// [values] (Output)
  WorkloadWorkloadPropertyExtendedMetadata({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?values == null ? null : pulumi.Input.encodeList<WorkloadWorkloadPropertyExtendedMetadataValue, Map<String, dynamic>>(values!, (value) => value.toMap()),
    };
  }

  factory WorkloadWorkloadPropertyExtendedMetadata.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyExtendedMetadata(
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null ? null : pulumi.Input.decodeList<WorkloadWorkloadPropertyExtendedMetadataValue>(map['values'], (value) => WorkloadWorkloadPropertyExtendedMetadataValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

