// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataExchangeListingIamPolicy.
class GetDataExchangeListingIamPolicyArgs2 {
  final Input<String> dataExchangeId;
  final Input<String> listingId;
  final Input<String> location;
  final Input<String>? project;

  GetDataExchangeListingIamPolicyArgs2({
    required this.dataExchangeId,
    required this.listingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExchangeId'] = dataExchangeId;
    map['listingId'] = listingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataExchangeListingIamPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetDataExchangeListingIamPolicyArgs2(
      dataExchangeId: Input.asInput<String>(map['dataExchangeId']),
      listingId: Input.asInput<String>(map['listingId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
