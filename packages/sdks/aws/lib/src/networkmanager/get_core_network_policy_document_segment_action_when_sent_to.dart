// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo {
  /// A list of strings. The list of segments that the `send-via` `action` uses.
  final pulumi.Input<List<String>>? segments;

  /// Creates a new [GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo].
  /// [segments] A list of strings. The list of segments that the `send-via` `action` uses.
  GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo({
    this.segments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segments': ?segments,
    };
  }

  factory GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentActionWhenSentTo(
      segments: map['segments'] == null ? null : ((map['segments'] as List).cast<String>()).input(),
    );
  }
}

