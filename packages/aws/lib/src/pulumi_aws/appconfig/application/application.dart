import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';

/// Provides an AppConfig Application resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Applications using their application ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/application:Application example 71rxuzt
/// ```
class Application extends pulumi.CustomResource {
  /// ARN of the AppConfig Application.
  late final pulumi.Output<String> arn;

  /// Description of the application. Can be at most 1024 characters.
  late final pulumi.Output<String?> description;

  /// Name for the application. Must be between 1 and 64 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
