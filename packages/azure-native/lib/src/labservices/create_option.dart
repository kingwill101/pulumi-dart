/// Indicates what lab virtual machines are created from.
enum CreateOption {
  valueImage("Image"),
  valueTemplateVM("TemplateVM");

  const CreateOption(this.value);
  final String value;

  static CreateOption fromValue(String value) {
    for (final item in CreateOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateOption value: $value');
  }
}

