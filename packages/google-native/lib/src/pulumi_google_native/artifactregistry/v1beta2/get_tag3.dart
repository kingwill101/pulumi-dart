import 'package:pulumi/pulumi.dart';
import 'get_tag_args3.dart';
import 'get_tag_result3.dart';

/// Gets a tag.
Future<GetTagResult3> getTag3(
  GetTagArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getTag',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagResult3.fromMap(result);
}
