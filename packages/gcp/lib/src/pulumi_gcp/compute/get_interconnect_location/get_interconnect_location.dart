import 'package:pulumi/pulumi.dart';
import 'get_interconnect_location_args.dart';
import 'get_interconnect_location_result.dart';

/// Get the details of a single interconnect location. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/get) documentation.
Future<GetInterconnectLocationResult> getInterconnectLocation(
  GetInterconnectLocationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInterconnectLocation:getInterconnectLocation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectLocationResult.fromMap(result);
}
