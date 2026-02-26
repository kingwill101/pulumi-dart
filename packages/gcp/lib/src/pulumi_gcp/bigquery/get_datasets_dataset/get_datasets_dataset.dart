// ignore_for_file: unused_element, unnecessary_cast

class GetDatasetsDataset {
  /// The id of the dataset.
  final String datasetId;

  /// The friendly name of the dataset.
  final String friendlyName;

  /// User-provided dataset labels, in key/value pairs.
  final Map<String, String> labels;

  /// The geographic location of the dataset.
  final String location;

  GetDatasetsDataset({
    required this.datasetId,
    required this.friendlyName,
    required this.labels,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['friendlyName'] = friendlyName;
    map['labels'] = labels;
    map['location'] = location;
    return map;
  }

  factory GetDatasetsDataset.fromMap(Map<String, dynamic> map) {
    return GetDatasetsDataset(
      datasetId: map['datasetId'] as String,
      friendlyName: map['friendlyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
    );
  }
}
