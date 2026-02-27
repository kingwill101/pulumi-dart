// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSource.
class GetSourceArgs3 {
  final Input<String> organizationId;
  final Input<String> sourceId;

  GetSourceArgs3({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetSourceArgs3.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs3(
      organizationId: Input.asInput<String>(map['organizationId']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
