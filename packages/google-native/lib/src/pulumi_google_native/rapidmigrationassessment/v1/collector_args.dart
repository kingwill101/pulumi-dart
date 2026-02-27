// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Collector.
class CollectorArgs {
  /// How many days to collect data.
  final Input<int>? collectionDays;

  /// Required. Id of the requesting object.
  final Input<String> collectorId;

  /// User specified description of the Collector.
  final Input<String>? description;

  /// User specified name of the Collector.
  final Input<String>? displayName;

  /// Uri for EULA (End User License Agreement) from customer.
  final Input<String>? eulaUri;

  /// User specified expected asset count.
  final Input<String>? expectedAssetCount;

  /// Labels as key value pairs.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// name of resource.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests.
  final Input<String>? requestId;

  /// Service Account email used to ingest data to this Collector.
  final Input<String>? serviceAccount;

  CollectorArgs({
    this.collectionDays,
    required this.collectorId,
    this.description,
    this.displayName,
    this.eulaUri,
    this.expectedAssetCount,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionDaysValue = collectionDays;
    if (collectionDaysValue != null) {
      map['collectionDays'] = collectionDaysValue;
    }
    map['collectorId'] = collectorId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final eulaUriValue = eulaUri;
    if (eulaUriValue != null) {
      map['eulaUri'] = eulaUriValue;
    }
    final expectedAssetCountValue = expectedAssetCount;
    if (expectedAssetCountValue != null) {
      map['expectedAssetCount'] = expectedAssetCountValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory CollectorArgs.fromMap(Map<String, dynamic> map) {
    return CollectorArgs(
      collectionDays: Input.asOptionalInput<int>(map['collectionDays']),
      collectorId: Input.asInput<String>(map['collectorId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      eulaUri: Input.asOptionalInput<String>(map['eulaUri']),
      expectedAssetCount:
          Input.asOptionalInput<String>(map['expectedAssetCount']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
    );
  }
}
