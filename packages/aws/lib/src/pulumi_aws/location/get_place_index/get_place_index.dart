import 'package:pulumi/pulumi.dart';
import 'get_place_index_args.dart';
import 'get_place_index_result.dart';

/// Retrieve information about a Location Service Place Index.
Future<GetPlaceIndexResult> getPlaceIndex(
  GetPlaceIndexArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getPlaceIndex:getPlaceIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPlaceIndexResult.fromMap(result);
}
