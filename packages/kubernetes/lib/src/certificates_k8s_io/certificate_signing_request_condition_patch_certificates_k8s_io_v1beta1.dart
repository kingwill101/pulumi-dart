// ignore_for_file: unused_element, unnecessary_cast


class CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1 {
  /// lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  final String? lastTransitionTime;
  /// timestamp for the last update to this condition
  final String? lastUpdateTime;
  /// human readable message with details about the request state
  final String? message;
  /// brief reason for the request state
  final String? reason;
  /// Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
  final String? status;
  /// request approval state, currently Approved or Denied.
  final String? type;

  /// Creates a new [CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1].
  /// [lastTransitionTime] lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  /// [lastUpdateTime] timestamp for the last update to this condition
  /// [message] human readable message with details about the request state
  /// [reason] brief reason for the request state
  /// [status] Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
  /// [type] request approval state, currently Approved or Denied.
  CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'lastUpdateTime': ?lastUpdateTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      lastUpdateTime: map['lastUpdateTime'] == null ? null : map['lastUpdateTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

