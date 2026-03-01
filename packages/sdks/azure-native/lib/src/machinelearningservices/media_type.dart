/// [Required] Media type of the job.
enum MediaType {
  valueImage("Image"),
  valueText("Text");

  const MediaType(this.value);
  final String value;

  static MediaType fromValue(String value) {
    for (final item in MediaType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MediaType value: $value');
  }
}

