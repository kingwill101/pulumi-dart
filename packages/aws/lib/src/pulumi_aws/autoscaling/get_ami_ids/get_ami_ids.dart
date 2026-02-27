import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_args.dart';
import 'get_ami_ids_result.dart';

/// The Autoscaling Groups data source allows access to the list of AWS
/// ASGs within a specific region. This will allow you to pass a list of AutoScaling Groups to other resources.
Future<GetAmiIdsResult> getAmiIds(
  GetAmiIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:autoscaling/getAmiIds:getAmiIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAmiIdsResult.fromMap(result);
}
