import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_service_args.dart';
import 'template_service_state.dart';

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
    serviceStatus = registerOutput<int>('serviceStatus');
  }

  /// Gets an existing [TemplateService] resource's state with the given [name] and [id].
  static TemplateService get(
    String name,
    pulumi.Input<String> id, {
    TemplateServiceState? state,
  }) {
    return TemplateService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TemplateService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/templateService:TemplateService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    serviceStatus = registerOutput<int>('serviceStatus');
  }
}
