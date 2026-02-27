import 'package:pulumi/pulumi.dart';
import 'get_image_args4.dart';
import 'get_image_result4.dart';

/// Use this data source to get information about a Workspaces image.
Future<GetImageResult4> getImage4(
  GetImageArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getImage:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult4.fromMap(result);
}
