import 'package:pulumi/pulumi.dart';
import 'get_group_args3.dart';
import 'get_group_result3.dart';

/// Use this data source to get an Identity Store Group.
Future<GetGroupResult3> getGroup3(
  GetGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroup:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult3.fromMap(result);
}
