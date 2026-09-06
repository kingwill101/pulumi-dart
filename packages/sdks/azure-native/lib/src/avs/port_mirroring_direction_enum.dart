import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of port mirroring profile.
enum PortMirroringDirectionEnum implements pulumi.PulumiEnum<String> {
  iNGRESS("INGRESS"),
  eGRESS("EGRESS"),
  bIDIRECTIONAL("BIDIRECTIONAL");

  const PortMirroringDirectionEnum(this.wireValue);
  @override
  final String wireValue;

  static PortMirroringDirectionEnum fromValue(String value) {
    for (final item in PortMirroringDirectionEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PortMirroringDirectionEnum value: $value');
  }
}
