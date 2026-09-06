import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of rule
enum ApprovalMode implements pulumi.PulumiEnum<String> {
  singleStage("SingleStage"),
  serial("Serial"),
  parallel("Parallel"),
  noApproval("NoApproval");

  const ApprovalMode(this.wireValue);
  @override
  final String wireValue;

  static ApprovalMode fromValue(String value) {
    for (final item in ApprovalMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApprovalMode value: $value');
  }
}
