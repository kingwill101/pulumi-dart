import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_glossary_translate_v3beta1_args.dart';
import 'get_glossary_translate_v3beta1_result.dart';

/// Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.
Future<GetGlossaryTranslateV3beta1Result> getGlossaryTranslateV3beta1(
  GetGlossaryTranslateV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3beta1:getGlossary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlossaryTranslateV3beta1Result.fromMap(result);
}
