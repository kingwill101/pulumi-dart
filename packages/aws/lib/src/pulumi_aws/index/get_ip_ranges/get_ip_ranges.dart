import 'package:pulumi/pulumi.dart';
import 'get_ip_ranges_args.dart';
import 'get_ip_ranges_result.dart';

/// Use this data source to get the IP ranges of various AWS products and services. For more information about the contents of this data source and required JSON syntax if referencing a custom URL, see the [AWS IP Address Ranges documentation](https://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html).
Future<GetIpRangesResult> getIpRanges(
  GetIpRangesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getIpRanges:getIpRanges',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIpRangesResult.fromMap(result);
}
