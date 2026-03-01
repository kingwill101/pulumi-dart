// ignore_for_file: unused_element, unnecessary_cast


class EndpointGlobalDeliveryRuleModifyRequestHeaderAction {
  /// Action to be executed on a header value. Valid values are `Append`, `Delete` and `Overwrite`.
  final String action;
  /// The header name.
  final String name;
  /// The value of the header. Only needed when `action` is set to `Append` or `overwrite`.
  final String? value;

  /// Creates a new [EndpointGlobalDeliveryRuleModifyRequestHeaderAction].
  /// [action] Action to be executed on a header value. Valid values are `Append`, `Delete` and `Overwrite`.
  /// [name] The header name.
  /// [value] The value of the header. Only needed when `action` is set to `Append` or `overwrite`.
  EndpointGlobalDeliveryRuleModifyRequestHeaderAction({
    required this.action,
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'value': ?value,
    };
  }

  factory EndpointGlobalDeliveryRuleModifyRequestHeaderAction.fromMap(Map<String, dynamic> map) {
    return EndpointGlobalDeliveryRuleModifyRequestHeaderAction(
      action: map['action'] as String,
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

