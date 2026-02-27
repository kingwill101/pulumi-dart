import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_glossary_args.dart';
import 'get_glossary_result.dart';

/// Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.
Future<GetGlossaryResult> getGlossary(
  GetGlossaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getGlossary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlossaryResult.fromMap(result);
}
