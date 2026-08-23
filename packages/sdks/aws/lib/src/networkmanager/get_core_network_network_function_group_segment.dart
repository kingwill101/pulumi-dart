// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkNetworkFunctionGroupSegment {
  /// List of segments associated with the `send-to` action.
  final pulumi.Input<List<String>> sendTos;
  /// List of segments associated with the `send-via` action.
  final pulumi.Input<List<String>> sendVias;

  /// Creates a new [GetCoreNetworkNetworkFunctionGroupSegment].
  /// [sendTos] List of segments associated with the `send-to` action.
  /// [sendVias] List of segments associated with the `send-via` action.
  const GetCoreNetworkNetworkFunctionGroupSegment({
    required this.sendTos,
    required this.sendVias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sendTos': sendTos,
      'sendVias': sendVias,
    };
  }

  factory GetCoreNetworkNetworkFunctionGroupSegment.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkNetworkFunctionGroupSegment(
      sendTos: pulumi.Input.fromValue((map['sendTos'] as List).cast<String>()),
      sendVias: pulumi.Input.fromValue((map['sendVias'] as List).cast<String>()),
    );
  }
}
