import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listing_analyticshub_v1beta1_args.dart';
import 'get_listing_analyticshub_v1beta1_result.dart';

/// Gets the details of a listing.
Future<GetListingAnalyticshubV1beta1Result> getListingAnalyticshubV1beta1(
  GetListingAnalyticshubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getListing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListingAnalyticshubV1beta1Result.fromMap(result);
}
