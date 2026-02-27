import 'package:pulumi/pulumi.dart';
import 'extension_association_args.dart';

/// Associates an AppConfig Extension with a Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Extension Associations using their extension association ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/extensionAssociation:ExtensionAssociation example 71rxuzt
/// ```
class ExtensionAssociation extends CustomResource {
  /// ARN of the AppConfig Extension Association.
  late final Output<String> arn;

  /// The ARN of the extension defined in the association.
  late final Output<String> extensionArn;

  /// The version number for the extension defined in the association.
  late final Output<int> extensionVersion;

  /// The parameter names and values defined for the association.
  late final Output<Map<String, String>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the application, configuration profile, or environment to associate with the extension.
  late final Output<String> resourceArn;

  ExtensionAssociation(
    String name, {
    ExtensionAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/extensionAssociation:ExtensionAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.extensionArn = registerOutput<String>('extensionArn');
    this.extensionVersion = registerOutput<int>('extensionVersion');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
