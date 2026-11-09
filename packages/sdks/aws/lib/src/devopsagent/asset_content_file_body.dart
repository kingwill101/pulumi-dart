// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetContentFileBody {
  /// Base64-encoded binary file content.
  final pulumi.Input<String?>? bytes;
  /// Text file content.
  final pulumi.Input<String?>? text;

  /// Creates a new [AssetContentFileBody].
  /// [bytes] Base64-encoded binary file content.
  /// [text] Text file content.
  const AssetContentFileBody({
    this.bytes,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': ?bytes,
      'text': ?text,
    };
  }

  factory AssetContentFileBody.fromMap(Map<String, dynamic> map) {
    return AssetContentFileBody(
      bytes: (() { final guardedValue = map['bytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
