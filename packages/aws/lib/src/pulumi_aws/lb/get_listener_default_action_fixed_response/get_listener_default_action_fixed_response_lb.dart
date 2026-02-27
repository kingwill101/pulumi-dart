// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionFixedResponseLb {
  final String contentType;
  final String messageBody;
  final String statusCode;

  GetListenerDefaultActionFixedResponseLb({
    required this.contentType,
    required this.messageBody,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    map['messageBody'] = messageBody;
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerDefaultActionFixedResponseLb.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionFixedResponseLb(
      contentType: map['contentType'] as String,
      messageBody: map['messageBody'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}
