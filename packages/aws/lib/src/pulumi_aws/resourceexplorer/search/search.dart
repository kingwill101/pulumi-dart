import 'package:pulumi/pulumi.dart';
import 'search_args.dart';
import 'search_result.dart';

/// Data source for managing an AWS Resource Explorer Search.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<SearchResult> search(
  SearchArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourceexplorer/search:Search',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return SearchResult.fromMap(result);
}
