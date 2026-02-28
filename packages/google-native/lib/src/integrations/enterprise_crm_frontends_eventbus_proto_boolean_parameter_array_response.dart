// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse {
  final List<bool> booleanValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse].
  /// [booleanValues] Required.
  EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse({
    required this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValues': booleanValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse(
      booleanValues: (map['booleanValues'] as List).cast<bool>(),
    );
  }
}

