// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Collector.
class CollectorArgs {
  /// How many days to collect data.
  final pulumi.Input<int>? collectionDays;

  /// Required. Id of the requesting object.
  final pulumi.Input<String> collectorId;

  /// User specified description of the Collector.
  final pulumi.Input<String>? description;

  /// User specified name of the Collector.
  final pulumi.Input<String>? displayName;

  /// Uri for EULA (End User License Agreement) from customer.
  final pulumi.Input<String>? eulaUri;

  /// User specified expected asset count.
  final pulumi.Input<String>? expectedAssetCount;

  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// name of resource.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests.
  final pulumi.Input<String>? requestId;

  /// Service Account email used to ingest data to this Collector.
  final pulumi.Input<String>? serviceAccount;

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
      collectionDays: pulumi.Input.asOptionalInput<int>(map['collectionDays']),
      collectorId: pulumi.Input.asInput<String>(map['collectorId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      eulaUri: pulumi.Input.asOptionalInput<String>(map['eulaUri']),
      expectedAssetCount:
          pulumi.Input.asOptionalInput<String>(map['expectedAssetCount']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
    );
  }
}
