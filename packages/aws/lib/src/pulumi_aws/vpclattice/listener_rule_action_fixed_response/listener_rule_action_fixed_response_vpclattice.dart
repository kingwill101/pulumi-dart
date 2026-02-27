// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionFixedResponseVpclattice {
  /// The HTTP response code.
  final int statusCode;

  ListenerRuleActionFixedResponseVpclattice({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    return map;
  }

  factory ListenerRuleActionFixedResponseVpclattice.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleActionFixedResponseVpclattice(
      statusCode: map['statusCode'] as int,
    );
  }
}
