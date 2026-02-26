// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoBooleanParameterArrayResponse {
  final List<bool> booleanValues;

  EnterpriseCrmEventbusProtoBooleanParameterArrayResponse({
    required this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['booleanValues'] = booleanValues;
    return map;
  }

  factory EnterpriseCrmEventbusProtoBooleanParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBooleanParameterArrayResponse(
      booleanValues: (map['booleanValues'] as List).cast<bool>(),
    );
  }
}
