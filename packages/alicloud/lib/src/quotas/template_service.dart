import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_service_args.dart';

/// ## Import
///
/// Quotas Template Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:quotas/templateService:TemplateService example
/// ```
class TemplateService extends pulumi.CustomResource {
  /// Status of the quota template. Valid values:
  /// - `-1`: disabled.
  late final pulumi.Output<int> serviceStatus;

  /// Creates a new [TemplateService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateService]. {@macro pulumi_quotas_template_service_template_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateService(
    String name, {
    TemplateServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/templateService:TemplateService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.serviceStatus = registerOutput<int>('serviceStatus');
  }
}
