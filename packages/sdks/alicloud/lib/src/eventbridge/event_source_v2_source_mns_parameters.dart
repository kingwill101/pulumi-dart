// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceMnsParameters {
  /// Whether to enable Base64 decoding. By default, it is selected, that is, Base64 decoding is enabled.
  final pulumi.Input<bool>? isBase64Decode;
  /// The name of the Queue of the lightweight message Queue (formerly MNS).
  final pulumi.Input<String>? queueName;
  /// The region of the lightweight message queue (formerly MNS).
  final pulumi.Input<String>? regionId;

  /// Creates a new [EventSourceV2SourceMnsParameters].
  /// [isBase64Decode] Whether to enable Base64 decoding. By default, it is selected, that is, Base64 decoding is enabled.
  /// [queueName] The name of the Queue of the lightweight message Queue (formerly MNS).
  /// [regionId] The region of the lightweight message queue (formerly MNS).
  EventSourceV2SourceMnsParameters({
    this.isBase64Decode,
    this.queueName,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isBase64Decode': ?isBase64Decode,
      'queueName': ?queueName,
      'regionId': ?regionId,
    };
  }

  factory EventSourceV2SourceMnsParameters.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceMnsParameters(
      isBase64Decode: map['isBase64Decode'] == null ? null : (map['isBase64Decode']! as bool).input(),
      queueName: map['queueName'] == null ? null : (map['queueName']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
    );
  }
}

