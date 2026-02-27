import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_layer_version_args.dart';
import 'get_layer_version_result.dart';

/// Provides details about an AWS Lambda Layer Version. Use this data source to retrieve information about a specific layer version or find the latest version compatible with your runtime and architecture requirements.
///
/// ## Example Usage
///
/// ### Get Latest Layer Version
///
///
///
/// ### Get Specific Layer Version
///
///
///
/// ### Get Latest Compatible Layer Version
///
///
///
/// ### Compare Layer Versions
Future<GetLayerVersionResult> getLayerVersion(
  GetLayerVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getLayerVersion:getLayerVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLayerVersionResult.fromMap(result);
}
