import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_components_args.dart';
import 'get_components_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Components matching the specified criteria.
Future<GetComponentsResult> getComponents(
  GetComponentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getComponents:getComponents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentsResult.fromMap(result);
}
