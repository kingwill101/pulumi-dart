import 'package:pulumi/pulumi.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';

/// Use this data source to get information about an EBS volume for use in other
/// resources.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getVolume:getVolume',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}
