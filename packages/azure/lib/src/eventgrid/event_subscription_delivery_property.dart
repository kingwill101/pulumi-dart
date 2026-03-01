// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionDeliveryProperty {
  /// The name of the header to send on to the destination
  final String headerName;
  /// True if the `value` is a secret and should be protected, otherwise false. If True, then this value won't be returned from Azure API calls
  final bool? secret;
  /// If the `type` is `Dynamic`, then provide the payload field to be used as the value. Valid source fields differ by subscription type.
  final String? sourceField;
  /// Either `Static` or `Dynamic`
  final String type;
  /// If the `type` is `Static`, then provide the value to use
  final String? value;

  /// Creates a new [EventSubscriptionDeliveryProperty].
  /// [headerName] The name of the header to send on to the destination
  /// [secret] True if the `value` is a secret and should be protected, otherwise false. If True, then this value won't be returned from Azure API calls
  /// [sourceField] If the `type` is `Dynamic`, then provide the payload field to be used as the value. Valid source fields differ by subscription type.
  /// [type] Either `Static` or `Dynamic`
  /// [value] If the `type` is `Static`, then provide the value to use
  EventSubscriptionDeliveryProperty({
    required this.headerName,
    this.secret,
    this.sourceField,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'secret': ?secret,
      'sourceField': ?sourceField,
      'type': type,
      'value': ?value,
    };
  }

  factory EventSubscriptionDeliveryProperty.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionDeliveryProperty(
      headerName: map['headerName'] as String,
      secret: map['secret'] == null ? null : map['secret'] as bool,
      sourceField: map['sourceField'] == null ? null : map['sourceField'] as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

