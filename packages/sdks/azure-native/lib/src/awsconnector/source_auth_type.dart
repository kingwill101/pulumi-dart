import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum SourceAuthType implements pulumi.PulumiEnum<String> {
  cODECONNECTIONS("CODECONNECTIONS"),
  oAUTH("OAUTH");

  const SourceAuthType(this.wireValue);
  @override
  final String wireValue;

  static SourceAuthType fromValue(String value) {
    for (final item in SourceAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceAuthType value: $value');
  }
}
