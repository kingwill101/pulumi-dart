// ignore_for_file: unused_element, unnecessary_cast


class ClusterControlPlaneEncryptionKmsStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;
  /// A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  final String? message;

  /// Creates a new [ClusterControlPlaneEncryptionKmsStatus].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [message] A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  ClusterControlPlaneEncryptionKmsStatus({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ClusterControlPlaneEncryptionKmsStatus.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEncryptionKmsStatus(
      code: map['code'] == null ? null : map['code'] as int,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

