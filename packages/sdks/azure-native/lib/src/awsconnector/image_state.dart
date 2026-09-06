import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ImageState implements pulumi.PulumiEnum<String> {
  available("available"),
  deregistered("deregistered"),
  disabled("disabled"),
  error("error"),
  failed("failed"),
  invalid("invalid"),
  pending("pending"),
  transient("transient");

  const ImageState(this.wireValue);
  @override
  final String wireValue;

  static ImageState fromValue(String value) {
    for (final item in ImageState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageState value: $value');
  }
}
