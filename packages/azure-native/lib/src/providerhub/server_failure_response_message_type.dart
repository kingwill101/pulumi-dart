/// Type of server failure response message.
enum ServerFailureResponseMessageType {
  notSpecified("NotSpecified"),
  outageReporting("OutageReporting");

  const ServerFailureResponseMessageType(this.value);
  final String value;

  static ServerFailureResponseMessageType fromValue(String value) {
    for (final item in ServerFailureResponseMessageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerFailureResponseMessageType value: $value');
  }
}

