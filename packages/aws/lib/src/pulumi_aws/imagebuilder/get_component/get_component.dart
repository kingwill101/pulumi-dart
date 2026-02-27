import 'package:pulumi/pulumi.dart';
import 'get_component_args.dart';
import 'get_component_result.dart';

/// Provides details about an Image Builder Component.
Future<GetComponentResult> getComponent(
  GetComponentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getComponent:getComponent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetComponentResult.fromMap(result);
}
