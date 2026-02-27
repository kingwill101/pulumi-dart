import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_option_args.dart';

/// Manages a Service Catalog Tag Option.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.TagOption` using the tag option ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/tagOption:TagOption example tag-pjtvagohlyo3m
/// ```
class TagOption extends pulumi.CustomResource {
  /// Whether tag option is active. Default is `true`.
  late final pulumi.Output<bool?> active;

  /// Tag option key.
  late final pulumi.Output<String> key;
  late final pulumi.Output<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Tag option value.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> value;

  TagOption(
    String name, {
    TagOptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/tagOption:TagOption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool?>('active');
    this.key = registerOutput<String>('key');
    this.owner = registerOutput<String>('owner');
    this.region = registerOutput<String>('region');
    this.value = registerOutput<String>('value');
  }
}
