import 'package:pulumi/pulumi.dart' as pulumi;

/// Approval required for deploying service catalog templates (Required or NotRequired).
enum ApprovalPolicy implements pulumi.PulumiEnum<String> {
  required("Required"),
  notRequired("NotRequired");

  const ApprovalPolicy(this.wireValue);
  @override
  final String wireValue;

  static ApprovalPolicy fromValue(String value) {
    for (final item in ApprovalPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApprovalPolicy value: $value');
  }
}
