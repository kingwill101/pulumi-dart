import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_object_signed_url_args.dart';
import 'get_object_signed_url_result.dart';

/// The Google Cloud storage signed URL data source generates a signed URL for a given storage object. Signed URLs provide a way to give time-limited read or write access to anyone in possession of the URL, regardless of whether they have a Google account.
///
/// For more info about signed URL's is available [here](https://cloud.google.com/storage/docs/access-control/signed-urls).
///
/// ## Example Usage
///
///
///
/// ## Full Example
Future<GetObjectSignedUrlResult> getObjectSignedUrl(
  GetObjectSignedUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getObjectSignedUrl:getObjectSignedUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectSignedUrlResult.fromMap(result);
}
