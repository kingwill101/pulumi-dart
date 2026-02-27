// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataExchange.
class GetDataExchangeArgs2 {
  final Input<String> dataExchangeId;
  final Input<String> location;
  final Input<String>? project;

  GetDataExchangeArgs2({
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

  factory GetDataExchangeArgs2.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeArgs2(
      dataExchangeId: Input.asInput<String>(map['dataExchangeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
