import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_args.dart';
import 'search_result.dart';

/// Data source for managing an AWS Resource Explorer Search.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<SearchResult> search(
  SearchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourceexplorer/search:Search',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return SearchResult.fromMap(result);
}
