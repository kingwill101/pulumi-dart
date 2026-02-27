import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_synonym_set_args.dart';
import 'get_synonym_set_result.dart';

/// Gets a SynonymSet for a particular context. Throws a NOT_FOUND exception if the Synonymset does not exist
Future<GetSynonymSetResult> getSynonymSet(
  GetSynonymSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getSynonymSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSynonymSetResult.fromMap(result);
}
