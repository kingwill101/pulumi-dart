import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_outpost_instance_type_args.dart';
import 'get_outpost_instance_type_result.dart';

/// Information about single Outpost Instance Type.
Future<GetOutpostInstanceTypeResult> getOutpostInstanceType(
  GetOutpostInstanceTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceType:getOutpostInstanceType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostInstanceTypeResult.fromMap(result);
}
