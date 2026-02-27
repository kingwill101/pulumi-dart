import 'package:pulumi/pulumi.dart';
import 'get_components_args.dart';
import 'get_components_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Components matching the specified criteria.
Future<GetComponentsResult> getComponents(
  GetComponentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getComponents:getComponents',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetComponentsResult.fromMap(result);
}
