// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListenerCertificate {
  /// The ID of the Certificate.
  final pulumi.Input<String> certificateId;

  /// Creates a new [GetListenersListenerCertificate].
  /// [certificateId] The ID of the Certificate.
  GetListenersListenerCertificate({required this.certificateId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateId': certificateId};
  }

  factory GetListenersListenerCertificate.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerCertificate(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
