import 'package:pulumi/pulumi.dart' as pulumi;
import '../fulfillment_feature/fulfillment_feature.dart';
import '../fulfillment_generic_web_service/fulfillment_generic_web_service.dart';
import 'fulfillment_args.dart';

/// By default, your agent responds to a matched intent with a static response. If you're using one of the integration options, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday.
///
///
/// To get more information about Fulfillment, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent/getFulfillment)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/es/docs/fulfillment-overview)
///
/// ## Example Usage
///
/// ### Dialogflow Fulfillment Basic
///
///
///
///
/// ## Import
///
/// Fulfillment can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Fulfillment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/fulfillment:Fulfillment default {{name}}
/// ```
class Fulfillment extends pulumi.CustomResource {
  /// The human-readable name of the fulfillment, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// Whether fulfillment is enabled.
  late final pulumi.Output<bool?> enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  /// Structure is documented below.
  late final pulumi.Output<List<FulfillmentFeature>?> features;

  /// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// Structure is documented below.
  late final pulumi.Output<FulfillmentGenericWebService?> genericWebService;

  /// The unique identifier of the fulfillment.
  /// Format: projects/<Project ID>/agent/fulfillment - projects/<Project ID>/locations/<Location ID>/agent/fulfillment
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  Fulfillment(
    String name, {
    FulfillmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/fulfillment:Fulfillment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.features = registerOutput<List<FulfillmentFeature>?>('features');
    this.genericWebService =
        registerOutput<FulfillmentGenericWebService?>('genericWebService');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
