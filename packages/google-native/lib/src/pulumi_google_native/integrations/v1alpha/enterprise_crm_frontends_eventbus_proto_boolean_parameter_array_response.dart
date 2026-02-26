// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse {
  final List<bool> booleanValues;

  EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse({
    required this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['booleanValues'] = booleanValues;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse(
      booleanValues: (map['booleanValues'] as List).cast<bool>(),
    );
  }
}
