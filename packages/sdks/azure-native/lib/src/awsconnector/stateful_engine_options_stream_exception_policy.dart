import 'package:pulumi/pulumi.dart' as pulumi;

/// Property streamExceptionPolicy
enum StatefulEngineOptionsStreamExceptionPolicy implements pulumi.PulumiEnum<String> {
  cONTINUE("CONTINUE"),
  dROP("DROP"),
  rEJECT("REJECT");

  const StatefulEngineOptionsStreamExceptionPolicy(this.wireValue);
  @override
  final String wireValue;

  static StatefulEngineOptionsStreamExceptionPolicy fromValue(String value) {
    for (final item in StatefulEngineOptionsStreamExceptionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulEngineOptionsStreamExceptionPolicy value: $value');
  }
}
