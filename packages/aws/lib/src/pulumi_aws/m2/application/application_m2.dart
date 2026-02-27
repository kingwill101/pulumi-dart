import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_definition/application_definition.dart';
import '../application_timeouts/application_timeouts.dart';
import 'application_m2_args.dart';

/// Resource for managing an [AWS Mainframe Modernization Application](https://docs.aws.amazon.com/m2/latest/userguide/applications-m2.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Mainframe Modernization Application using the `01234567890abcdef012345678`. For example:
///
/// ```sh
/// $ pulumi import aws:m2/application:Application example 01234567890abcdef012345678
/// ```
class ApplicationM2 extends pulumi.CustomResource {
  /// Id of the Application.
  late final pulumi.Output<String> applicationId;

  /// ARN of the Application.
  late final pulumi.Output<String> arn;

  /// Current version of the application deployed.
  late final pulumi.Output<int> currentVersion;

  /// The application definition for this application. You can specify either inline JSON or an S3 bucket location.
  late final pulumi.Output<ApplicationDefinition> definition;

  /// Description of the application.
  late final pulumi.Output<String?> description;

  /// Engine type must be `microfocus | bluage`.
  late final pulumi.Output<String> engineType;

  /// KMS Key to use for the Application.
  late final pulumi.Output<String?> kmsKeyId;

  /// Unique identifier of the application.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of role for application to use to access AWS resources.
  late final pulumi.Output<String?> roleArn;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ApplicationTimeouts?> timeouts;

  ApplicationM2(
    String name, {
    ApplicationM2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:m2/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.currentVersion = registerOutput<int>('currentVersion');
    this.definition = registerOutput<ApplicationDefinition>('definition');
    this.description = registerOutput<String?>('description');
    this.engineType = registerOutput<String>('engineType');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ApplicationTimeouts?>('timeouts');
  }
}
