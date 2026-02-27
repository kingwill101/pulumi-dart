import 'package:pulumi/pulumi.dart';
import 'get_event_categories_args.dart';
import 'get_event_categories_result.dart';

/// ## Example Usage
///
/// List the event categories of all the RDS resources.
///
///
///
/// List the event categories specific to the RDS resource `db-snapshot`.
Future<GetEventCategoriesResult> getEventCategories(
  GetEventCategoriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEventCategories:getEventCategories',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEventCategoriesResult.fromMap(result);
}
