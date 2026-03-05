/// The variable on which we evaluate the exception condition
enum ExceptionEntryMatchVariable {
  valueRequestURI("RequestURI"),
  valueRemoteAddr("RemoteAddr"),
  valueRequestHeader("RequestHeader");

  const ExceptionEntryMatchVariable(this.wireValue);
  final String wireValue;

  static ExceptionEntryMatchVariable fromValue(String value) {
    for (final item in ExceptionEntryMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionEntryMatchVariable value: $value');
  }
}

