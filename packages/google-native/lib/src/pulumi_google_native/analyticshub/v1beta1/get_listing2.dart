import 'package:pulumi/pulumi.dart' hide Config;
import 'get_listing_args2.dart';
import 'get_listing_result2.dart';

/// Gets the details of a listing.
Future<GetListingResult2> getListing2(
  GetListingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getListing',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetListingResult2.fromMap(result);
}
