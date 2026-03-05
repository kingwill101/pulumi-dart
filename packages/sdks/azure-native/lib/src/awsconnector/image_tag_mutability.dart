/// The tag mutability setting for the repository. If this parameter is omitted, the default setting of ``MUTABLE`` will be used which will allow image tags to be overwritten. If ``IMMUTABLE`` is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.
enum ImageTagMutability {
  iMMUTABLE("IMMUTABLE"),
  mUTABLE("MUTABLE");

  const ImageTagMutability(this.wireValue);
  final String wireValue;

  static ImageTagMutability fromValue(String value) {
    for (final item in ImageTagMutability.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageTagMutability value: $value');
  }
}

