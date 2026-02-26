// ignore_for_file: unused_element, unnecessary_cast

class ListingSubscriptionDestinationDatasetDatasetReference {
  /// A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final String datasetId;

  /// The ID of the project containing this dataset.
  final String projectId;

  ListingSubscriptionDestinationDatasetDatasetReference({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['projectId'] = projectId;
    return map;
  }

  factory ListingSubscriptionDestinationDatasetDatasetReference.fromMap(
      Map<String, dynamic> map) {
    return ListingSubscriptionDestinationDatasetDatasetReference(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
