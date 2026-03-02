// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkAttachment resources.
class NetworkAttachmentState {
  /// The ID of the CCN instance.
  final pulumi.Input<String>? ccnId;
  /// The ID of the Smart Access Gateway instance.
  final pulumi.Input<String>? sagId;

  /// Creates a new [NetworkAttachmentState].
  /// [ccnId] The ID of the CCN instance.
  /// [sagId] The ID of the Smart Access Gateway instance.
  NetworkAttachmentState({
    this.ccnId,
    this.sagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccnId': ?ccnId,
      'sagId': ?sagId,
    };
  }

  factory NetworkAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentState(
      ccnId: map['ccnId'] == null ? null : (map['ccnId'] as String).input(),
      sagId: map['sagId'] == null ? null : (map['sagId'] as String).input(),
    );
  }
}

