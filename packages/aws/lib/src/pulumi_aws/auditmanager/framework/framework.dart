import 'package:pulumi/pulumi.dart';
import '../framework_control_set/framework_control_set.dart';
import 'framework_args.dart';

/// Resource for managing an AWS Audit Manager Framework.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Framework using the framework `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/framework:Framework example abc123-de45
/// ```
class Framework extends CustomResource {
  /// Amazon Resource Name (ARN) of the framework.
  /// * `control_sets[*].id` - Unique identifier for the framework control set.
  late final Output<String> arn;

  /// Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  late final Output<String?> complianceType;

  /// Configuration block(s) for the control sets that are associated with the framework. See `control_sets` Block below for details.
  ///
  /// The following arguments are optional:
  late final Output<List<FrameworkControlSet>?> controlSets;

  /// Description of the framework.
  late final Output<String?> description;

  /// Framework type, such as a custom framework or a standard framework.
  late final Output<String> frameworkType;

  /// Name of the framework.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the framework. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Framework(
    String name, {
    FrameworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/framework:Framework',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.complianceType = registerOutput<String?>('complianceType');
    this.controlSets =
        registerOutput<List<FrameworkControlSet>?>('controlSets');
    this.description = registerOutput<String?>('description');
    this.frameworkType = registerOutput<String>('frameworkType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
