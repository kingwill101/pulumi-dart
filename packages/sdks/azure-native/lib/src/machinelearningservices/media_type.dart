/// [Required] Media type of the job.
enum MediaType {
  valueImage("Image"),
  valueText("Text");

  const MediaType(this.wireValue);
  final String wireValue;

  static MediaType fromValue(String value) {
    for (final item in MediaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MediaType value: $value');
  }
}
