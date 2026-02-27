// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHl7V2Store.
class GetHl7V2StoreArgs {
  final Input<String> datasetId;
  final Input<String> hl7V2StoreId;
  final Input<String> location;
  final Input<String>? project;

  GetHl7V2StoreArgs({
    required this.datasetId,
    required this.hl7V2StoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['hl7V2StoreId'] = hl7V2StoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHl7V2StoreArgs.fromMap(Map<String, dynamic> map) {
    return GetHl7V2StoreArgs(
      datasetId: Input.asInput<String>(map['datasetId']),
      hl7V2StoreId: Input.asInput<String>(map['hl7V2StoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
