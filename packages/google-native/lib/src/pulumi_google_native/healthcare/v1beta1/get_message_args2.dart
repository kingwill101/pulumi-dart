// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMessage.
class GetMessageArgs2 {
  final Input<String> datasetId;
  final Input<String> hl7V2StoreId;
  final Input<String> location;
  final Input<String> messageId;
  final Input<String>? project;
  final Input<String>? view;

  GetMessageArgs2({
    required this.datasetId,
    required this.hl7V2StoreId,
    required this.location,
    required this.messageId,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['hl7V2StoreId'] = hl7V2StoreId;
    map['location'] = location;
    map['messageId'] = messageId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetMessageArgs2.fromMap(Map<String, dynamic> map) {
    return GetMessageArgs2(
      datasetId: Input.asInput<String>(map['datasetId']),
      hl7V2StoreId: Input.asInput<String>(map['hl7V2StoreId']),
      location: Input.asInput<String>(map['location']),
      messageId: Input.asInput<String>(map['messageId']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
