// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnector.
class GetConnectorTransferArgs {
  /// Unique identifier for connector
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetConnectorTransferArgs({
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

  factory GetConnectorTransferArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorTransferArgs(
      id: pulumi.Input.asInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
