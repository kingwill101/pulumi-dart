import 'package:pulumi/pulumi.dart';
import 'get_ami_args.dart';
import 'get_ami_result.dart';

/// Use this data source to get the ID of a registered AMI for use in other
/// resources.
Future<GetAmiResult> getAmi(
  GetAmiArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getAmi:getAmi',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAmiResult.fromMap(result);
}
