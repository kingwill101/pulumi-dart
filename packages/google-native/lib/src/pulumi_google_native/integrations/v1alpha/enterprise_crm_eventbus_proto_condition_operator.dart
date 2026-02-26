/// Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.
enum EnterpriseCrmEventbusProtoConditionOperator {
  unset("UNSET"),
  equals("EQUALS"),
  contains("CONTAINS"),
  lessThan("LESS_THAN"),
  greaterThan("GREATER_THAN"),
  exists("EXISTS"),
  doesNotExist("DOES_NOT_EXIST"),
  isEmpty("IS_EMPTY"),
  isNotEmpty("IS_NOT_EMPTY");

  const EnterpriseCrmEventbusProtoConditionOperator(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoConditionOperator fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoConditionOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusProtoConditionOperator value: $value');
  }
}
