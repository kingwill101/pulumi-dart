// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerTimeoutHttp2PerRequest {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttp2PerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutHttp2PerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetVirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTimeoutHttp2PerRequest(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
