import 'package:pulumi/pulumi.dart';
import 'get_theme_args.dart';
import 'get_theme_result.dart';

/// Data source for managing an AWS QuickSight Theme.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetThemeResult> getTheme(
  GetThemeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getTheme:getTheme',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetThemeResult.fromMap(result);
}
