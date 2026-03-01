// ignore_for_file: unused_element, unnecessary_cast


/// Optional field to record suppression reason for automatic shortfall.
class AutomaticShortfallSuppressReason {
  /// Code for the suppression reason.
  final String? code;
  /// Message for suppression reason.
  final String? message;

  /// Creates a new [AutomaticShortfallSuppressReason].
  /// [code] Code for the suppression reason.
  /// [message] Message for suppression reason.
  AutomaticShortfallSuppressReason({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AutomaticShortfallSuppressReason.fromMap(Map<String, dynamic> map) {
    return AutomaticShortfallSuppressReason(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

