import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listing_args.dart';
import 'get_listing_result.dart';

/// Gets the details of a listing.
Future<GetListingResult> getListing(
  GetListingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getListing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListingResult.fromMap(result);
}
