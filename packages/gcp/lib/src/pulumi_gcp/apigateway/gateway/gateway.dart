import 'package:pulumi/pulumi.dart';
import 'gateway_args.dart';

/// A consumable API that can be used by multiple Gateways.
///
/// To get more information about Gateway, see:
///
/// * [API documentation](https://cloud.google.com/api-gateway/docs/reference/rest/v1beta/projects.locations.apis)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/api-gateway/docs/quickstart)
///
/// ## Example Usage
///
/// ## Import
///
/// Gateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/gateways/{{gateway_id}}`
///
/// * `{{project}}/{{region}}/{{gateway_id}}`
///
/// * `{{region}}/{{gateway_id}}`
///
/// * `{{gateway_id}}`
///
/// When using the `pulumi import` command, Gateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigateway/gateway:Gateway default projects/{{project}}/locations/{{region}}/gateways/{{gateway_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigateway/gateway:Gateway default {{project}}/{{region}}/{{gateway_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigateway/gateway:Gateway default {{region}}/{{gateway_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigateway/gateway:Gateway default {{gateway_id}}
/// ```
class Gateway extends CustomResource {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// When changing api configs please ensure the new config is a new resource and the
  /// lifecycle rule <span pulumi-lang-nodejs="`createBeforeDestroy`" pulumi-lang-dotnet="`CreateBeforeDestroy`" pulumi-lang-go="`createBeforeDestroy`" pulumi-lang-python="`create_before_destroy`" pulumi-lang-yaml="`createBeforeDestroy`" pulumi-lang-java="`createBeforeDestroy`">`create_before_destroy`</span> is set.
  late final Output<String> apiConfig;

  /// The default API Gateway host name of the form {gatewayId}-{hash}.{region_code}.gateway.dev.
  late final Output<String> defaultHostname;

  /// A user-visible name for the API.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  late final Output<String> gatewayId;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource name of the Gateway. Format: projects/{project}/locations/{region}/gateways/{gateway}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the gateway for the API.
  late final Output<String> region;

  Gateway(
    String name, {
    GatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/gateway:Gateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiConfig = Output.createUnknown<String>();
    this.defaultHostname = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.gatewayId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.region = Output.createUnknown<String>();
  }
}
