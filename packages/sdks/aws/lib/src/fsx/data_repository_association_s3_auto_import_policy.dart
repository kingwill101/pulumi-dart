// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataRepositoryAssociationS3AutoImportPolicy {
  /// A list of file event types to automatically export to your linked S3 bucket or import from the linked S3 bucket. Valid values are `NEW`, `CHANGED`, `DELETED`. Max of 3.
  final pulumi.Input<List<String>>? events;

  /// Creates a new [DataRepositoryAssociationS3AutoImportPolicy].
  /// [events] A list of file event types to automatically export to your linked S3 bucket or import from the linked S3 bucket. Valid values are `NEW`, `CHANGED`, `DELETED`. Max of 3.
  DataRepositoryAssociationS3AutoImportPolicy({
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': ?events,
    };
  }

  factory DataRepositoryAssociationS3AutoImportPolicy.fromMap(Map<String, dynamic> map) {
    return DataRepositoryAssociationS3AutoImportPolicy(
      events: map['events'] == null ? null : ((map['events'] as List).cast<String>()).input(),
    );
  }
}

