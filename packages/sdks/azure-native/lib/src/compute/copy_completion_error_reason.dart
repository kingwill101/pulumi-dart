import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
enum CopyCompletionErrorReason implements pulumi.PulumiEnum<String> {
  copySourceNotFound("CopySourceNotFound");

  const CopyCompletionErrorReason(this.wireValue);
  @override
  final String wireValue;

  static CopyCompletionErrorReason fromValue(String value) {
    for (final item in CopyCompletionErrorReason.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CopyCompletionErrorReason value: $value');
  }
}
