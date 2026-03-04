// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMeshSpecEgressFilter {
  final pulumi.Input<String> type;

  /// Creates a new [GetMeshSpecEgressFilter].
  /// [type] Required.
  GetMeshSpecEgressFilter({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory GetMeshSpecEgressFilter.fromMap(Map<String, dynamic> map) {
    return GetMeshSpecEgressFilter(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
