import 'package:pulumi/pulumi.dart';
import '../web_app_endpoint_details/web_app_endpoint_details.dart';
import '../web_app_identity_provider_details/web_app_identity_provider_details.dart';
import '../web_app_web_app_unit/web_app_web_app_unit.dart';
import 'web_app_args.dart';

/// Resource for managing an AWS Transfer Family Web App.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Family Web App using the `web_app_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/webApp:WebApp example web_app-id-12345678
/// ```
class WebApp extends CustomResource {
  /// URL provided to interact with the Transfer Family web app. If `endpoint_details.vpc` block is specified, `access_endpoint` must not be provided.
  late final Output<String> accessEndpoint;

  /// ARN of the Web App.
  late final Output<String> arn;

  /// Block for the endpoint configuration for the web app. If not specified, the web app will be created with a public endpoint.
  late final Output<WebAppEndpointDetails?> endpointDetails;

  /// Block for details of the identity provider to use with the web app. See Identity provider details below.
  ///
  /// The following arguments are optional:
  late final Output<WebAppIdentityProviderDetails> identityProviderDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value pairs that can be used to group and search for web apps.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Type of endpoint policy for the web app. Valid values are: `STANDARD`(default) or `FIPS`.
  late final Output<String> webAppEndpointPolicy;

  /// ID of the Wep App resource.
  late final Output<String> webAppId;

  /// Block for number of concurrent connections or the user sessions on the web app.
  /// * provisioned - (Optional) Number of units of concurrent connections.
  late final Output<List<WebAppWebAppUnit>> webAppUnits;

  WebApp(
    String name, {
    WebAppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/webApp:WebApp',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessEndpoint = registerOutput<String>('accessEndpoint');
    this.arn = registerOutput<String>('arn');
    this.endpointDetails =
        registerOutput<WebAppEndpointDetails?>('endpointDetails');
    this.identityProviderDetails =
        registerOutput<WebAppIdentityProviderDetails>(
            'identityProviderDetails');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.webAppEndpointPolicy = registerOutput<String>('webAppEndpointPolicy');
    this.webAppId = registerOutput<String>('webAppId');
    this.webAppUnits = registerOutput<List<WebAppWebAppUnit>>('webAppUnits');
  }
}
