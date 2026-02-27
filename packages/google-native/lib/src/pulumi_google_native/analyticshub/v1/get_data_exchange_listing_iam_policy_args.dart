// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataExchangeListingIamPolicy.
class GetDataExchangeListingIamPolicyArgs {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> listingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDataExchangeListingIamPolicyArgs({
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

  factory GetDataExchangeListingIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDataExchangeListingIamPolicyArgs(
      dataExchangeId: pulumi.Input.asInput<String>(map['dataExchangeId']),
      listingId: pulumi.Input.asInput<String>(map['listingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
