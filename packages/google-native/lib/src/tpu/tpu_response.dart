// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_spec_response.dart';

/// Details of the TPU resource(s) being requested.
class TpuResponse {
  /// The TPU node(s) being requested.
  final List<NodeSpecResponse> nodeSpec;

  /// Creates a new [TpuResponse].
  /// [nodeSpec] The TPU node(s) being requested.
  TpuResponse({
    required this.nodeSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeSpec'] =
        pulumi.Input.encodeList<NodeSpecResponse, Map<String, dynamic>>(
            nodeSpec, (value) => value.toMap());
    return map;
  }

  factory TpuResponse.fromMap(Map<String, dynamic> map) {
    return TpuResponse(
      nodeSpec: pulumi.Input.decodeList<NodeSpecResponse>(
          map['nodeSpec'],
          (value) =>
              NodeSpecResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
