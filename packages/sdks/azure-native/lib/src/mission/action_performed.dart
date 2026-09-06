import 'package:pulumi/pulumi.dart' as pulumi;

/// Action Performed by approver
enum ActionPerformed implements pulumi.PulumiEnum<String> {
  approved("Approved"),
  rejected("Rejected");

  const ActionPerformed(this.wireValue);
  @override
  final String wireValue;

  static ActionPerformed fromValue(String value) {
    for (final item in ActionPerformed.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionPerformed value: $value');
  }
}
