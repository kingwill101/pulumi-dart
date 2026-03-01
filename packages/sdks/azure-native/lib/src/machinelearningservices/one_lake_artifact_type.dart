/// [Required] OneLake artifact type
enum OneLakeArtifactType {
  valueLakeHouse("LakeHouse");

  const OneLakeArtifactType(this.value);
  final String value;

  static OneLakeArtifactType fromValue(String value) {
    for (final item in OneLakeArtifactType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OneLakeArtifactType value: $value');
  }
}

