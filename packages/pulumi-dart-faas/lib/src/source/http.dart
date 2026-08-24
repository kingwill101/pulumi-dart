import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP endpoint settings for a function.
class DartFunctionHttpArgs {
  final bool enabled;
  final pulumi.Input<String>? authorizationType;

  const DartFunctionHttpArgs({this.enabled = true, this.authorizationType});
}
