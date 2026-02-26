// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DataAccessLabel.
class DataAccessLabelArgs {
  /// Required. The ID to use for the data access label, which will become the label's
  /// display name and the final component of the label's resource name. The
  /// maximum number of characters should be 63. Regex pattern is as per AIP:
  /// https://google.aip.dev/122#resource-id-segments
  final Input<String> dataAccessLabelId;

  /// Optional. A description of the data access label for a human reader.
  final Input<String>? description;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A UDM query over event data.
  final Input<String> udmQuery;

  DataAccessLabelArgs({
    required this.dataAccessLabelId,
    this.description,
    required this.instance,
    required this.location,
    this.project,
    required this.udmQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataAccessLabelId'] = dataAccessLabelId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instance'] = instance;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['udmQuery'] = udmQuery;
    return map;
  }

  factory DataAccessLabelArgs.fromMap(Map<String, dynamic> map) {
    return DataAccessLabelArgs(
      dataAccessLabelId: Input.asInput<String>(map['dataAccessLabelId']),
      description: Input.asOptionalInput<String>(map['description']),
      instance: Input.asInput<String>(map['instance']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      udmQuery: Input.asInput<String>(map['udmQuery']),
    );
  }
}
