import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_configuration_version_args.dart';

/// Provides an AppConfig Hosted Configuration Version resource.
///
/// ## Example Usage
///
/// ### Freeform
///
///
///
/// ### Feature Flags
///
///
///
/// ### Multi-variant Feature Flags
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Hosted Configuration Versions using the application ID, configuration profile ID, and version number separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/hostedConfigurationVersion:HostedConfigurationVersion example 71abcde/11xxxxx/2
/// ```
class HostedConfigurationVersion extends pulumi.CustomResource {
  /// Application ID.
  late final pulumi.Output<String> applicationId;

  /// ARN of the AppConfig  hosted configuration version.
  late final pulumi.Output<String> arn;

  /// Configuration profile ID.
  late final pulumi.Output<String> configurationProfileId;

  /// Content of the configuration or the configuration data.
  late final pulumi.Output<String> content;

  /// Standard MIME type describing the format of the configuration content. For more information, see [Content-Type](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  late final pulumi.Output<String> contentType;

  /// Description of the configuration.
  late final pulumi.Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Version number of the hosted configuration.
  late final pulumi.Output<int> versionNumber;

  HostedConfigurationVersion(
    String name, {
    HostedConfigurationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/hostedConfigurationVersion:HostedConfigurationVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.configurationProfileId =
        registerOutput<String>('configurationProfileId');
    this.content = registerOutput<String>('content');
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
