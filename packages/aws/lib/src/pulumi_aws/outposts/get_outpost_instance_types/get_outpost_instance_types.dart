import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_outpost_instance_types_args.dart';
import 'get_outpost_instance_types_result.dart';

/// Information about Outposts Instance Types.
Future<GetOutpostInstanceTypesResult> getOutpostInstanceTypes(
  GetOutpostInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceTypes:getOutpostInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostInstanceTypesResult.fromMap(result);
}
