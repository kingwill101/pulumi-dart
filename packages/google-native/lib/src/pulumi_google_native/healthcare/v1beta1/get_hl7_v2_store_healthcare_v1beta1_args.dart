// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHl7V2Store.
class GetHl7V2StoreHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> hl7V2StoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetHl7V2StoreHealthcareV1beta1Args({
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

  factory GetHl7V2StoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetHl7V2StoreHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      hl7V2StoreId: pulumi.Input.asInput<String>(map['hl7V2StoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
