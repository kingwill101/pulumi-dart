/// [Required] OneLake artifact type
enum OneLakeArtifactType {
  valueLakeHouse("LakeHouse");

  const OneLakeArtifactType(this.wireValue);
  final String wireValue;

  static OneLakeArtifactType fromValue(String value) {
    for (final item in OneLakeArtifactType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OneLakeArtifactType value: $value');
  }
}
