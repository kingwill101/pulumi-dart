import 'package:pulumi/pulumi.dart';
import '../application_url_dispatch_rules_dispatch_rule/application_url_dispatch_rules_dispatch_rule.dart';
import 'application_url_dispatch_rules_args.dart';

/// Rules to match an HTTP request and dispatch that request to a service.
///
///
/// To get more information about ApplicationUrlDispatchRules, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps#UrlDispatchRule)
///
/// ## Example Usage
///
/// ### App Engine Application Url Dispatch Rules Basic
///
///
///
///
/// ## Import
///
/// ApplicationUrlDispatchRules can be imported using any of these accepted formats:
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ApplicationUrlDispatchRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/applicationUrlDispatchRules:ApplicationUrlDispatchRules default {{project}}
/// ```
class ApplicationUrlDispatchRules extends CustomResource {
  /// Rules to match an HTTP request and dispatch that request to a service.
  /// Structure is documented below.
  late final Output<List<ApplicationUrlDispatchRulesDispatchRule>>
      dispatchRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  ApplicationUrlDispatchRules(
    String name, {
    ApplicationUrlDispatchRulesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/applicationUrlDispatchRules:ApplicationUrlDispatchRules',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dispatchRules =
        registerOutput<List<ApplicationUrlDispatchRulesDispatchRule>>(
            'dispatchRules');
    this.project = registerOutput<String>('project');
  }
}
