// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamStreamModeDetail {
  /// Capacity mode of the stream. Either `ON_DEMAND` or `PROVISIONED`.
  final pulumi.Input<String> streamMode;

  /// Creates a new [GetStreamStreamModeDetail].
  /// [streamMode] Capacity mode of the stream. Either `ON_DEMAND` or `PROVISIONED`.
  GetStreamStreamModeDetail({required this.streamMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'streamMode': streamMode};
  }

  factory GetStreamStreamModeDetail.fromMap(Map<String, dynamic> map) {
    return GetStreamStreamModeDetail(
      streamMode: pulumi.Input.fromValue(map['streamMode'] as String),
    );
  }
}
