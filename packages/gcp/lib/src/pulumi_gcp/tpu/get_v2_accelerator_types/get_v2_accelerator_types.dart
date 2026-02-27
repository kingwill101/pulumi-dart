import 'package:pulumi/pulumi.dart';
import 'get_v2_accelerator_types_args.dart';
import 'get_v2_accelerator_types_result.dart';

/// Get accelerator types available for a project. For more information see the [official documentation](https://cloud.google.com/tpu/docs/) and [API](https://cloud.google.com/tpu/docs/reference/rest/v2/projects.locations.acceleratorTypes).
///
/// ## Example Usage
///
///
///
///
/// ### Configure Basic TPU VM With Available Type
Future<GetV2AcceleratorTypesResult> getV2AcceleratorTypes(
  GetV2AcceleratorTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tpu/getV2AcceleratorTypes:getV2AcceleratorTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetV2AcceleratorTypesResult.fromMap(result);
}
