// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionFixedResponseVpclattice {
  final int statusCode;

  GetListenerDefaultActionFixedResponseVpclattice({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerDefaultActionFixedResponseVpclattice.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionFixedResponseVpclattice(
      statusCode: map['statusCode'] as int,
    );
  }
}
