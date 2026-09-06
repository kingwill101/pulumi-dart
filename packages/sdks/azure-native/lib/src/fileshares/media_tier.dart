import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage media tier of the file share.
enum MediaTier implements pulumi.PulumiEnum<String> {
  sSD("SSD");

  const MediaTier(this.wireValue);
  @override
  final String wireValue;

  static MediaTier fromValue(String value) {
    for (final item in MediaTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MediaTier value: $value');
  }
}
