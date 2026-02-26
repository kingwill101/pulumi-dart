// ignore_for_file: unused_element, unnecessary_cast

import 'object_id_response.dart';

/// An X509Extension specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
class X509ExtensionResponse {
  /// Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
  final bool critical;

  /// The OID for this X.509 extension.
  final ObjectIdResponse objectId;

  /// The value of this X.509 extension.
  final String value;

  X509ExtensionResponse({
    required this.critical,
    required this.objectId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['critical'] = critical;
    map['objectId'] = objectId.toMap();
    map['value'] = value;
    return map;
  }

  factory X509ExtensionResponse.fromMap(Map<String, dynamic> map) {
    return X509ExtensionResponse(
      critical: map['critical'] as bool,
      objectId: ObjectIdResponse.fromMap(
          (map['objectId'] as Map).cast<String, dynamic>()),
      value: map['value'] as String,
    );
  }
}
