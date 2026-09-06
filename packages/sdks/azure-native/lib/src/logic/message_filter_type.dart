import 'package:pulumi/pulumi.dart' as pulumi;

/// The message filter type.
enum MessageFilterType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueInclude("Include"),
  valueExclude("Exclude");

  const MessageFilterType(this.wireValue);
  @override
  final String wireValue;

  static MessageFilterType fromValue(String value) {
    for (final item in MessageFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageFilterType value: $value');
  }
}
