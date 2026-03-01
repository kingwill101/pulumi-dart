// ignore_for_file: unused_element, unnecessary_cast

class EventActionEventRevisionPublished {
  /// The ID of the data set to monitor for revision publications.
  /// Changing this value will recreate the resource.
  final String dataSetId;

  /// Creates a new [EventActionEventRevisionPublished].
  /// [dataSetId] The ID of the data set to monitor for revision publications.
  EventActionEventRevisionPublished({required this.dataSetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataSetId': dataSetId};
  }

  factory EventActionEventRevisionPublished.fromMap(Map<String, dynamic> map) {
    return EventActionEventRevisionPublished(
      dataSetId: map['dataSetId'] as String,
    );
  }
}
