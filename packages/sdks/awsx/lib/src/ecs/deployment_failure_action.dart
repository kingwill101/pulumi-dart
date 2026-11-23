import 'package:pulumi/pulumi.dart' as pulumi;

enum DeploymentFailureAction implements pulumi.PulumiEnum<String> {
  rOLLBACK("ROLLBACK"),
  sTOP("STOP");

  const DeploymentFailureAction(this.wireValue);
  @override
  final String wireValue;

  static DeploymentFailureAction fromValue(String value) {
    for (final item in DeploymentFailureAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentFailureAction value: $value');
  }
}
