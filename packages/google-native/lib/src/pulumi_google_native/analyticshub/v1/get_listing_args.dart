// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getListing.
class GetListingArgs {
  final Input<String> dataExchangeId;
  final Input<String> listingId;
  final Input<String> location;
  final Input<String>? project;

  GetListingArgs({
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

  factory GetListingArgs.fromMap(Map<String, dynamic> map) {
    return GetListingArgs(
      dataExchangeId: Input.asInput<String>(map['dataExchangeId']),
      listingId: Input.asInput<String>(map['listingId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
