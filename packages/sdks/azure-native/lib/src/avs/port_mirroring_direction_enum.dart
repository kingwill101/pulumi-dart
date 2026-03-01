/// Direction of port mirroring profile.
enum PortMirroringDirectionEnum {
  iNGRESS("INGRESS"),
  eGRESS("EGRESS"),
  bIDIRECTIONAL("BIDIRECTIONAL");

  const PortMirroringDirectionEnum(this.value);
  final String value;

  static PortMirroringDirectionEnum fromValue(String value) {
    for (final item in PortMirroringDirectionEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PortMirroringDirectionEnum value: $value');
  }
}

