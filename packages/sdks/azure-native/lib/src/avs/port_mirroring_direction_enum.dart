/// Direction of port mirroring profile.
enum PortMirroringDirectionEnum {
  iNGRESS("INGRESS"),
  eGRESS("EGRESS"),
  bIDIRECTIONAL("BIDIRECTIONAL");

  const PortMirroringDirectionEnum(this.wireValue);
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
