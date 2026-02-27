// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataExchangeIamPolicy.
class GetDataExchangeIamPolicyAnalyticshubV1beta1Args {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDataExchangeIamPolicyAnalyticshubV1beta1Args({
    required this.dataExchangeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExchangeId'] = dataExchangeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataExchangeIamPolicyAnalyticshubV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDataExchangeIamPolicyAnalyticshubV1beta1Args(
      dataExchangeId: pulumi.Input.asInput<String>(map['dataExchangeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
