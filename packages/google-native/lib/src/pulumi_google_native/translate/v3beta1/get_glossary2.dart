import 'package:pulumi/pulumi.dart';
import 'get_glossary_args2.dart';
import 'get_glossary_result2.dart';

/// Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.
Future<GetGlossaryResult2> getGlossary2(
  GetGlossaryArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3beta1:getGlossary',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlossaryResult2.fromMap(result);
}
