// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMessage.
class GetMessageHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> hl7V2StoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> messageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  GetMessageHealthcareV1beta1Args({
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

  factory GetMessageHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMessageHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      hl7V2StoreId: pulumi.Input.asInput<String>(map['hl7V2StoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      messageId: pulumi.Input.asInput<String>(map['messageId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
