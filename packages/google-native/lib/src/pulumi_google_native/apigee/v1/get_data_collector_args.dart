// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataCollector.
class GetDataCollectorArgs {
  final pulumi.Input<String> datacollectorId;
  final pulumi.Input<String> organizationId;

  GetDataCollectorArgs({
    required this.datacollectorId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datacollectorId'] = datacollectorId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetDataCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectorArgs(
      datacollectorId: pulumi.Input.asInput<String>(map['datacollectorId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
