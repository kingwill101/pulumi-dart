import 'package:pulumi/pulumi.dart';
import 'get_ai_index_args.dart';
import 'get_ai_index_result.dart';

/// A representation of a collection of database items organized in a way that allows for approximate nearest neighbor (a.k.a ANN) algorithms search.
Future<GetAiIndexResult> getAiIndex(
  GetAiIndexArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiIndex:getAiIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiIndexResult.fromMap(result);
}
