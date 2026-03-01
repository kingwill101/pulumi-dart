// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoBooleanParameterArrayResponse {
  final List<bool> booleanValues;

  /// Creates a new [EnterpriseCrmEventbusProtoBooleanParameterArrayResponse].
  /// [booleanValues] Required.
  EnterpriseCrmEventbusProtoBooleanParameterArrayResponse({
    required this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'booleanValues': booleanValues};
  }

  factory EnterpriseCrmEventbusProtoBooleanParameterArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoBooleanParameterArrayResponse(
      booleanValues: (map['booleanValues'] as List).cast<bool>(),
    );
  }
}
