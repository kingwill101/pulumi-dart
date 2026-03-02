// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ListenerAdditionalCertificateAttachment resources.
class ListenerAdditionalCertificateAttachmentState {
  /// The ID of additional certificates.
  final pulumi.Input<String>? certificateId;
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The listener ID. You must specify the ID of a listener that uses SSL over TCP.
  final pulumi.Input<String>? listenerId;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [ListenerAdditionalCertificateAttachmentState].
  /// [certificateId] The ID of additional certificates.
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [listenerId] The listener ID. You must specify the ID of a listener that uses SSL over TCP.
  /// [status] The status of the resource
  ListenerAdditionalCertificateAttachmentState({
    this.certificateId,
    this.dryRun,
    this.listenerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'dryRun': ?dryRun,
      'listenerId': ?listenerId,
      'status': ?status,
    };
  }

  factory ListenerAdditionalCertificateAttachmentState.fromMap(Map<String, dynamic> map) {
    return ListenerAdditionalCertificateAttachmentState(
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

