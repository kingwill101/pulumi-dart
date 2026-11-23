import 'package:pulumi/pulumi.dart' as pulumi;

enum PropagateTags implements pulumi.PulumiEnum<String> {
  sERVICE("SERVICE"),
  tASKDEFINITION("TASK_DEFINITION");

  const PropagateTags(this.wireValue);
  @override
  final String wireValue;

  static PropagateTags fromValue(String value) {
    for (final item in PropagateTags.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropagateTags value: $value');
  }
}
