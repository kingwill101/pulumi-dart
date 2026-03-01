// ignore_for_file: unused_element, unnecessary_cast


class GetDomainInputMappingDefaultValue {
  /// Specifies the default data version of the EventGrid Event associated with the domain.
  final String dataVersion;
  /// Specifies the default event type of the EventGrid Event associated with the domain.
  final String eventType;
  /// Specifies the default subject of the EventGrid Event associated with the domain.
  final String subject;

  /// Creates a new [GetDomainInputMappingDefaultValue].
  /// [dataVersion] Specifies the default data version of the EventGrid Event associated with the domain.
  /// [eventType] Specifies the default event type of the EventGrid Event associated with the domain.
  /// [subject] Specifies the default subject of the EventGrid Event associated with the domain.
  GetDomainInputMappingDefaultValue({
    required this.dataVersion,
    required this.eventType,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersion': dataVersion,
      'eventType': eventType,
      'subject': subject,
    };
  }

  factory GetDomainInputMappingDefaultValue.fromMap(Map<String, dynamic> map) {
    return GetDomainInputMappingDefaultValue(
      dataVersion: map['dataVersion'] as String,
      eventType: map['eventType'] as String,
      subject: map['subject'] as String,
    );
  }
}

