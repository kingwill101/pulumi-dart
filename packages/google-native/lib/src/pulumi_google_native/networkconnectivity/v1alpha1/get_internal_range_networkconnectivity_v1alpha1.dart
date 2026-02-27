import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_internal_range_networkconnectivity_v1alpha1_args.dart';
import 'get_internal_range_networkconnectivity_v1alpha1_result.dart';

/// Gets details of a single internal range.
Future<GetInternalRangeNetworkconnectivityV1alpha1Result>
    getInternalRangeNetworkconnectivityV1alpha1(
  GetInternalRangeNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getInternalRange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternalRangeNetworkconnectivityV1alpha1Result.fromMap(result);
}
