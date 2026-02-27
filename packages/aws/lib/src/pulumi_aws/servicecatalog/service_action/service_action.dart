import 'package:pulumi/pulumi.dart';
import '../service_action_definition/service_action_definition.dart';
import 'service_action_args.dart';

/// Manages a Service Catalog self-service action.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.ServiceAction` using the service action ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/serviceAction:ServiceAction example act-f1w12eperfslh
/// ```
class ServiceAction extends CustomResource {
  /// Language code. Valid values are `en` (English), `jp` (Japanese), and `zh` (Chinese). Default is `en`.
  late final Output<String?> acceptLanguage;

  /// Self-service action definition configuration block. Detailed below.
  late final Output<ServiceActionDefinition> definition;

  /// Self-service action description.
  late final Output<String> description;

  /// Self-service action name.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ServiceAction(
    String name, {
    ServiceActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/serviceAction:ServiceAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.definition = registerOutput<ServiceActionDefinition>('definition');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
