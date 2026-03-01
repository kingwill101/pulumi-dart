/// The method by which the account joined the organization.
enum JoinedMethod {
  cREATED("CREATED"),
  iNVITED("INVITED");

  const JoinedMethod(this.value);
  final String value;

  static JoinedMethod fromValue(String value) {
    for (final item in JoinedMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JoinedMethod value: $value');
  }
}

