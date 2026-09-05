// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo {
  /// A list of strings. The list of segments that the `send-via` `action` uses.
  final pulumi.Input<List<String>?>? segments;

  /// Creates a new [GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo].
  /// [segments] A list of strings. The list of segments that the `send-via` `action` uses.
  const GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo({
    this.segments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segments': ?segments,
    };
  }

  factory GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo(
      segments: (() { final guardedValue = map['segments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
