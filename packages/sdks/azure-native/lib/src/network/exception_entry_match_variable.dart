import 'package:pulumi/pulumi.dart' as pulumi;

/// The variable on which we evaluate the exception condition
enum ExceptionEntryMatchVariable implements pulumi.PulumiEnum<String> {
  valueRequestURI("RequestURI"),
  valueRemoteAddr("RemoteAddr"),
  valueRequestHeader("RequestHeader");

  const ExceptionEntryMatchVariable(this.wireValue);
  @override
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
