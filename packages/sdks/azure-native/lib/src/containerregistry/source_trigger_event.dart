import 'package:pulumi/pulumi.dart' as pulumi;

enum SourceTriggerEvent implements pulumi.PulumiEnum<String> {
  valueCommit("commit"),
  valuePullrequest("pullrequest");

  const SourceTriggerEvent(this.wireValue);
  @override
  final String wireValue;

  static SourceTriggerEvent fromValue(String value) {
    for (final item in SourceTriggerEvent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceTriggerEvent value: $value');
  }
}
