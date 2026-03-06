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
  const ListenerAdditionalCertificateAttachmentState({
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
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

