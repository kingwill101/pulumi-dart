// ignore_for_file: unused_element, unnecessary_cast

class DataRepositoryAssociationS3AutoExportPolicy {
  /// A list of file event types to automatically export to your linked S3 bucket or import from the linked S3 bucket. Valid values are `NEW`, `CHANGED`, `DELETED`. Max of 3.
  final List<String>? events;

  DataRepositoryAssociationS3AutoExportPolicy({
    this.events,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventsValue = events;
    if (eventsValue != null) {
      map['events'] = eventsValue;
    }
    return map;
  }

  factory DataRepositoryAssociationS3AutoExportPolicy.fromMap(
      Map<String, dynamic> map) {
    return DataRepositoryAssociationS3AutoExportPolicy(
      events:
          map['events'] == null ? null : (map['events'] as List).cast<String>(),
    );
  }
}
