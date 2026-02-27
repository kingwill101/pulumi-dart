import 'package:pulumi/pulumi.dart' as pulumi;
import 'appregistry_application_args.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Application.
///
/// > An AWS Service Catalog AppRegistry Application is displayed in the AWS Console under "MyApplications".
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Connecting Resources
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Service Catalog AppRegistry Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryApplication:AppregistryApplication example application-id-12345678
/// ```
class AppregistryApplication extends pulumi.CustomResource {
  /// A map with a single tag key-value pair used to associate resources with the application. This attribute can be passed directly into the `tags` argument of another resource, or merged into a map of existing tags.
  late final pulumi.Output<Map<String, String>> applicationTag;

  /// ARN (Amazon Resource Name) of the application.
  late final pulumi.Output<String> arn;

  /// Description of the application.
  late final pulumi.Output<String?> description;

  /// Name of the application. The name must be unique within an AWS region.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  AppregistryApplication(
    String name, {
    AppregistryApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/appregistryApplication:AppregistryApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationTag = registerOutput<Map<String, String>>('applicationTag');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
