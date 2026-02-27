// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSource.
class GetSourceArgs4 {
  final Input<String> organizationId;
  final Input<String> sourceId;

  GetSourceArgs4({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetSourceArgs4.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs4(
      organizationId: Input.asInput<String>(map['organizationId']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
