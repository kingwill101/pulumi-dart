// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionFixedResponse3 {
  final int statusCode;

  GetListenerDefaultActionFixedResponse3({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerDefaultActionFixedResponse3.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionFixedResponse3(
      statusCode: map['statusCode'] as int,
    );
  }
}
