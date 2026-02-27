import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEventCategories:getEventCategories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventCategoriesResult.fromMap(result);
}
