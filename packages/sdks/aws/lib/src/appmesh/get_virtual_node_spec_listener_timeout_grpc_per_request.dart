// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTimeoutGrpcPerRequest {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutGrpcPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutGrpcPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetVirtualNodeSpecListenerTimeoutGrpcPerRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTimeoutGrpcPerRequest(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
