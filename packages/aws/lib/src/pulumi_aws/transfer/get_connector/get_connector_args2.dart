// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConnector.
class GetConnectorArgs2 {
  /// Unique identifier for connector
  final Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetConnectorArgs2({
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetConnectorArgs2.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs2(
      id: Input.asInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
