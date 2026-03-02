// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All nodes means the service will be running on all of the nodes of the job
class AllNodes {
  /// The enumerated types for the nodes value
  /// Expected value is 'All'.
  final pulumi.Input<String> nodesValueType;

  /// Creates a new [AllNodes].
  /// [nodesValueType] The enumerated types for the nodes value
  AllNodes({
    required this.nodesValueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodesValueType': nodesValueType,
    };
  }

  factory AllNodes.fromMap(Map<String, dynamic> map) {
    return AllNodes(
      nodesValueType: (map['nodesValueType'] as String).input(),
    );
  }
}

