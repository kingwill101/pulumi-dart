import 'package:pulumi/pulumi.dart';
import 'get_rules_packages_args.dart';
import 'get_rules_packages_result.dart';

/// The Amazon Inspector Classic Rules Packages data source allows access to the list of AWS
/// Inspector Rules Packages which can be used by Amazon Inspector Classic within the region
/// configured in the provider.
Future<GetRulesPackagesResult> getRulesPackages(
  GetRulesPackagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:inspector/getRulesPackages:getRulesPackages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRulesPackagesResult.fromMap(result);
}
