import 'package:pulumi/pulumi.dart';
import 'get_outpost_instance_types_args.dart';
import 'get_outpost_instance_types_result.dart';

/// Information about Outposts Instance Types.
Future<GetOutpostInstanceTypesResult> getOutpostInstanceTypes(
  GetOutpostInstanceTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceTypes:getOutpostInstanceTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOutpostInstanceTypesResult.fromMap(result);
}
