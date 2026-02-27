import 'package:pulumi/pulumi.dart';
import '../application_portal_options/application_portal_options.dart';
import 'application_args10.dart';

/// Resource for managing an AWS SSO Admin Application.
///
/// > The `CreateApplication` API only supports custom OAuth 2.0 applications.
/// Creation of 3rd party SAML or OAuth 2.0 applications require setup to be done through the associated app service or AWS console.
/// See this issue for additional context.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Portal Options
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SSO application.
///
///
/// Using `pulumi import`, import SSO Admin Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/application:Application example arn:aws:sso::123456789012:application/id-12345678
/// ```
class Application10 extends CustomResource {
  /// AWS account ID.
  late final Output<String> applicationAccount;

  /// (**Deprecated** Reference `arn` instead) ARN of the application.
  late final Output<String> applicationArn;

  /// ARN of the application provider.
  late final Output<String> applicationProviderArn;

  /// ARN of the application.
  late final Output<String> arn;

  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  late final Output<String?> clientToken;

  /// Description of the application.
  late final Output<String?> description;

  /// ARN of the instance of IAM Identity Center.
  late final Output<String> instanceArn;

  /// Name of the application.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Options for the portal associated with an application. See `portal_options` below.
  late final Output<ApplicationPortalOptions?> portalOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the application. Valid values are `ENABLED` and `DISABLED`.
  late final Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Application10(
    String name, {
    ApplicationArgs10? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationAccount = registerOutput<String>('applicationAccount');
    this.applicationArn = registerOutput<String>('applicationArn');
    this.applicationProviderArn =
        registerOutput<String>('applicationProviderArn');
    this.arn = registerOutput<String>('arn');
    this.clientToken = registerOutput<String?>('clientToken');
    this.description = registerOutput<String?>('description');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    this.portalOptions =
        registerOutput<ApplicationPortalOptions?>('portalOptions');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
